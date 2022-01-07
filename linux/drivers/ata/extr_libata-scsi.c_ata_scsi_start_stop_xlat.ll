; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_start_stop_xlat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_start_stop_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.ata_taskfile, %struct.scsi_cmnd* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_cmnd = type { i32*, i32, i32 }

@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@ATA_DFLAG_LBA = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA = common dso_local global i32 0, align 4
@ATA_LBA = common dso_local global i32 0, align 4
@ATA_CMD_VERIFY = common dso_local global i32 0, align 4
@ATA_FLAG_NO_POWEROFF_SPINDOWN = common dso_local global i32 0, align 4
@system_state = common dso_local global i64 0, align 8
@SYSTEM_POWER_OFF = common dso_local global i64 0, align 8
@ATA_FLAG_NO_HIBERNATE_SPINDOWN = common dso_local global i32 0, align 4
@ATA_CMD_STANDBYNOW1 = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ata_scsi_start_stop_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_start_stop_xlat(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.ata_taskfile*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %9 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %10 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %9, i32 0, i32 3
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  store %struct.scsi_cmnd* %11, %struct.scsi_cmnd** %4, align 8
  %12 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %12, i32 0, i32 2
  store %struct.ata_taskfile* %13, %struct.ata_taskfile** %5, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  store i32 255, i32* %8, align 4
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 4, i32* %7, align 4
  br label %131

22:                                               ; preds = %1
  %23 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %24 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %27 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @ATA_PROT_NODATA, align 4
  %31 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %32 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 2
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 4, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %131

46:                                               ; preds = %39
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 4
  %51 = and i32 %50, 15
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 4, i32* %7, align 4
  store i32 3, i32* %8, align 4
  br label %131

54:                                               ; preds = %46
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %99

60:                                               ; preds = %54
  %61 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %62 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  %63 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %64 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ATA_DFLAG_LBA, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %60
  %72 = load i32, i32* @ATA_TFLAG_LBA, align 4
  %73 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %74 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %78 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %77, i32 0, i32 2
  store i32 0, i32* %78, align 4
  %79 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %80 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %79, i32 0, i32 3
  store i32 0, i32* %80, align 4
  %81 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %82 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %81, i32 0, i32 4
  store i32 0, i32* %82, align 4
  %83 = load i32, i32* @ATA_LBA, align 4
  %84 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %85 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %95

88:                                               ; preds = %60
  %89 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %90 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %89, i32 0, i32 4
  store i32 1, i32* %90, align 4
  %91 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %92 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %91, i32 0, i32 3
  store i32 0, i32* %92, align 4
  %93 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %94 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %93, i32 0, i32 2
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %88, %71
  %96 = load i32, i32* @ATA_CMD_VERIFY, align 4
  %97 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %98 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  br label %130

99:                                               ; preds = %54
  %100 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %101 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @ATA_FLAG_NO_POWEROFF_SPINDOWN, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %99
  %109 = load i64, i64* @system_state, align 8
  %110 = load i64, i64* @SYSTEM_POWER_OFF, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %139

113:                                              ; preds = %108, %99
  %114 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %115 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %114, i32 0, i32 1
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ATA_FLAG_NO_HIBERNATE_SPINDOWN, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %113
  %123 = call i64 (...) @system_entering_hibernation()
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %139

126:                                              ; preds = %122, %113
  %127 = load i32, i32* @ATA_CMD_STANDBYNOW1, align 4
  %128 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %129 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %126, %95
  store i32 0, i32* %2, align 4
  br label %143

131:                                              ; preds = %53, %45, %21
  %132 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %133 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @ata_scsi_set_invalid_field(%struct.TYPE_4__* %134, %struct.scsi_cmnd* %135, i32 %136, i32 %137)
  store i32 1, i32* %2, align 4
  br label %143

139:                                              ; preds = %125, %112
  %140 = load i32, i32* @SAM_STAT_GOOD, align 4
  %141 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %142 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 4
  store i32 1, i32* %2, align 4
  br label %143

143:                                              ; preds = %139, %131, %130
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i64 @system_entering_hibernation(...) #1

declare dso_local i32 @ata_scsi_set_invalid_field(%struct.TYPE_4__*, %struct.scsi_cmnd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
