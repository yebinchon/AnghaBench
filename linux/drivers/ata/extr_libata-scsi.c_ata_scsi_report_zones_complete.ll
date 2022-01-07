; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_report_zones_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_report_zones_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32 }
%struct.sg_mapping_iter = type { i8*, i32 }

@SG_MITER_TO_SG = common dso_local global i32 0, align 4
@SG_MITER_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @ata_scsi_report_zones_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_scsi_report_zones_complete(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.sg_mapping_iter, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %21 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %22 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %21, i32 0, i32 0
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %22, align 8
  store %struct.scsi_cmnd* %23, %struct.scsi_cmnd** %3, align 8
  store i32 0, i32* %6, align 4
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %25 = call i32 @scsi_sglist(%struct.scsi_cmnd* %24)
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %27 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %26)
  %28 = load i32, i32* @SG_MITER_TO_SG, align 4
  %29 = load i32, i32* @SG_MITER_ATOMIC, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %4, i32 %25, i32 %27, i32 %30)
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @local_irq_save(i64 %32)
  br label %34

34:                                               ; preds = %154, %1
  %35 = call i64 @sg_miter_next(%struct.sg_mapping_iter* %4)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %155

37:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %4, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = call i32 @get_unaligned_le32(i8* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  %48 = call i32 @get_unaligned_le16(i8* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 8
  %51 = call i32 @get_unaligned_le64(i8* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 16
  %54 = call i32 @get_unaligned_le64(i8* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = call i32 @put_unaligned_be32(i32 %55, i8* %57)
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %59, 15
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 4
  store i8 %61, i8* %63, align 1
  %64 = load i32, i32* %10, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 8
  %67 = call i32 @put_unaligned_be64(i32 %64, i8* %66)
  %68 = load i32, i32* %11, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 16
  %71 = call i32 @put_unaligned_be64(i32 %68, i8* %70)
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, 64
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add i32 %74, 64
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %40, %37
  br label %77

77:                                               ; preds = %82, %76
  %78 = load i32, i32* %7, align 4
  %79 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %4, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp ult i32 %78, %80
  br i1 %81, label %82, label %154

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %4, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8* %87, i8** %13, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = and i32 %91, 15
  store i32 %92, i32* %15, align 4
  %93 = load i8*, i8** %13, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = ashr i32 %96, 4
  %98 = and i32 %97, 15
  store i32 %98, i32* %14, align 4
  %99 = load i8*, i8** %13, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = and i32 %102, 2
  store i32 %103, i32* %16, align 4
  %104 = load i8*, i8** %13, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = and i32 %107, 1
  store i32 %108, i32* %17, align 4
  %109 = load i8*, i8** %13, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 8
  %111 = call i32 @get_unaligned_le64(i8* %110)
  store i32 %111, i32* %18, align 4
  %112 = load i8*, i8** %13, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 16
  %114 = call i32 @get_unaligned_le64(i8* %113)
  store i32 %114, i32* %19, align 4
  %115 = load i8*, i8** %13, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 24
  %117 = call i32 @get_unaligned_le64(i8* %116)
  store i32 %117, i32* %20, align 4
  %118 = load i32, i32* %15, align 4
  %119 = trunc i32 %118 to i8
  %120 = load i8*, i8** %13, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 %119, i8* %121, align 1
  %122 = load i32, i32* %14, align 4
  %123 = shl i32 %122, 4
  %124 = load i32, i32* %16, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* %17, align 4
  %127 = or i32 %125, %126
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %13, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  store i8 %128, i8* %130, align 1
  %131 = load i32, i32* %18, align 4
  %132 = load i8*, i8** %13, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 8
  %134 = call i32 @put_unaligned_be64(i32 %131, i8* %133)
  %135 = load i32, i32* %19, align 4
  %136 = load i8*, i8** %13, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 16
  %138 = call i32 @put_unaligned_be64(i32 %135, i8* %137)
  %139 = load i32, i32* %20, align 4
  %140 = load i8*, i8** %13, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 24
  %142 = call i32 @put_unaligned_be64(i32 %139, i8* %141)
  %143 = load i32, i32* %7, align 4
  %144 = add i32 %143, 64
  %145 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %4, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = icmp ugt i32 %144, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @WARN_ON(i32 %148)
  %150 = load i32, i32* %7, align 4
  %151 = add i32 %150, 64
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %6, align 4
  %153 = add i32 %152, 64
  store i32 %153, i32* %6, align 4
  br label %77

154:                                              ; preds = %77
  br label %34

155:                                              ; preds = %34
  %156 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %4)
  %157 = load i64, i64* %5, align 8
  %158 = call i32 @local_irq_restore(i64 %157)
  %159 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %160 = call i32 @ata_scsi_qc_complete(%struct.ata_queued_cmd* %159)
  ret void
}

declare dso_local i32 @sg_miter_start(%struct.sg_mapping_iter*, i32, i32, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @sg_miter_next(%struct.sg_mapping_iter*) #1

declare dso_local i32 @get_unaligned_le32(i8*) #1

declare dso_local i32 @get_unaligned_le16(i8*) #1

declare dso_local i32 @get_unaligned_le64(i8*) #1

declare dso_local i32 @put_unaligned_be32(i32, i8*) #1

declare dso_local i32 @put_unaligned_be64(i32, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @ata_scsi_qc_complete(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
