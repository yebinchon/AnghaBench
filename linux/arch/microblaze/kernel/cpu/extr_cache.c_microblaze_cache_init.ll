; ModuleID = '/home/carl/AnghaBench/linux/arch/microblaze/kernel/cpu/extr_cache.c_microblaze_cache_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/microblaze/kernel/cpu/extr_cache.c_microblaze_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.scache = type { i32 }

@cpuinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PVR2_USE_MSR_INSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"wb_msr\0A\00", align 1
@wb_msr = common dso_local global i32 0, align 4
@mbc = common dso_local global %struct.scache* null, align 8
@CPUVER_7_20_D = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"WB won't work properly\0A\00", align 1
@CPUVER_7_20_A = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"wt_msr_noirq\0A\00", align 1
@wt_msr_noirq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"wt_msr\0A\00", align 1
@wt_msr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"wb_nomsr\0A\00", align 1
@wb_nomsr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"wt_nomsr_noirq\0A\00", align 1
@wt_nomsr_noirq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"wt_nomsr\0A\00", align 1
@wt_nomsr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @microblaze_cache_init() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 8
  %2 = load i32, i32* @PVR2_USE_MSR_INSTR, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %0
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 2), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.scache* bitcast (i32* @wb_msr to %struct.scache*), %struct.scache** @mbc, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 1), align 8
  %11 = load i64, i64* @CPUVER_7_20_D, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %8
  br label %25

16:                                               ; preds = %5
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 1), align 8
  %18 = load i64, i64* @CPUVER_7_20_A, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store %struct.scache* bitcast (i32* @wt_msr_noirq to %struct.scache*), %struct.scache** @mbc, align 8
  br label %24

22:                                               ; preds = %16
  %23 = call i32 @pr_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store %struct.scache* bitcast (i32* @wt_msr to %struct.scache*), %struct.scache** @mbc, align 8
  br label %24

24:                                               ; preds = %22, %20
  br label %25

25:                                               ; preds = %24, %15
  br label %47

26:                                               ; preds = %0
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 2), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = call i32 @pr_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store %struct.scache* bitcast (i32* @wb_nomsr to %struct.scache*), %struct.scache** @mbc, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 1), align 8
  %32 = load i64, i64* @CPUVER_7_20_D, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  br label %46

37:                                               ; preds = %26
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 1), align 8
  %39 = load i64, i64* @CPUVER_7_20_A, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store %struct.scache* bitcast (i32* @wt_nomsr_noirq to %struct.scache*), %struct.scache** @mbc, align 8
  br label %45

43:                                               ; preds = %37
  %44 = call i32 @pr_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store %struct.scache* bitcast (i32* @wt_nomsr to %struct.scache*), %struct.scache** @mbc, align 8
  br label %45

45:                                               ; preds = %43, %41
  br label %46

46:                                               ; preds = %45, %36
  br label %47

47:                                               ; preds = %46, %25
  %48 = call i32 (...) @enable_dcache()
  %49 = call i32 (...) @invalidate_icache()
  %50 = call i32 (...) @enable_icache()
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @enable_dcache(...) #1

declare dso_local i32 @invalidate_icache(...) #1

declare dso_local i32 @enable_icache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
