; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm3xxx.c_omap3_prm_vp_check_txdone.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm3xxx.c_omap3_prm_vp_check_txdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap3_vp = type { i32 }

@omap3_vp = common dso_local global %struct.omap3_vp* null, align 8
@OCP_MOD = common dso_local global i32 0, align 4
@OMAP3_PRM_IRQSTATUS_MPU_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @omap3_prm_vp_check_txdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3_prm_vp_check_txdone(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.omap3_vp*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load %struct.omap3_vp*, %struct.omap3_vp** @omap3_vp, align 8
  %6 = load i64, i64* %2, align 8
  %7 = getelementptr inbounds %struct.omap3_vp, %struct.omap3_vp* %5, i64 %6
  store %struct.omap3_vp* %7, %struct.omap3_vp** %3, align 8
  %8 = load i32, i32* @OCP_MOD, align 4
  %9 = load i32, i32* @OMAP3_PRM_IRQSTATUS_MPU_OFFSET, align 4
  %10 = call i32 @omap2_prm_read_mod_reg(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.omap3_vp*, %struct.omap3_vp** %3, align 8
  %13 = getelementptr inbounds %struct.omap3_vp, %struct.omap3_vp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %11, %14
  ret i32 %15
}

declare dso_local i32 @omap2_prm_read_mod_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
