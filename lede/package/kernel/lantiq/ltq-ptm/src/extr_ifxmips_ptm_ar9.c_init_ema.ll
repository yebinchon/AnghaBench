; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_ar9.c_init_ema.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_ar9.c_init_ema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SB_MST_PRI0 = common dso_local global i32 0, align 4
@SB_MST_PRI1 = common dso_local global i32 0, align 4
@EMA_CMD_BUF_LEN = common dso_local global i32 0, align 4
@EMA_CMD_BASE_ADDR = common dso_local global i32 0, align 4
@EMA_CMDCFG = common dso_local global i32 0, align 4
@EMA_DATA_BUF_LEN = common dso_local global i32 0, align 4
@EMA_DATA_BASE_ADDR = common dso_local global i32 0, align 4
@EMA_DATACFG = common dso_local global i32 0, align 4
@EMA_IER = common dso_local global i32 0, align 4
@EMA_READ_BURST = common dso_local global i32 0, align 4
@EMA_WRITE_BURST = common dso_local global i32 0, align 4
@EMA_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_ema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ema() #0 {
  %1 = load i32, i32* @SB_MST_PRI0, align 4
  %2 = call i32 @IFX_REG_W32(i32 1, i32 %1)
  %3 = load i32, i32* @SB_MST_PRI1, align 4
  %4 = call i32 @IFX_REG_W32(i32 1, i32 %3)
  %5 = load i32, i32* @EMA_CMD_BUF_LEN, align 4
  %6 = shl i32 %5, 16
  %7 = load i32, i32* @EMA_CMD_BASE_ADDR, align 4
  %8 = ashr i32 %7, 2
  %9 = or i32 %6, %8
  %10 = load i32, i32* @EMA_CMDCFG, align 4
  %11 = call i32 @IFX_REG_W32(i32 %9, i32 %10)
  %12 = load i32, i32* @EMA_DATA_BUF_LEN, align 4
  %13 = shl i32 %12, 16
  %14 = load i32, i32* @EMA_DATA_BASE_ADDR, align 4
  %15 = ashr i32 %14, 2
  %16 = or i32 %13, %15
  %17 = load i32, i32* @EMA_DATACFG, align 4
  %18 = call i32 @IFX_REG_W32(i32 %16, i32 %17)
  %19 = load i32, i32* @EMA_IER, align 4
  %20 = call i32 @IFX_REG_W32(i32 255, i32 %19)
  %21 = load i32, i32* @EMA_READ_BURST, align 4
  %22 = load i32, i32* @EMA_WRITE_BURST, align 4
  %23 = shl i32 %22, 2
  %24 = or i32 %21, %23
  %25 = load i32, i32* @EMA_CFG, align 4
  %26 = call i32 @IFX_REG_W32(i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @IFX_REG_W32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
