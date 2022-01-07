; ModuleID = '/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_mci_device.c_AT91F_MCI_SendCommand.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_mci_device.c_AT91F_MCI_SendCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@AT91C_BASE_MCI = common dso_local global %struct.TYPE_2__* null, align 8
@AT91C_MCI_CMDRDY = common dso_local global i32 0, align 4
@AT91C_MCI_SR_ERROR = common dso_local global i32 0, align 4
@AT91C_SDCARD_APP_OP_COND_CMD = common dso_local global i32 0, align 4
@AT91C_MMC_SEND_OP_COND_CMD = common dso_local global i32 0, align 4
@AT91C_MCI_RCRCE = common dso_local global i32 0, align 4
@AT91C_CMD_SEND_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AT91F_MCI_SendCommand(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AT91C_BASE_MCI, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AT91C_BASE_MCI, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %20, %3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AT91C_BASE_MCI, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @AT91C_MCI_CMDRDY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %16, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AT91C_BASE_MCI, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AT91C_MCI_SR_ERROR, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @AT91C_SDCARD_APP_OP_COND_CMD, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @AT91C_MMC_SEND_OP_COND_CMD, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AT91C_BASE_MCI, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AT91C_MCI_SR_ERROR, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %4, align 4
  br label %62

48:                                               ; preds = %38, %34
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @AT91C_MCI_RCRCE, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AT91C_BASE_MCI, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AT91C_MCI_SR_ERROR, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %4, align 4
  br label %62

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59, %26
  %61 = load i32, i32* @AT91C_CMD_SEND_OK, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %52, %42
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
