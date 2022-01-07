; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_mode_select_xlat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_mode_select_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@MODE_SELECT = common dso_local global i32 0, align 4
@ALL_SUB_MPAGES = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ata_scsi_mode_select_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_mode_select_xlat(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %16 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %17 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %16, i32 0, i32 1
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %17, align 8
  store %struct.scsi_cmnd* %18, %struct.scsi_cmnd** %4, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %5, align 8
  store i32 -1, i32* %14, align 4
  store i32 255, i32* %15, align 4
  %22 = call i32 @VPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MODE_SELECT, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %1
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 5
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 4, i32* %14, align 4
  br label %251

37:                                               ; preds = %31
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  store i32 4, i32* %11, align 4
  br label %56

41:                                               ; preds = %1
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 9
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 8, i32* %14, align 4
  br label %251

47:                                               ; preds = %41
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 7
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 8
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 8
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  store i32 %55, i32* %13, align 4
  store i32 8, i32* %11, align 4
  br label %56

56:                                               ; preds = %47, %37
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 17
  %61 = icmp ne i32 %60, 16
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  store i32 1, i32* %14, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 5
  store i32 %69, i32* %15, align 4
  br label %251

70:                                               ; preds = %56
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %72 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %76 = call %struct.TYPE_3__* @scsi_sglist(%struct.scsi_cmnd* %75)
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74, %70
  br label %266

82:                                               ; preds = %74
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %84 = call %struct.TYPE_3__* @scsi_sglist(%struct.scsi_cmnd* %83)
  %85 = call i32 @sg_page(%struct.TYPE_3__* %84)
  %86 = call i32* @page_address(i32 %85)
  store i32* %86, i32** %6, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %266

91:                                               ; preds = %82
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32*, i32** %6, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %12, align 4
  br label %107

98:                                               ; preds = %91
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 6
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 8
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 7
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %102, %105
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %98, %94
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %13, align 4
  %110 = sub i32 %109, %108
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32*, i32** %6, align 8
  %113 = zext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %6, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  br label %266

119:                                              ; preds = %107
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %119
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 8
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 3, i32 6
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %11, align 4
  %132 = add i32 %130, %131
  %133 = load i32, i32* %14, align 4
  %134 = add i32 %133, %132
  store i32 %134, i32* %14, align 4
  br label %259

135:                                              ; preds = %122, %119
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %13, align 4
  %138 = sub i32 %137, %136
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = zext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32* %142, i32** %6, align 8
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %273

146:                                              ; preds = %135
  %147 = load i32*, i32** %6, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 63
  store i32 %150, i32* %7, align 4
  %151 = load i32*, i32** %6, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 64
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %176

156:                                              ; preds = %146
  %157 = load i32, i32* %13, align 4
  %158 = icmp slt i32 %157, 4
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %266

160:                                              ; preds = %156
  %161 = load i32*, i32** %6, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %8, align 4
  %164 = load i32*, i32** %6, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 8
  %168 = load i32*, i32** %6, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %167, %170
  store i32 %171, i32* %10, align 4
  %172 = load i32*, i32** %6, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 4
  store i32* %173, i32** %6, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sub nsw i32 %174, 4
  store i32 %175, i32* %13, align 4
  br label %188

176:                                              ; preds = %146
  %177 = load i32, i32* %13, align 4
  %178 = icmp slt i32 %177, 2
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  br label %266

180:                                              ; preds = %176
  store i32 0, i32* %8, align 4
  %181 = load i32*, i32** %6, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %10, align 4
  %184 = load i32*, i32** %6, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  store i32* %185, i32** %6, align 8
  %186 = load i32, i32* %13, align 4
  %187 = sub nsw i32 %186, 2
  store i32 %187, i32* %13, align 4
  br label %188

188:                                              ; preds = %180, %160
  %189 = load i32, i32* %8, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %208

191:                                              ; preds = %188
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @ALL_SUB_MPAGES, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %208

195:                                              ; preds = %191
  %196 = load i32*, i32** %6, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, 64
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 1, i32 0
  store i32 %202, i32* %14, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %12, align 4
  %205 = add i32 %203, %204
  %206 = load i32, i32* %14, align 4
  %207 = add i32 %206, %205
  store i32 %207, i32* %14, align 4
  br label %259

208:                                              ; preds = %191, %188
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* %13, align 4
  %211 = icmp ugt i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  br label %266

213:                                              ; preds = %208
  %214 = load i32, i32* %7, align 4
  switch i32 %214, label %241 [
    i32 129, label %215
    i32 128, label %228
  ]

215:                                              ; preds = %213
  %216 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %217 = load i32*, i32** %6, align 8
  %218 = load i32, i32* %10, align 4
  %219 = call i32 @ata_mselect_caching(%struct.ata_queued_cmd* %216, i32* %217, i32 %218, i32* %14)
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %215
  %222 = load i32, i32* %11, align 4
  %223 = load i32, i32* %12, align 4
  %224 = add i32 %222, %223
  %225 = load i32, i32* %14, align 4
  %226 = add i32 %225, %224
  store i32 %226, i32* %14, align 4
  br label %259

227:                                              ; preds = %215
  br label %245

228:                                              ; preds = %213
  %229 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %230 = load i32*, i32** %6, align 8
  %231 = load i32, i32* %10, align 4
  %232 = call i32 @ata_mselect_control(%struct.ata_queued_cmd* %229, i32* %230, i32 %231, i32* %14)
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %228
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* %12, align 4
  %237 = add i32 %235, %236
  %238 = load i32, i32* %14, align 4
  %239 = add i32 %238, %237
  store i32 %239, i32* %14, align 4
  br label %259

240:                                              ; preds = %228
  br label %273

241:                                              ; preds = %213
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* %11, align 4
  %244 = add i32 %242, %243
  store i32 %244, i32* %14, align 4
  br label %259

245:                                              ; preds = %227
  %246 = load i32, i32* %13, align 4
  %247 = load i32, i32* %10, align 4
  %248 = icmp ugt i32 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %245
  br label %259

250:                                              ; preds = %245
  store i32 0, i32* %2, align 4
  br label %277

251:                                              ; preds = %62, %46, %36
  %252 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %253 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* %15, align 4
  %258 = call i32 @ata_scsi_set_invalid_field(i32 %254, %struct.scsi_cmnd* %255, i32 %256, i32 %257)
  store i32 1, i32* %2, align 4
  br label %277

259:                                              ; preds = %249, %241, %234, %221, %195, %125
  %260 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %261 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %264 = load i32, i32* %14, align 4
  %265 = call i32 @ata_scsi_set_invalid_parameter(i32 %262, %struct.scsi_cmnd* %263, i32 %264)
  store i32 1, i32* %2, align 4
  br label %277

266:                                              ; preds = %212, %179, %159, %118, %90, %81
  %267 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %268 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %271 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %272 = call i32 @ata_scsi_set_sense(i32 %269, %struct.scsi_cmnd* %270, i32 %271, i32 26, i32 0)
  store i32 1, i32* %2, align 4
  br label %277

273:                                              ; preds = %240, %145
  %274 = load i32, i32* @SAM_STAT_GOOD, align 4
  %275 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %276 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %275, i32 0, i32 2
  store i32 %274, i32* %276, align 4
  store i32 1, i32* %2, align 4
  br label %277

277:                                              ; preds = %273, %266, %259, %251, %250
  %278 = load i32, i32* %2, align 4
  ret i32 %278
}

declare dso_local i32 @VPRINTK(i8*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local %struct.TYPE_3__* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32* @page_address(i32) #1

declare dso_local i32 @sg_page(%struct.TYPE_3__*) #1

declare dso_local i32 @ata_mselect_caching(%struct.ata_queued_cmd*, i32*, i32, i32*) #1

declare dso_local i32 @ata_mselect_control(%struct.ata_queued_cmd*, i32*, i32, i32*) #1

declare dso_local i32 @ata_scsi_set_invalid_field(i32, %struct.scsi_cmnd*, i32, i32) #1

declare dso_local i32 @ata_scsi_set_invalid_parameter(i32, %struct.scsi_cmnd*, i32) #1

declare dso_local i32 @ata_scsi_set_sense(i32, %struct.scsi_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
