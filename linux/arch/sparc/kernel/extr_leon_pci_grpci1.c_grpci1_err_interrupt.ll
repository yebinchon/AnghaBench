; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_pci_grpci1.c_grpci1_err_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_pci_grpci1.c_grpci1_err_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grpci1_priv = type { i32, i32 }

@TGT = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@PCI_STATUS_PARITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Data Parity Error\0A\00", align 1
@PCI_STATUS_SIG_TARGET_ABORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Signalled Target Abort\0A\00", align 1
@PCI_STATUS_REC_TARGET_ABORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Received Target Abort\0A\00", align 1
@PCI_STATUS_REC_MASTER_ABORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Received Master Abort\0A\00", align 1
@PCI_STATUS_SIG_SYSTEM_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Signalled System Error\0A\00", align 1
@PCI_STATUS_DETECTED_PARITY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"Parity Error\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @grpci1_err_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grpci1_err_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.grpci1_priv*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.grpci1_priv*
  store %struct.grpci1_priv* %9, %struct.grpci1_priv** %6, align 8
  %10 = load %struct.grpci1_priv*, %struct.grpci1_priv** %6, align 8
  %11 = load i32, i32* @TGT, align 4
  %12 = load i32, i32* @PCI_STATUS, align 4
  %13 = call i32 @grpci1_cfg_r16(%struct.grpci1_priv* %10, i32 %11, i32 0, i32 %12, i32* %7)
  %14 = load %struct.grpci1_priv*, %struct.grpci1_priv** %6, align 8
  %15 = getelementptr inbounds %struct.grpci1_priv, %struct.grpci1_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %90

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @PCI_STATUS_PARITY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.grpci1_priv*, %struct.grpci1_priv** %6, align 8
  %30 = getelementptr inbounds %struct.grpci1_priv, %struct.grpci1_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @PCI_STATUS_SIG_TARGET_ABORT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.grpci1_priv*, %struct.grpci1_priv** %6, align 8
  %40 = getelementptr inbounds %struct.grpci1_priv, %struct.grpci1_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @PCI_STATUS_REC_TARGET_ABORT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.grpci1_priv*, %struct.grpci1_priv** %6, align 8
  %50 = getelementptr inbounds %struct.grpci1_priv, %struct.grpci1_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PCI_STATUS_REC_MASTER_ABORT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.grpci1_priv*, %struct.grpci1_priv** %6, align 8
  %60 = getelementptr inbounds %struct.grpci1_priv, %struct.grpci1_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %53
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @PCI_STATUS_SIG_SYSTEM_ERROR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.grpci1_priv*, %struct.grpci1_priv** %6, align 8
  %70 = getelementptr inbounds %struct.grpci1_priv, %struct.grpci1_priv* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @PCI_STATUS_DETECTED_PARITY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.grpci1_priv*, %struct.grpci1_priv** %6, align 8
  %80 = getelementptr inbounds %struct.grpci1_priv, %struct.grpci1_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %73
  %84 = load %struct.grpci1_priv*, %struct.grpci1_priv** %6, align 8
  %85 = load i32, i32* @TGT, align 4
  %86 = load i32, i32* @PCI_STATUS, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @grpci1_cfg_w16(%struct.grpci1_priv* %84, i32 %85, i32 0, i32 %86, i32 %87)
  %89 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %83, %21
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @grpci1_cfg_r16(%struct.grpci1_priv*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @grpci1_cfg_w16(%struct.grpci1_priv*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
