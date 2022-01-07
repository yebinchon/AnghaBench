; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsiop_mode_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsiop_mode_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_scsi_args = type { %struct.TYPE_3__*, i32, %struct.ata_device* }
%struct.TYPE_3__ = type { i32* }
%struct.ata_device = type { i32, i64 }

@ata_scsiop_mode_sense.sat_blk_desc = internal constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0], align 16
@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@MODE_SENSE = common dso_local global i32 0, align 4
@ALL_SUB_MPAGES = common dso_local global i32 0, align 4
@ATA_DFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_DFLAG_PIO = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_scsi_args*, i32*)* @ata_scsiop_mode_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsiop_mode_sense(%struct.ata_scsi_args* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_scsi_args*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ata_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ata_scsi_args* %0, %struct.ata_scsi_args** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %4, align 8
  %19 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %18, i32 0, i32 2
  %20 = load %struct.ata_device*, %struct.ata_device** %19, align 8
  store %struct.ata_device* %20, %struct.ata_device** %6, align 8
  %21 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %4, align 8
  %22 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %5, align 8
  store i32* %26, i32** %8, align 8
  store i32 255, i32* %15, align 4
  %27 = call i32 @VPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MODE_SENSE, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 8
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 6
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  switch i32 %45, label %48 [
    i32 0, label %46
    i32 1, label %46
    i32 2, label %46
    i32 3, label %47
  ]

46:                                               ; preds = %2, %2, %2
  br label %49

47:                                               ; preds = %2
  br label %245

48:                                               ; preds = %2
  store i32 2, i32* %16, align 4
  store i32 6, i32* %15, align 4
  br label %237

49:                                               ; preds = %46
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 8, i32 0
  %57 = add nsw i32 4, %56
  %58 = load i32*, i32** %8, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %8, align 8
  br label %70

61:                                               ; preds = %49
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 8, i32 0
  %66 = add nsw i32 8, %65
  %67 = load i32*, i32** %8, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %8, align 8
  br label %70

70:                                               ; preds = %61, %52
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 63
  store i32 %74, i32* %9, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @ALL_SUB_MPAGES, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 3, i32* %16, align 4
  br label %237

85:                                               ; preds = %80, %70
  %86 = load i32, i32* %9, align 4
  switch i32 %86, label %151 [
    i32 128, label %87
    i32 130, label %96
    i32 129, label %108
    i32 131, label %120
  ]

87:                                               ; preds = %85
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %12, align 4
  %90 = icmp eq i32 %89, 1
  %91 = zext i1 %90 to i32
  %92 = call i32 @ata_msense_rw_recovery(i32* %88, i32 %91)
  %93 = load i32*, i32** %8, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %8, align 8
  br label %152

96:                                               ; preds = %85
  %97 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %4, align 8
  %98 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %101, 1
  %103 = zext i1 %102 to i32
  %104 = call i32 @ata_msense_caching(i32 %99, i32* %100, i32 %103)
  %105 = load i32*, i32** %8, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %8, align 8
  br label %152

108:                                              ; preds = %85
  %109 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %4, align 8
  %110 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %109, i32 0, i32 2
  %111 = load %struct.ata_device*, %struct.ata_device** %110, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %12, align 4
  %114 = icmp eq i32 %113, 1
  %115 = zext i1 %114 to i32
  %116 = call i32 @ata_msense_control(%struct.ata_device* %111, i32* %112, i32 %115)
  %117 = load i32*, i32** %8, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %8, align 8
  br label %152

120:                                              ; preds = %85
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %12, align 4
  %123 = icmp eq i32 %122, 1
  %124 = zext i1 %123 to i32
  %125 = call i32 @ata_msense_rw_recovery(i32* %121, i32 %124)
  %126 = load i32*, i32** %8, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %8, align 8
  %129 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %4, align 8
  %130 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %12, align 4
  %134 = icmp eq i32 %133, 1
  %135 = zext i1 %134 to i32
  %136 = call i32 @ata_msense_caching(i32 %131, i32* %132, i32 %135)
  %137 = load i32*, i32** %8, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32* %139, i32** %8, align 8
  %140 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %4, align 8
  %141 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %140, i32 0, i32 2
  %142 = load %struct.ata_device*, %struct.ata_device** %141, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %12, align 4
  %145 = icmp eq i32 %144, 1
  %146 = zext i1 %145 to i32
  %147 = call i32 @ata_msense_control(%struct.ata_device* %142, i32* %143, i32 %146)
  %148 = load i32*, i32** %8, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32* %150, i32** %8, align 8
  br label %152

151:                                              ; preds = %85
  store i32 2, i32* %16, align 4
  br label %237

152:                                              ; preds = %120, %108, %96, %87
  store i32 0, i32* %14, align 4
  %153 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %4, align 8
  %154 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @ata_dev_supports_fua(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %178

158:                                              ; preds = %152
  %159 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %160 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @ATA_DFLAG_LBA48, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %158
  %166 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %167 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @ATA_DFLAG_PIO, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %165
  %173 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %174 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172, %165
  store i32 16, i32* %14, align 4
  br label %178

178:                                              ; preds = %177, %172, %158, %152
  %179 = load i32, i32* %13, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %206

181:                                              ; preds = %178
  %182 = load i32*, i32** %8, align 8
  %183 = load i32*, i32** %5, align 8
  %184 = ptrtoint i32* %182 to i64
  %185 = ptrtoint i32* %183 to i64
  %186 = sub i64 %184, %185
  %187 = sdiv exact i64 %186, 4
  %188 = sub nsw i64 %187, 1
  %189 = trunc i64 %188 to i32
  %190 = load i32*, i32** %5, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %14, align 4
  %193 = load i32*, i32** %5, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 2
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %181
  %200 = load i32*, i32** %5, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 3
  store i32 32, i32* %201, align 4
  %202 = load i32*, i32** %5, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 4
  %204 = call i32 @memcpy(i32* %203, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @ata_scsiop_mode_sense.sat_blk_desc, i64 0, i64 0), i32 32)
  br label %205

205:                                              ; preds = %199, %181
  br label %236

206:                                              ; preds = %178
  %207 = load i32*, i32** %8, align 8
  %208 = load i32*, i32** %5, align 8
  %209 = ptrtoint i32* %207 to i64
  %210 = ptrtoint i32* %208 to i64
  %211 = sub i64 %209, %210
  %212 = sdiv exact i64 %211, 4
  %213 = sub nsw i64 %212, 2
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %17, align 4
  %215 = load i32, i32* %17, align 4
  %216 = lshr i32 %215, 8
  %217 = load i32*, i32** %5, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* %17, align 4
  %220 = load i32*, i32** %5, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* %14, align 4
  %223 = load i32*, i32** %5, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 3
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 4
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %206
  %230 = load i32*, i32** %5, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 7
  store i32 32, i32* %231, align 4
  %232 = load i32*, i32** %5, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 8
  %234 = call i32 @memcpy(i32* %233, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @ata_scsiop_mode_sense.sat_blk_desc, i64 0, i64 0), i32 32)
  br label %235

