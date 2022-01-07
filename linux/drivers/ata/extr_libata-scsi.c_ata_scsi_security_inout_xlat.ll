; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_security_inout_xlat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_security_inout_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_2__*, %struct.ata_taskfile, %struct.scsi_cmnd* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_cmnd = type { i32* }

@SECURITY_PROTOCOL_OUT = common dso_local global i32 0, align 4
@ATA_DFLAG_PIO = common dso_local global i32 0, align 4
@ATA_PROT_DMA = common dso_local global i32 0, align 4
@ATA_PROT_PIO = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA = common dso_local global i32 0, align 4
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ata_scsi_security_inout_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_security_inout_xlat(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ata_taskfile*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %12 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %12, i32 0, i32 2
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  store %struct.scsi_cmnd* %14, %struct.scsi_cmnd** %4, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %18, i32 0, i32 1
  store %struct.ata_taskfile* %19, %struct.ata_taskfile** %6, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SECURITY_PROTOCOL_OUT, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = call i32 @get_unaligned_be16(i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 6
  %34 = call i32 @get_unaligned_be32(i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ATA_DFLAG_PIO, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 239
  br i1 %46, label %47, label %53

47:                                               ; preds = %1
  %48 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %49 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %52 = call i32 @ata_scsi_set_invalid_field(%struct.TYPE_2__* %50, %struct.scsi_cmnd* %51, i32 1, i32 0)
  store i32 1, i32* %2, align 4
  br label %149

53:                                               ; preds = %1
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 7
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = icmp sgt i32 %60, 65535
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %64 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %67 = call i32 @ata_scsi_set_invalid_field(%struct.TYPE_2__* %65, %struct.scsi_cmnd* %66, i32 6, i32 0)
  store i32 1, i32* %2, align 4
  br label %149

68:                                               ; preds = %59
  br label %82

69:                                               ; preds = %53
  %70 = load i32, i32* %10, align 4
  %71 = icmp sgt i32 %70, 33553920
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %74 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %77 = call i32 @ata_scsi_set_invalid_field(%struct.TYPE_2__* %75, %struct.scsi_cmnd* %76, i32 6, i32 0)
  store i32 1, i32* %2, align 4
  br label %149

78:                                               ; preds = %69
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 511
  %81 = sdiv i32 %80, 512
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %78, %68
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @ATA_PROT_DMA, align 4
  br label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @ATA_PROT_PIO, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %92 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %94 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @ATA_TFLAG_LBA, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %99 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %89
  %105 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %106 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %107 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %104, %89
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @ata_scsi_trusted_op(i32 %111, i32 %112, i32 %113)
  %115 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %116 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %119 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %9, align 4
  %121 = and i32 %120, 255
  %122 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %123 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %9, align 4
  %125 = ashr i32 %124, 8
  %126 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %127 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %110
  %131 = load i32, i32* %10, align 4
  %132 = and i32 %131, 255
  %133 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %134 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %10, align 4
  %136 = ashr i32 %135, 8
  %137 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %138 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  br label %146

139:                                              ; preds = %110
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %144 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %143, i32 0, i32 3
  store i32 128, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %139
  br label %146

146:                                              ; preds = %145, %130
  %147 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %148 = call i32 @ata_qc_set_pc_nbytes(%struct.ata_queued_cmd* %147)
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %146, %72, %62, %47
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @ata_scsi_set_invalid_field(%struct.TYPE_2__*, %struct.scsi_cmnd*, i32, i32) #1

declare dso_local i32 @ata_scsi_trusted_op(i32, i32, i32) #1

declare dso_local i32 @ata_qc_set_pc_nbytes(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
