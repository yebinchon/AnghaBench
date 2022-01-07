; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_imx-rngc.c_imx_rngc_self_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_imx-rngc.c_imx_rngc_self_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_rngc = type { i64, i32, i64 }

@RNGC_COMMAND = common dso_local global i64 0, align 8
@RNGC_CMD_SELF_TEST = common dso_local global i32 0, align 4
@RNGC_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_rngc*)* @imx_rngc_self_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_rngc_self_test(%struct.imx_rngc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx_rngc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.imx_rngc* %0, %struct.imx_rngc** %3, align 8
  %6 = load %struct.imx_rngc*, %struct.imx_rngc** %3, align 8
  %7 = call i32 @imx_rngc_irq_unmask(%struct.imx_rngc* %6)
  %8 = load %struct.imx_rngc*, %struct.imx_rngc** %3, align 8
  %9 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RNGC_COMMAND, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @RNGC_CMD_SELF_TEST, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.imx_rngc*, %struct.imx_rngc** %3, align 8
  %18 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RNGC_COMMAND, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load %struct.imx_rngc*, %struct.imx_rngc** %3, align 8
  %24 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %23, i32 0, i32 1
  %25 = load i32, i32* @RNGC_TIMEOUT, align 4
  %26 = call i32 @wait_for_completion_timeout(i32* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load %struct.imx_rngc*, %struct.imx_rngc** %3, align 8
  %31 = call i32 @imx_rngc_irq_mask_clear(%struct.imx_rngc* %30)
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %43

34:                                               ; preds = %1
  %35 = load %struct.imx_rngc*, %struct.imx_rngc** %3, align 8
  %36 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %39, %29
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @imx_rngc_irq_unmask(%struct.imx_rngc*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @imx_rngc_irq_mask_clear(%struct.imx_rngc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
