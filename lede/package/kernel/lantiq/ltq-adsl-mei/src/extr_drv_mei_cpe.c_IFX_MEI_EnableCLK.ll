; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_EnableCLK.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_EnableCLK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEI_MASTER_MODE = common dso_local global i32 0, align 4
@ME_DBG_DECODE_DMP1_MASK = common dso_local global i32 0, align 4
@CRI_CCR0 = common dso_local global i32 0, align 4
@ACL_CLK_MODE_ENABLE = common dso_local global i32 0, align 4
@JTAG_MASTER_MODE = common dso_local global i32 0, align 4
@DSL_DEV_MEI_ERR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @IFX_MEI_EnableCLK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IFX_MEI_EnableCLK(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @MEI_MASTER_MODE, align 4
  %6 = call i32 @IFX_MEI_ControlModeSet(i32* %4, i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @ME_DBG_DECODE_DMP1_MASK, align 4
  %9 = load i32, i32* @CRI_CCR0, align 4
  %10 = call i32 @_IFX_MEI_DBGLongWordRead(i32* %7, i32 %8, i32 %9, i32* %3)
  %11 = load i32, i32* @ACL_CLK_MODE_ENABLE, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @ME_DBG_DECODE_DMP1_MASK, align 4
  %16 = load i32, i32* @CRI_CCR0, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @_IFX_MEI_DBGLongWordWrite(i32* %14, i32 %15, i32 %16, i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @JTAG_MASTER_MODE, align 4
  %21 = call i32 @IFX_MEI_ControlModeSet(i32* %19, i32 %20)
  %22 = load i32, i32* @DSL_DEV_MEI_ERR_SUCCESS, align 4
  ret i32 %22
}

declare dso_local i32 @IFX_MEI_ControlModeSet(i32*, i32) #1

declare dso_local i32 @_IFX_MEI_DBGLongWordRead(i32*, i32, i32, i32*) #1

declare dso_local i32 @_IFX_MEI_DBGLongWordWrite(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
