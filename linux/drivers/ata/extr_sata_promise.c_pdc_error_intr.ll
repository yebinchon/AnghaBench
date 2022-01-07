; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_promise.c_pdc_error_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_promise.c_pdc_error_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32 }
%struct.ata_queued_cmd = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"port_status 0x%08x\00", align 1
@PDC_DRIVE_ERR = common dso_local global i32 0, align 4
@AC_ERR_DEV = common dso_local global i32 0, align 4
@PDC_OVERRUN_ERR = common dso_local global i32 0, align 4
@PDC_UNDERRUN_ERR = common dso_local global i32 0, align 4
@AC_ERR_OTHER = common dso_local global i32 0, align 4
@PDC2_ATA_HBA_ERR = common dso_local global i32 0, align 4
@PDC2_ATA_DMA_CNT_ERR = common dso_local global i32 0, align 4
@AC_ERR_ATA_BUS = common dso_local global i32 0, align 4
@PDC_PH_ERR = common dso_local global i32 0, align 4
@PDC_SH_ERR = common dso_local global i32 0, align 4
@PDC_DH_ERR = common dso_local global i32 0, align 4
@PDC2_HTO_ERR = common dso_local global i32 0, align 4
@PDC_PCI_SYS_ERR = common dso_local global i32 0, align 4
@PDC1_PCI_PARITY_ERR = common dso_local global i32 0, align 4
@AC_ERR_HOST_BUS = common dso_local global i32 0, align 4
@SCR_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_queued_cmd*, i32, i32)* @pdc_error_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc_error_intr(%struct.ata_port* %0, %struct.ata_queued_cmd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.ata_queued_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_eh_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %5, align 8
  store %struct.ata_queued_cmd* %1, %struct.ata_queued_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.ata_eh_info* %14, %struct.ata_eh_info** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.ata_eh_info*, %struct.ata_eh_info** %9, align 8
  %16 = call i32 @ata_ehi_clear_desc(%struct.ata_eh_info* %15)
  %17 = load %struct.ata_eh_info*, %struct.ata_eh_info** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PDC_DRIVE_ERR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load i32, i32* @AC_ERR_DEV, align 4
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %27, %4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PDC_OVERRUN_ERR, align 4
  %34 = load i32, i32* @PDC_UNDERRUN_ERR, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @AC_ERR_OTHER, align 4
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %38, %31
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @PDC2_ATA_HBA_ERR, align 4
  %45 = load i32, i32* @PDC2_ATA_DMA_CNT_ERR, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* @AC_ERR_ATA_BUS, align 4
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %49, %42
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PDC_PH_ERR, align 4
  %56 = load i32, i32* @PDC_SH_ERR, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @PDC_DH_ERR, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @PDC2_HTO_ERR, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @PDC_PCI_SYS_ERR, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @PDC1_PCI_PARITY_ERR, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %54, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = load i32, i32* @AC_ERR_HOST_BUS, align 4
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %68, %53
  %73 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %74 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %73, i32 0, i32 0
  %75 = call i64 @sata_scr_valid(%struct.TYPE_3__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %79 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %78, i32 0, i32 0
  %80 = load i32, i32* @SCR_ERROR, align 4
  %81 = call i32 @pdc_sata_scr_read(%struct.TYPE_3__* %79, i32 %80, i32* %11)
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.ata_eh_info*, %struct.ata_eh_info** %9, align 8
  %84 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %77, %72
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %90 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %94 = call i32 @pdc_reset_port(%struct.ata_port* %93)
  %95 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %96 = call i32 @ata_port_abort(%struct.ata_port* %95)
  ret void
}

declare dso_local i32 @ata_ehi_clear_desc(%struct.ata_eh_info*) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*, i32) #1

declare dso_local i64 @sata_scr_valid(%struct.TYPE_3__*) #1

declare dso_local i32 @pdc_sata_scr_read(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @pdc_reset_port(%struct.ata_port*) #1

declare dso_local i32 @ata_port_abort(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
