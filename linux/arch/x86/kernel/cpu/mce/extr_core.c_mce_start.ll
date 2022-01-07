; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@mca_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@global_nwo = common dso_local global i32 0, align 4
@mce_callin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Timeout: Not all CPUs entered broadcast exception handler\00", align 1
@SPINUNIT = common dso_local global i32 0, align 4
@mce_executing = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Timeout: Subject CPUs unable to finish machine check processing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mce_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mce_start(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = call i32 (...) @num_online_cpus()
  store i32 %7, i32* %5, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 8
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @NSEC_PER_USEC, align 4
  %11 = mul nsw i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %56

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @atomic_add(i32 %17, i32* @global_nwo)
  %19 = call i32 @atomic_inc_return(i32* @mce_callin)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %29, %15
  %21 = call i32 @atomic_read(i32* @mce_callin)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = call i64 @mce_timed_out(i32* %6, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @atomic_set(i32* @global_nwo, i32 0)
  store i32 -1, i32* %2, align 4
  br label %56

29:                                               ; preds = %24
  %30 = load i32, i32* @SPINUNIT, align 4
  %31 = call i32 @ndelay(i32 %30)
  br label %20

32:                                               ; preds = %20
  %33 = call i32 (...) @smp_rmb()
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @atomic_set(i32* @mce_executing, i32 1)
  br label %52

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %48, %38
  %40 = call i32 @atomic_read(i32* @mce_executing)
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = call i64 @mce_timed_out(i32* %6, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @atomic_set(i32* @global_nwo, i32 0)
  store i32 -1, i32* %2, align 4
  br label %56

48:                                               ; preds = %43
  %49 = load i32, i32* @SPINUNIT, align 4
  %50 = call i32 @ndelay(i32 %49)
  br label %39

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %36
  %53 = call i32 @atomic_read(i32* @global_nwo)
  %54 = load i32*, i32** %3, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %46, %27, %14
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @mce_timed_out(i32*, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @smp_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
