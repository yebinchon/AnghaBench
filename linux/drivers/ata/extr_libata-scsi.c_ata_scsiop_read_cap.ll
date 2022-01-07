; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsiop_read_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsiop_read_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_scsi_args = type { %struct.ata_device*, i32, %struct.TYPE_2__* }
%struct.ata_device = type { i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i64* }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@READ_CAPACITY = common dso_local global i64 0, align 8
@ATA_HORKAGE_NOTRIM = common dso_local global i32 0, align 4
@ATA_HORKAGE_ZERO_AFTER_TRIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Enabling discard_zeroes_data\0A\00", align 1
@ATA_DEV_ZAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_scsi_args*, i32*)* @ata_scsiop_read_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsiop_read_cap(%struct.ata_scsi_args* %0, i32* %1) #0 {
  %3 = alloca %struct.ata_scsi_args*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_scsi_args* %0, %struct.ata_scsi_args** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %11 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %10, i32 0, i32 0
  %12 = load %struct.ata_device*, %struct.ata_device** %11, align 8
  store %struct.ata_device* %12, %struct.ata_device** %5, align 8
  %13 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %14 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %18 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ata_id_logical_sector_size(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %22 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ata_id_log2_per_physical_sector(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %26 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ata_id_logical_sector_offset(i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = call i32 @VPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %32 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @READ_CAPACITY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %2
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp uge i64 %42, 4294967295
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 -1, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i32, i32* %6, align 4
  %47 = ashr i32 %46, 24
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, 16
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %6, align 4
  %55 = ashr i32 %54, 8
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = ashr i32 %61, 24
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = ashr i32 %65, 16
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = ashr i32 %69, 8
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 6
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 7
  store i32 %73, i32* %75, align 4
  br label %191

76:                                               ; preds = %2
  %77 = load i32, i32* %6, align 4
  %78 = ashr i32 %77, 56
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %6, align 4
  %82 = ashr i32 %81, 48
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %6, align 4
  %86 = ashr i32 %85, 40
  %87 = load i32*, i32** %4, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %6, align 4
  %90 = ashr i32 %89, 32
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %6, align 4
  %94 = ashr i32 %93, 24
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %6, align 4
  %98 = ashr i32 %97, 16
  %99 = load i32*, i32** %4, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %6, align 4
  %102 = ashr i32 %101, 8
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 6
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 7
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %7, align 4
  %109 = ashr i32 %108, 24
  %110 = load i32*, i32** %4, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 8
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %7, align 4
  %113 = ashr i32 %112, 16
  %114 = load i32*, i32** %4, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 9
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %7, align 4
  %117 = ashr i32 %116, 8
  %118 = load i32*, i32** %4, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 10
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32*, i32** %4, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 11
  store i32 %120, i32* %122, align 4
  %123 = load i32*, i32** %4, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 12
  store i32 0, i32* %124, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32*, i32** %4, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 13
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %9, align 4
  %129 = ashr i32 %128, 8
  %130 = and i32 %129, 63
  %131 = load i32*, i32** %4, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 14
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32*, i32** %4, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 15
  store i32 %133, i32* %135, align 4
  %136 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %137 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @ata_id_has_trim(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %173

141:                                              ; preds = %76
  %142 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %143 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @ATA_HORKAGE_NOTRIM, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %173, label %148

148:                                              ; preds = %141
  %149 = load i32*, i32** %4, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 14
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, 128
  store i32 %152, i32* %150, align 4
  %153 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %154 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @ata_id_has_zero_after_trim(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %148
  %159 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %160 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @ATA_HORKAGE_ZERO_AFTER_TRIM, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %158
  %166 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %167 = call i32 @ata_dev_info(%struct.ata_device* %166, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %168 = load i32*, i32** %4, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 14
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, 64
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %165, %158, %148
  br label %173

173:                                              ; preds = %172, %141, %76
  %174 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %175 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i64 @ata_id_zoned_cap(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %187, label %179

179:                                              ; preds = %173
  %180 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %181 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %180, i32 0, i32 0
  %182 = load %struct.ata_device*, %struct.ata_device** %181, align 8
  %183 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @ATA_DEV_ZAC, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %179, %173
  %188 = load i32*, i32** %4, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 12
  store i32 16, i32* %189, align 4
  br label %190

190:                                              ; preds = %187, %179
  br label %191

191:                                              ; preds = %190, %45
  ret i32 0
}

declare dso_local i32 @ata_id_logical_sector_size(i32) #1

declare dso_local i32 @ata_id_log2_per_physical_sector(i32) #1

declare dso_local i32 @ata_id_logical_sector_offset(i32, i32) #1

declare dso_local i32 @VPRINTK(i8*) #1

declare dso_local i64 @ata_id_has_trim(i32) #1

declare dso_local i64 @ata_id_has_zero_after_trim(i32) #1

declare dso_local i32 @ata_dev_info(%struct.ata_device*, i8*) #1

declare dso_local i64 @ata_id_zoned_cap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
