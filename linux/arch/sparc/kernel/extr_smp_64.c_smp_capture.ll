; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_smp_capture.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_smp_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@smp_capture_depth = common dso_local global i32 0, align 4
@penguins_are_doing_time = common dso_local global i32 0, align 4
@smp_capture_registry = common dso_local global i32 0, align 4
@xcall_capture = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_capture() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @atomic_add_return(i32 1, i32* @smp_capture_depth)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %17

6:                                                ; preds = %0
  %7 = call i32 (...) @num_online_cpus()
  store i32 %7, i32* %2, align 4
  store i32 1, i32* @penguins_are_doing_time, align 4
  %8 = call i32 @atomic_inc(i32* @smp_capture_registry)
  %9 = call i32 @smp_cross_call(i32* @xcall_capture, i32 0, i32 0, i32 0)
  br label %10

10:                                               ; preds = %14, %6
  %11 = call i32 @atomic_read(i32* @smp_capture_registry)
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 (...) @rmb()
  br label %10

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %0
  ret void
}

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @smp_cross_call(i32*, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
