; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/plat-eznps/extr_mtm.c_mtm_init_nat.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/plat-eznps/extr_mtm.c_mtm_init_nat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nps_host_reg_mtm_cfg = type { i32, i32 }
%struct.nps_host_reg_aux_udmc = type { i32, i32 }

@NPS_NUM_HW_THREADS = common dso_local global i32 0, align 4
@cpu_possible_mask = common dso_local global i32 0, align 4
@CTOP_AUX_UDMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mtm_init_nat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtm_init_nat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nps_host_reg_mtm_cfg, align 4
  %4 = alloca %struct.nps_host_reg_aux_udmc, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %8, align 4
  br label %10

10:                                               ; preds = %23, %1
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @NPS_NUM_HW_THREADS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @cpu_possible_mask, align 4
  %17 = call i32 @cpumask_bits(i32 %16)
  %18 = call i64 @test_bit(i32 %15, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ilog2(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @CTOP_AUX_UDMC, align 4
  %32 = call i32 @read_aux_reg(i32 %31)
  %33 = getelementptr inbounds %struct.nps_host_reg_aux_udmc, %struct.nps_host_reg_aux_udmc* %4, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = getelementptr inbounds %struct.nps_host_reg_aux_udmc, %struct.nps_host_reg_aux_udmc* %4, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @CTOP_AUX_UDMC, align 4
  %37 = getelementptr inbounds %struct.nps_host_reg_aux_udmc, %struct.nps_host_reg_aux_udmc* %4, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @write_aux_reg(i32 %36, i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @MTM_CFG(i32 %40)
  %42 = call i32 @ioread32be(i32 %41)
  %43 = getelementptr inbounds %struct.nps_host_reg_mtm_cfg, %struct.nps_host_reg_mtm_cfg* %3, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds %struct.nps_host_reg_mtm_cfg, %struct.nps_host_reg_mtm_cfg* %3, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.nps_host_reg_mtm_cfg, %struct.nps_host_reg_mtm_cfg* %3, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @MTM_CFG(i32 %48)
  %50 = call i32 @iowrite32be(i32 %47, i32 %49)
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @cpumask_bits(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @read_aux_reg(i32) #1

declare dso_local i32 @write_aux_reg(i32, i32) #1

declare dso_local i32 @ioread32be(i32) #1

declare dso_local i32 @MTM_CFG(i32) #1

declare dso_local i32 @iowrite32be(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