235:                                              ; preds = %229, %206
  br label %236

236:                                              ; preds = %235, %205
  store i32 0, i32* %3, align 4
  br label %252

237:                                              ; preds = %151, %84, %48
  %238 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %239 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %4, align 8
  %240 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %239, i32 0, i32 0
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %240, align 8
  %242 = load i32, i32* %16, align 4
  %243 = load i32, i32* %15, align 4
  %244 = call i32 @ata_scsi_set_invalid_field(%struct.ata_device* %238, %struct.TYPE_3__* %241, i32 %242, i32 %243)
  store i32 1, i32* %3, align 4
  br label %252

245:                                              ; preds = %47
  %246 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %247 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %4, align 8
  %248 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %247, i32 0, i32 0
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %248, align 8
  %250 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %251 = call i32 @ata_scsi_set_sense(%struct.ata_device* %246, %struct.TYPE_3__* %249, i32 %250, i32 57, i32 0)
  store i32 1, i32* %3, align 4
  br label %252

252:                                              ; preds = %245, %237, %236
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

declare dso_local i32 @VPRINTK(i8*) #1

declare dso_local i32 @ata_msense_rw_recovery(i32*, i32) #1

declare dso_local i32 @ata_msense_caching(i32, i32*, i32) #1

declare dso_local i32 @ata_msense_control(%struct.ata_device*, i32*, i32) #1

declare dso_local i64 @ata_dev_supports_fua(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ata_scsi_set_invalid_field(%struct.ata_device*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @ata_scsi_set_sense(%struct.ata_device*, %struct.TYPE_3__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
