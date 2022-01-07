; ModuleID = '/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_qc_prep.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_qc_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i64, %struct.TYPE_7__*, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.sata_oxnas_port_priv*, i32 }
%struct.sata_oxnas_port_priv = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"port %d not connected completing with error\0A\00", align 1
@AC_ERR_ATA_BUS = common dso_local global i32 0, align 4
@SGDMA_REQUESTPTR = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@SGDMA_REQCTL0IN = common dso_local global i32 0, align 4
@SGDMA_REQCTL0OUT = common dso_local global i32 0, align 4
@SGDMA_REQCTL1IN = common dso_local global i32 0, align 4
@SGDMA_REQCTL1OUT = common dso_local global i32 0, align 4
@SGDMA_REQQUAL = common dso_local global i32 0, align 4
@SGDMA_CONTROL_NOGO = common dso_local global i32 0, align 4
@SGDMA_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @sata_oxnas_qc_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sata_oxnas_qc_prep(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.sata_oxnas_port_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %5 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %5, i32 0, i32 1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %11 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = call i32 @sata_oxnas_check_link(%struct.TYPE_7__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %1
  %16 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ata_port_err(%struct.TYPE_7__* %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @AC_ERR_ATA_BUS, align 4
  %22 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %23 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %27 = call i32 @ata_qc_complete(%struct.ata_queued_cmd* %26)
  br label %28

28:                                               ; preds = %15, %1
  %29 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %30 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @sata_oxnas_reset_ucode(i32 %33, i32 0, i32 0)
  %35 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %36 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @ata_is_dma(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %28
  %42 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %43 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @ata_is_pio(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %131

48:                                               ; preds = %41, %28
  %49 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %50 = call i32 @ata_bmdma_qc_prep(%struct.ata_queued_cmd* %49)
  %51 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %52 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %54, align 8
  store %struct.sata_oxnas_port_priv* %55, %struct.sata_oxnas_port_priv** %3, align 8
  %56 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %3, align 8
  %57 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %3, align 8
  %60 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SGDMA_REQUESTPTR, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @iowrite32(i32 %58, i64 %63)
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %48
  %68 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %69 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @SGDMA_REQCTL0IN, align 4
  br label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @SGDMA_REQCTL0OUT, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %3, align 8
  %80 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  store i32 %78, i32* %82, align 4
  br label %99

83:                                               ; preds = %48
  %84 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %85 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @SGDMA_REQCTL1IN, align 4
  br label %93

91:                                               ; preds = %83
  %92 = load i32, i32* @SGDMA_REQCTL1OUT, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %3, align 8
  %96 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %77
  %100 = load i32, i32* @SGDMA_REQQUAL, align 4
  %101 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %3, align 8
  %102 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  store i32 %100, i32* %104, align 4
  %105 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %106 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %3, align 8
  %111 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  store i32 %109, i32* %113, align 4
  %114 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %115 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %114, i32 0, i32 1
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %3, align 8
  %120 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 4
  %123 = call i32 (...) @smp_wmb()
  %124 = load i32, i32* @SGDMA_CONTROL_NOGO, align 4
  %125 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %3, align 8
  %126 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @SGDMA_CONTROL, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @iowrite32(i32 %124, i64 %129)
  br label %131

131:                                              ; preds = %99, %41
  ret void
}

declare dso_local i32 @sata_oxnas_check_link(%struct.TYPE_7__*) #1

declare dso_local i32 @ata_port_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @ata_qc_complete(%struct.ata_queued_cmd*) #1

declare dso_local i32 @sata_oxnas_reset_ucode(i32, i32, i32) #1

declare dso_local i64 @ata_is_dma(i32) #1

declare dso_local i64 @ata_is_pio(i32) #1

declare dso_local i32 @ata_bmdma_qc_prep(%struct.ata_queued_cmd*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
