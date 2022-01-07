; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/plat-eznps/extr_mtm.c_mtm_enable_core.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/plat-eznps/extr_mtm.c_mtm_enable_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nps_host_reg_aux_mt_ctrl = type { i32, i32, i64, i32 }
%struct.nps_host_reg_mtm_cfg = type { i32, i32 }
%struct.nps_host_reg_aux_dpc = type { i32, i32, i64 }

@CTOP_AUX_DPC = common dso_local global i32 0, align 4
@NPS_NUM_HW_THREADS = common dso_local global i32 0, align 4
@mtm_hs_ctr = common dso_local global i32 0, align 4
@CTOP_AUX_MT_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtm_enable_core(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nps_host_reg_aux_mt_ctrl, align 8
  %5 = alloca %struct.nps_host_reg_mtm_cfg, align 4
  %6 = alloca %struct.nps_host_reg_aux_dpc, align 8
  store i32 %0, i32* %2, align 4
  %7 = getelementptr inbounds %struct.nps_host_reg_aux_dpc, %struct.nps_host_reg_aux_dpc* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = getelementptr inbounds %struct.nps_host_reg_aux_dpc, %struct.nps_host_reg_aux_dpc* %6, i32 0, i32 1
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* @CTOP_AUX_DPC, align 4
  %10 = getelementptr inbounds %struct.nps_host_reg_aux_dpc, %struct.nps_host_reg_aux_dpc* %6, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @write_aux_reg(i32 %9, i64 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @NPS_CPU_TO_THREAD_NUM(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %53

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @mtm_init_nat(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @MTM_CFG(i32 %20)
  %22 = call i32 @ioread32be(i32 %21)
  %23 = getelementptr inbounds %struct.nps_host_reg_mtm_cfg, %struct.nps_host_reg_mtm_cfg* %5, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.nps_host_reg_mtm_cfg, %struct.nps_host_reg_mtm_cfg* %5, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.nps_host_reg_mtm_cfg, %struct.nps_host_reg_mtm_cfg* %5, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @MTM_CFG(i32 %27)
  %29 = call i32 @iowrite32be(i32 %26, i32 %28)
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %39, %17
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @NPS_NUM_HW_THREADS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %3, align 4
  %37 = add i32 %35, %36
  %38 = call i32 @mtm_init_thread(i32 %37)
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %30

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.nps_host_reg_aux_mt_ctrl, %struct.nps_host_reg_aux_mt_ctrl* %4, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.nps_host_reg_aux_mt_ctrl, %struct.nps_host_reg_aux_mt_ctrl* %4, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i32, i32* @mtm_hs_ctr, align 4
  %46 = getelementptr inbounds %struct.nps_host_reg_aux_mt_ctrl, %struct.nps_host_reg_aux_mt_ctrl* %4, i32 0, i32 3
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.nps_host_reg_aux_mt_ctrl, %struct.nps_host_reg_aux_mt_ctrl* %4, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* @CTOP_AUX_MT_CTRL, align 4
  %49 = getelementptr inbounds %struct.nps_host_reg_aux_mt_ctrl, %struct.nps_host_reg_aux_mt_ctrl* %4, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @write_aux_reg(i32 %48, i64 %50)
  %52 = call i32 (...) @cpu_relax()
  br label %53

53:                                               ; preds = %42, %16
  ret void
}

declare dso_local i32 @write_aux_reg(i32, i64) #1

declare dso_local i64 @NPS_CPU_TO_THREAD_NUM(i32) #1

declare dso_local i32 @mtm_init_nat(i32) #1

declare dso_local i32 @ioread32be(i32) #1

declare dso_local i32 @MTM_CFG(i32) #1

declare dso_local i32 @iowrite32be(i32, i32) #1

declare dso_local i32 @mtm_init_thread(i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
