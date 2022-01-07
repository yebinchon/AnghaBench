; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_8xx-pmu.c_mpc8xx_pmu_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_8xx-pmu.c_mpc8xx_pmu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@insn_ctr_ref = common dso_local global i32 0, align 4
@SPRN_ICTRL = common dso_local global i32 0, align 4
@itlb_miss_ref = common dso_local global i32 0, align 4
@patch__itlbmiss_perf = common dso_local global i32 0, align 4
@patch__itlbmiss_exit_1 = common dso_local global i32 0, align 4
@patch__itlbmiss_exit_2 = common dso_local global i32 0, align 4
@itlb_miss_counter = common dso_local global i32 0, align 4
@dtlb_miss_ref = common dso_local global i32 0, align 4
@patch__dtlbmiss_perf = common dso_local global i32 0, align 4
@patch__dtlbmiss_exit_1 = common dso_local global i32 0, align 4
@patch__dtlbmiss_exit_2 = common dso_local global i32 0, align 4
@patch__dtlbmiss_exit_3 = common dso_local global i32 0, align 4
@dtlb_miss_counter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @mpc8xx_pmu_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc8xx_pmu_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = call i32 @event_type(%struct.perf_event* %10)
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %58

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %52 [
    i32 131, label %18
    i32 129, label %20
    i32 128, label %28
    i32 130, label %39
  ]

18:                                               ; preds = %16
  %19 = call i32 (...) @get_tb()
  store i32 %19, i32* %7, align 4
  br label %52

20:                                               ; preds = %16
  %21 = call i32 @atomic_inc_return(i32* @insn_ctr_ref)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @SPRN_ICTRL, align 4
  %25 = call i32 @mtspr(i32 %24, i32 -1073217529)
  br label %26

26:                                               ; preds = %23, %20
  %27 = call i32 (...) @get_insn_ctr()
  store i32 %27, i32* %7, align 4
  br label %52

28:                                               ; preds = %16
  %29 = call i32 @atomic_inc_return(i32* @itlb_miss_ref)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = call i64 @patch_site_addr(i32* @patch__itlbmiss_perf)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @patch_branch_site(i32* @patch__itlbmiss_exit_1, i64 %33, i32 0)
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @patch_branch_site(i32* @patch__itlbmiss_exit_2, i64 %35, i32 0)
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32, i32* @itlb_miss_counter, align 4
  store i32 %38, i32* %7, align 4
  br label %52

39:                                               ; preds = %16
  %40 = call i32 @atomic_inc_return(i32* @dtlb_miss_ref)
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = call i64 @patch_site_addr(i32* @patch__dtlbmiss_perf)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @patch_branch_site(i32* @patch__dtlbmiss_exit_1, i64 %44, i32 0)
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @patch_branch_site(i32* @patch__dtlbmiss_exit_2, i64 %46, i32 0)
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @patch_branch_site(i32* @patch__dtlbmiss_exit_3, i64 %48, i32 0)
  br label %50

50:                                               ; preds = %42, %39
  %51 = load i32, i32* @dtlb_miss_counter, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %16, %50, %37, %26, %18
  %53 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %54 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @local64_set(i32* %55, i32 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @event_type(%struct.perf_event*) #1

declare dso_local i32 @get_tb(...) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @get_insn_ctr(...) #1

declare dso_local i64 @patch_site_addr(i32*) #1

declare dso_local i32 @patch_branch_site(i32*, i64, i32) #1

declare dso_local i32 @local64_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
