; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_danube.c_init_atm_tc.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_danube.c_init_atm_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DREG_AT_CTRL = common dso_local global i32 0, align 4
@DREG_AR_CTRL = common dso_local global i32 0, align 4
@DREG_AT_IDLE0 = common dso_local global i32 0, align 4
@DREG_AT_IDLE1 = common dso_local global i32 0, align 4
@DREG_AR_IDLE0 = common dso_local global i32 0, align 4
@DREG_AR_IDLE1 = common dso_local global i32 0, align 4
@RFBI_CFG = common dso_local global i32 0, align 4
@SFSM_DBA0 = common dso_local global i32 0, align 4
@SFSM_DBA1 = common dso_local global i32 0, align 4
@SFSM_CBA0 = common dso_local global i32 0, align 4
@SFSM_CBA1 = common dso_local global i32 0, align 4
@SFSM_CFG0 = common dso_local global i32 0, align 4
@SFSM_CFG1 = common dso_local global i32 0, align 4
@FFSM_DBA0 = common dso_local global i32 0, align 4
@FFSM_DBA1 = common dso_local global i32 0, align 4
@FFSM_CFG0 = common dso_local global i32 0, align 4
@FFSM_CFG1 = common dso_local global i32 0, align 4
@FFSM_IDLE_HEAD_BC0 = common dso_local global i32 0, align 4
@FFSM_IDLE_HEAD_BC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_atm_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_atm_tc() #0 {
  %1 = load i32, i32* @DREG_AT_CTRL, align 4
  %2 = call i32 @IFX_REG_W32(i32 3840, i32 %1)
  %3 = load i32, i32* @DREG_AR_CTRL, align 4
  %4 = call i32 @IFX_REG_W32(i32 15360, i32 %3)
  %5 = load i32, i32* @DREG_AT_IDLE0, align 4
  %6 = call i32 @IFX_REG_W32(i32 0, i32 %5)
  %7 = load i32, i32* @DREG_AT_IDLE1, align 4
  %8 = call i32 @IFX_REG_W32(i32 0, i32 %7)
  %9 = load i32, i32* @DREG_AR_IDLE0, align 4
  %10 = call i32 @IFX_REG_W32(i32 0, i32 %9)
  %11 = load i32, i32* @DREG_AR_IDLE1, align 4
  %12 = call i32 @IFX_REG_W32(i32 0, i32 %11)
  %13 = load i32, i32* @RFBI_CFG, align 4
  %14 = call i32 @IFX_REG_W32(i32 0, i32 %13)
  %15 = load i32, i32* @SFSM_DBA0, align 4
  %16 = call i32 @IFX_REG_W32(i32 5632, i32 %15)
  %17 = load i32, i32* @SFSM_DBA1, align 4
  %18 = call i32 @IFX_REG_W32(i32 5921, i32 %17)
  %19 = load i32, i32* @SFSM_CBA0, align 4
  %20 = call i32 @IFX_REG_W32(i32 6210, i32 %19)
  %21 = load i32, i32* @SFSM_CBA1, align 4
  %22 = call i32 @IFX_REG_W32(i32 6227, i32 %21)
  %23 = load i32, i32* @SFSM_CFG0, align 4
  %24 = call i32 @IFX_REG_W32(i32 81937, i32 %23)
  %25 = load i32, i32* @SFSM_CFG1, align 4
  %26 = call i32 @IFX_REG_W32(i32 81937, i32 %25)
  %27 = load i32, i32* @FFSM_DBA0, align 4
  %28 = call i32 @IFX_REG_W32(i32 6244, i32 %27)
  %29 = load i32, i32* @FFSM_DBA1, align 4
  %30 = call i32 @IFX_REG_W32(i32 6448, i32 %29)
  %31 = load i32, i32* @FFSM_CFG0, align 4
  %32 = call i32 @IFX_REG_W32(i32 196620, i32 %31)
  %33 = load i32, i32* @FFSM_CFG1, align 4
  %34 = call i32 @IFX_REG_W32(i32 196620, i32 %33)
  %35 = load i32, i32* @FFSM_IDLE_HEAD_BC0, align 4
  %36 = call i32 @IFX_REG_W32(i32 -254738432, i32 %35)
  %37 = load i32, i32* @FFSM_IDLE_HEAD_BC1, align 4
  %38 = call i32 @IFX_REG_W32(i32 -254738432, i32 %37)
  ret void
}

declare dso_local i32 @IFX_REG_W32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
