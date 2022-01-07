; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_trace.c_trace_s390_diagnose_norecursion.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_trace.c_trace_s390_diagnose_norecursion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_LOCKDEP = common dso_local global i32 0, align 4
@diagnose_trace_depth = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_s390_diagnose_norecursion(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @CONFIG_LOCKDEP, align 4
  %6 = call i64 @IS_ENABLED(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %28

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = call i32* @this_cpu_ptr(i32* @diagnose_trace_depth)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @trace_s390_diagnose(i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = add i32 %23, -1
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %16, %9
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @local_irq_restore(i64 %26)
  br label %28

28:                                               ; preds = %25, %8
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32* @this_cpu_ptr(i32*) #1

declare dso_local i32 @trace_s390_diagnose(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
