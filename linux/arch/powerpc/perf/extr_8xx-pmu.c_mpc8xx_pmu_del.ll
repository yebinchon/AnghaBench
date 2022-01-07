; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_8xx-pmu.c_mpc8xx_pmu_del.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_8xx-pmu.c_mpc8xx_pmu_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }

@PPC_INST_MFSPR = common dso_local global i32 0, align 4
@R10 = common dso_local global i32 0, align 4
@SPRN_SPRG_SCRATCH0 = common dso_local global i32 0, align 4
@insn_ctr_ref = common dso_local global i32 0, align 4
@SPRN_ICTRL = common dso_local global i32 0, align 4
@itlb_miss_ref = common dso_local global i32 0, align 4
@patch__itlbmiss_exit_1 = common dso_local global i32 0, align 4
@patch__itlbmiss_exit_2 = common dso_local global i32 0, align 4
@dtlb_miss_ref = common dso_local global i32 0, align 4
@patch__dtlbmiss_exit_1 = common dso_local global i32 0, align 4
@patch__dtlbmiss_exit_2 = common dso_local global i32 0, align 4
@patch__dtlbmiss_exit_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @mpc8xx_pmu_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc8xx_pmu_del(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @PPC_INST_MFSPR, align 4
  %7 = load i32, i32* @R10, align 4
  %8 = call i32 @__PPC_RS(i32 %7)
  %9 = or i32 %6, %8
  %10 = load i32, i32* @SPRN_SPRG_SCRATCH0, align 4
  %11 = call i32 @__PPC_SPR(i32 %10)
  %12 = or i32 %9, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = call i32 @mpc8xx_pmu_read(%struct.perf_event* %13)
  %15 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %16 = call i32 @event_type(%struct.perf_event* %15)
  switch i32 %16, label %45 [
    i32 131, label %17
    i32 129, label %18
    i32 128, label %25
    i32 130, label %34
  ]

17:                                               ; preds = %2
  br label %45

18:                                               ; preds = %2
  %19 = call i32 @atomic_dec_return(i32* @insn_ctr_ref)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @SPRN_ICTRL, align 4
  %23 = call i32 @mtspr(i32 %22, i32 7)
  br label %24

24:                                               ; preds = %21, %18
  br label %45

25:                                               ; preds = %2
  %26 = call i32 @atomic_dec_return(i32* @itlb_miss_ref)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @patch_instruction_site(i32* @patch__itlbmiss_exit_1, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @patch_instruction_site(i32* @patch__itlbmiss_exit_2, i32 %31)
  br label %33

33:                                               ; preds = %28, %25
  br label %45

34:                                               ; preds = %2
  %35 = call i32 @atomic_dec_return(i32* @dtlb_miss_ref)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @patch_instruction_site(i32* @patch__dtlbmiss_exit_1, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @patch_instruction_site(i32* @patch__dtlbmiss_exit_2, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @patch_instruction_site(i32* @patch__dtlbmiss_exit_3, i32 %42)
  br label %44

44:                                               ; preds = %37, %34
  br label %45

45:                                               ; preds = %2, %44, %33, %24, %17
  ret void
}

declare dso_local i32 @__PPC_RS(i32) #1

declare dso_local i32 @__PPC_SPR(i32) #1

declare dso_local i32 @mpc8xx_pmu_read(%struct.perf_event*) #1

declare dso_local i32 @event_type(%struct.perf_event*) #1

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @patch_instruction_site(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
