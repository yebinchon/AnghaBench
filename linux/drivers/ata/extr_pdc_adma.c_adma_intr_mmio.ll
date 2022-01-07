; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pdc_adma.c_adma_intr_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pdc_adma.c_adma_intr_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, %struct.ata_port** }
%struct.ata_port = type { %struct.TYPE_4__, i32, %struct.adma_port_priv* }
%struct.TYPE_4__ = type { %struct.ata_eh_info, i32 }
%struct.ata_eh_info = type { i32 }
%struct.adma_port_priv = type { i64 }
%struct.ata_queued_cmd = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@adma_state_mmio = common dso_local global i64 0, align 8
@ATA_TFLAG_POLLING = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ata%u: protocol %d (dev_stat 0x%X)\0A\00", align 1
@adma_state_idle = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"status 0x%02X\00", align 1
@AC_ERR_DEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_host*)* @adma_intr_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adma_intr_mmio(%struct.ata_host* %0) #0 {
  %2 = alloca %struct.ata_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.adma_port_priv*, align 8
  %7 = alloca %struct.ata_queued_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_eh_info*, align 8
  store %struct.ata_host* %0, %struct.ata_host** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %110, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %13 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %113

16:                                               ; preds = %10
  %17 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %18 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %17, i32 0, i32 1
  %19 = load %struct.ata_port**, %struct.ata_port*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %19, i64 %21
  %23 = load %struct.ata_port*, %struct.ata_port** %22, align 8
  store %struct.ata_port* %23, %struct.ata_port** %5, align 8
  %24 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %25 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %24, i32 0, i32 2
  %26 = load %struct.adma_port_priv*, %struct.adma_port_priv** %25, align 8
  store %struct.adma_port_priv* %26, %struct.adma_port_priv** %6, align 8
  %27 = load %struct.adma_port_priv*, %struct.adma_port_priv** %6, align 8
  %28 = icmp ne %struct.adma_port_priv* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %16
  %30 = load %struct.adma_port_priv*, %struct.adma_port_priv** %6, align 8
  %31 = getelementptr inbounds %struct.adma_port_priv, %struct.adma_port_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @adma_state_mmio, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %16
  br label %110

36:                                               ; preds = %29
  %37 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %38 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %39 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port* %37, i32 %41)
  store %struct.ata_queued_cmd* %42, %struct.ata_queued_cmd** %7, align 8
  %43 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %44 = icmp ne %struct.ata_queued_cmd* %43, null
  br i1 %44, label %45, label %109

45:                                               ; preds = %36
  %46 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %47 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %109, label %53

53:                                               ; preds = %45
  %54 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %55 = call i32 @ata_sff_check_status(%struct.ata_port* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @ATA_BUSY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %110

61:                                               ; preds = %53
  %62 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %63 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %66 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @DPRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %68, i32 %69)
  %71 = load i64, i64* @adma_state_idle, align 8
  %72 = load %struct.adma_port_priv*, %struct.adma_port_priv** %6, align 8
  %73 = getelementptr inbounds %struct.adma_port_priv, %struct.adma_port_priv* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @ac_err_mask(i32 %74)
  %76 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %77 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = or i64 %78, %75
  store i64 %79, i64* %77, align 8
  %80 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %81 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %61
  %85 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %86 = call i32 @ata_qc_complete(%struct.ata_queued_cmd* %85)
  br label %108

87:                                               ; preds = %61
  %88 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %89 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store %struct.ata_eh_info* %90, %struct.ata_eh_info** %9, align 8
  %91 = load %struct.ata_eh_info*, %struct.ata_eh_info** %9, align 8
  %92 = call i32 @ata_ehi_clear_desc(%struct.ata_eh_info* %91)
  %93 = load %struct.ata_eh_info*, %struct.ata_eh_info** %9, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %97 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @AC_ERR_DEV, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %87
  %102 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %103 = call i32 @ata_port_abort(%struct.ata_port* %102)
  br label %107

104:                                              ; preds = %87
  %105 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %106 = call i32 @ata_port_freeze(%struct.ata_port* %105)
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107, %84
  store i32 1, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %45, %36
  br label %110

110:                                              ; preds = %109, %60, %35
  %111 = load i32, i32* %4, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %10

113:                                              ; preds = %10
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_sff_check_status(%struct.ata_port*) #1

declare dso_local i32 @DPRINTK(i8*, i32, i32, i32) #1

declare dso_local i64 @ac_err_mask(i32) #1

declare dso_local i32 @ata_qc_complete(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_ehi_clear_desc(%struct.ata_eh_info*) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*, i32) #1

declare dso_local i32 @ata_port_abort(%struct.ata_port*) #1

declare dso_local i32 @ata_port_freeze(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
