; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_process.c_arch_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_process.c_arch_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_cpu_idle() #0 {
  %1 = alloca void (i32)*, align 8
  store void (i32)* @ia64_mark_idle, void (i32)** %1, align 8
  %2 = call i32 (...) @rmb()
  %3 = load void (i32)*, void (i32)** %1, align 8
  %4 = icmp ne void (i32)* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load void (i32)*, void (i32)** %1, align 8
  call void %6(i32 1)
  br label %7

7:                                                ; preds = %5, %0
  %8 = call i32 (...) @safe_halt()
  %9 = load void (i32)*, void (i32)** %1, align 8
  %10 = icmp ne void (i32)* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load void (i32)*, void (i32)** %1, align 8
  call void %12(i32 0)
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

declare dso_local void @ia64_mark_idle(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @safe_halt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
