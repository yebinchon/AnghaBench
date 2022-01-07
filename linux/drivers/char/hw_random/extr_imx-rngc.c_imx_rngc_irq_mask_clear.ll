; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_imx-rngc.c_imx_rngc_irq_mask_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_imx-rngc.c_imx_rngc_irq_mask_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_rngc = type { i64 }

@RNGC_CONTROL = common dso_local global i64 0, align 8
@RNGC_CTRL_MASK_DONE = common dso_local global i32 0, align 4
@RNGC_CTRL_MASK_ERROR = common dso_local global i32 0, align 4
@RNGC_COMMAND = common dso_local global i64 0, align 8
@RNGC_CMD_CLR_INT = common dso_local global i32 0, align 4
@RNGC_CMD_CLR_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_rngc*)* @imx_rngc_irq_mask_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_rngc_irq_mask_clear(%struct.imx_rngc* %0) #0 {
  %2 = alloca %struct.imx_rngc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.imx_rngc* %0, %struct.imx_rngc** %2, align 8
  %5 = load %struct.imx_rngc*, %struct.imx_rngc** %2, align 8
  %6 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RNGC_CONTROL, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @RNGC_CTRL_MASK_DONE, align 4
  %12 = load i32, i32* @RNGC_CTRL_MASK_ERROR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.imx_rngc*, %struct.imx_rngc** %2, align 8
  %18 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RNGC_CONTROL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load %struct.imx_rngc*, %struct.imx_rngc** %2, align 8
  %24 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RNGC_COMMAND, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @RNGC_CMD_CLR_INT, align 4
  %30 = load i32, i32* @RNGC_CMD_CLR_ERR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.imx_rngc*, %struct.imx_rngc** %2, align 8
  %36 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RNGC_COMMAND, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
