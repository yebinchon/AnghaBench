; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pata_macio_reset_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pata_macio_reset_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i32, i32, i32)* }
%struct.pata_macio_priv = type { i64, i64, %struct.TYPE_6__*, i32, i32, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Enabling & resetting... \0A\00", align 1
@controller_ohare = common dso_local global i64 0, align 8
@ppc_md = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PMAC_FTR_IDE_ENABLE = common dso_local global i32 0, align 4
@PMAC_FTR_IDE_RESET = common dso_local global i32 0, align 4
@IDE_WAKEUP_DELAY_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to enable device after resume (%d)\0A\00", align 1
@KAUAI_FCR_UATA_MAGIC = common dso_local global i32 0, align 4
@KAUAI_FCR_UATA_RESET_N = common dso_local global i32 0, align 4
@KAUAI_FCR_UATA_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pata_macio_priv*, i32)* @pata_macio_reset_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pata_macio_reset_hw(%struct.pata_macio_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.pata_macio_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pata_macio_priv* %0, %struct.pata_macio_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %8 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dev_dbg(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %12 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %114

16:                                               ; preds = %2
  %17 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %18 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @controller_ohare, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ppc_md, i32 0, i32 0), align 8
  %27 = load i32, i32* @PMAC_FTR_IDE_ENABLE, align 4
  %28 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %29 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %26(i32 %27, i32 %30, i32 0, i32 1)
  br label %67

32:                                               ; preds = %22, %16
  %33 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ppc_md, i32 0, i32 0), align 8
  %34 = load i32, i32* @PMAC_FTR_IDE_RESET, align 4
  %35 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %36 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %39 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %33(i32 %34, i32 %37, i32 %40, i32 1)
  store i32 %41, i32* %5, align 4
  %42 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ppc_md, i32 0, i32 0), align 8
  %43 = load i32, i32* @PMAC_FTR_IDE_ENABLE, align 4
  %44 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %45 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %48 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %42(i32 %43, i32 %46, i32 %49, i32 1)
  %51 = call i32 @msleep(i32 10)
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %32
  %55 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ppc_md, i32 0, i32 0), align 8
  %56 = load i32, i32* @PMAC_FTR_IDE_RESET, align 4
  %57 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %58 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %61 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %55(i32 %56, i32 %59, i32 %62, i32 0)
  %64 = load i32, i32* @IDE_WAKEUP_DELAY_MS, align 4
  %65 = call i32 @msleep(i32 %64)
  br label %66

66:                                               ; preds = %54, %32
  br label %67

67:                                               ; preds = %66, %25
  %68 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %69 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = icmp ne %struct.TYPE_6__* %70, null
  br i1 %71, label %72, label %99

72:                                               ; preds = %67
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %72
  %76 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %77 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %76, i32 0, i32 2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = call i32 @pci_restore_state(%struct.TYPE_6__* %78)
  %80 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %81 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = call i32 @pcim_enable_device(%struct.TYPE_6__* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %75
  %87 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %88 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %98

93:                                               ; preds = %75
  %94 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %95 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %94, i32 0, i32 2
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = call i32 @pci_set_master(%struct.TYPE_6__* %96)
  br label %98

98:                                               ; preds = %93, %86
  br label %99

99:                                               ; preds = %98, %72, %67
  %100 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %101 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load i32, i32* @KAUAI_FCR_UATA_MAGIC, align 4
  %106 = load i32, i32* @KAUAI_FCR_UATA_RESET_N, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @KAUAI_FCR_UATA_ENABLE, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %111 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @writel(i32 %109, i64 %112)
  br label %114

114:                                              ; preds = %15, %104, %99
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pci_restore_state(%struct.TYPE_6__*) #1

declare dso_local i32 @pcim_enable_device(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pci_set_master(%struct.TYPE_6__*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
