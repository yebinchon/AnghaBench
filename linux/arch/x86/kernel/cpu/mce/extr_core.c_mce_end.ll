; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_end.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@mca_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@mce_executing = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Timeout: Monarch CPU unable to finish machine check processing\00", align 1
@SPINUNIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Timeout: Monarch CPU did not finish machine check processing\00", align 1
@global_nwo = common dso_local global i32 0, align 4
@mce_callin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mce_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mce_end(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @NSEC_PER_USEC, align 4
  %10 = mul nsw i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %51

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %51

18:                                               ; preds = %14
  %19 = call i32 @atomic_inc(i32* @mce_executing)
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = call i32 (...) @num_online_cpus()
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %32, %22
  %25 = call i32 @atomic_read(i32* @mce_executing)
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = call i64 @mce_timed_out(i32* %5, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %51

32:                                               ; preds = %28
  %33 = load i32, i32* @SPINUNIT, align 4
  %34 = call i32 @ndelay(i32 %33)
  br label %24

35:                                               ; preds = %24
  %36 = call i32 (...) @mce_reign()
  %37 = call i32 (...) @barrier()
  store i32 0, i32* %4, align 4
  br label %50

38:                                               ; preds = %18
  br label %39

39:                                               ; preds = %46, %38
  %40 = call i32 @atomic_read(i32* @mce_executing)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = call i64 @mce_timed_out(i32* %5, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %51

46:                                               ; preds = %42
  %47 = load i32, i32* @SPINUNIT, align 4
  %48 = call i32 @ndelay(i32 %47)
  br label %39

49:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %57

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %45, %31, %17, %13
  %52 = call i32 @atomic_set(i32* @global_nwo, i32 0)
  %53 = call i32 @atomic_set(i32* @mce_callin, i32 0)
  %54 = call i32 (...) @barrier()
  %55 = call i32 @atomic_set(i32* @mce_executing, i32 0)
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %49
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @mce_timed_out(i32*, i8*) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @mce_reign(...) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
