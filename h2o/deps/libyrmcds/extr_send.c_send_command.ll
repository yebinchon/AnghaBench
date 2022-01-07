; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_send_command.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.iovec = type { i8*, i32 }

@YRMCDS_CMD_BOTTOM = common dso_local global i64 0, align 8
@MAX_DATA_SIZE = common dso_local global i64 0, align 8
@YRMCDS_BAD_ARGUMENT = common dso_local global i32 0, align 4
@BINARY_HEADER_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@YRMCDS_SYSTEM_ERROR = common dso_local global i32 0, align 4
@YRMCDS_OK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64, i32, i32*, i64, i8*, i64, i8*, i64, i8*)* @send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_command(%struct.TYPE_3__* %0, i64 %1, i32 %2, i32* %3, i64 %4, i8* %5, i64 %6, i8* %7, i64 %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [4 x %struct.iovec], align 16
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %12, align 8
  store i64 %1, i64* %13, align 8
  store i32 %2, i32* %14, align 4
  store i32* %3, i32** %15, align 8
  store i64 %4, i64* %16, align 8
  store i8* %5, i8** %17, align 8
  store i64 %6, i64* %18, align 8
  store i8* %7, i8** %19, align 8
  store i64 %8, i64* %20, align 8
  store i8* %9, i8** %21, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* @YRMCDS_CMD_BOTTOM, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %64, label %36

36:                                               ; preds = %10
  %37 = load i64, i64* %16, align 8
  %38 = icmp ugt i64 %37, 65535
  br i1 %38, label %64, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %18, align 8
  %41 = icmp ugt i64 %40, 127
  br i1 %41, label %64, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %20, align 8
  %44 = load i64, i64* @MAX_DATA_SIZE, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %64, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %16, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i8*, i8** %17, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %49, %46
  %53 = load i64, i64* %18, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i8*, i8** %19, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %55, %52
  %59 = load i64, i64* %20, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i8*, i8** %21, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61, %55, %49, %42, %39, %36, %10
  %65 = load i32, i32* @YRMCDS_BAD_ARGUMENT, align 4
  store i32 %65, i32* %11, align 4
  br label %267

66:                                               ; preds = %61, %58
  %67 = load i32, i32* @BINARY_HEADER_SIZE, align 4
  %68 = zext i32 %67 to i64
  %69 = call i8* @llvm.stacksave()
  store i8* %69, i8** %22, align 8
  %70 = alloca i8, i64 %68, align 16
  store i64 %68, i64* %23, align 8
  %71 = trunc i64 %68 to i32
  %72 = call i32 @memset(i8* %70, i32 0, i32 %71)
  %73 = getelementptr inbounds i8, i8* %70, i64 0
  store i8 -128, i8* %73, align 16
  %74 = load i64, i64* %13, align 8
  %75 = trunc i64 %74 to i8
  %76 = getelementptr inbounds i8, i8* %70, i64 1
  store i8 %75, i8* %76, align 1
  %77 = load i64, i64* %16, align 8
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds i8, i8* %70, i64 2
  %80 = call i32 @hton16(i32 %78, i8* %79)
  %81 = load i64, i64* %18, align 8
  %82 = trunc i64 %81 to i8
  %83 = getelementptr inbounds i8, i8* %70, i64 4
  store i8 %82, i8* %83, align 4
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* %18, align 8
  %86 = add i64 %84, %85
  %87 = load i64, i64* %20, align 8
  %88 = add i64 %86, %87
  store i64 %88, i64* %24, align 8
  %89 = load i64, i64* %24, align 8
  %90 = trunc i64 %89 to i32
  %91 = getelementptr inbounds i8, i8* %70, i64 8
  %92 = call i32 @hton32(i32 %90, i8* %91)
  %93 = load i32, i32* %14, align 4
  %94 = getelementptr inbounds i8, i8* %70, i64 16
  %95 = call i32 @hton64(i32 %93, i8* %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = call i32 @pthread_mutex_lock(i32* %97)
  store i32 %98, i32* %25, align 4
  %99 = load i32, i32* %25, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %66
  %102 = load i32, i32* %25, align 4
  store i32 %102, i32* @errno, align 4
  %103 = load i32, i32* @YRMCDS_SYSTEM_ERROR, align 4
  store i32 %103, i32* %11, align 4
  store i32 1, i32* %26, align 4
  br label %265

104:                                              ; preds = %66
  %105 = load i32, i32* @YRMCDS_OK, align 4
  store i32 %105, i32* %27, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = getelementptr inbounds i8, i8* %70, i64 12
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = call i32 @memcpy(i8* %112, i32* %114, i32 4)
  %116 = load i32*, i32** %15, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %104
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %15, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %118, %104
  store i32 1, i32* %29, align 4
  %124 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %28, i64 0, i64 0
  %125 = getelementptr inbounds %struct.iovec, %struct.iovec* %124, i32 0, i32 0
  store i8* %70, i8** %125, align 16
  %126 = trunc i64 %68 to i32
  %127 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %28, i64 0, i64 0
  %128 = getelementptr inbounds %struct.iovec, %struct.iovec* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load i64, i64* %18, align 8
  %130 = icmp ugt i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %123
  %132 = load i8*, i8** %19, align 8
  %133 = load i32, i32* %29, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %28, i64 0, i64 %134
  %136 = getelementptr inbounds %struct.iovec, %struct.iovec* %135, i32 0, i32 0
  store i8* %132, i8** %136, align 16
  %137 = load i64, i64* %18, align 8
  %138 = trunc i64 %137 to i32
  %139 = load i32, i32* %29, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %28, i64 0, i64 %140
  %142 = getelementptr inbounds %struct.iovec, %struct.iovec* %141, i32 0, i32 1
  store i32 %138, i32* %142, align 8
  %143 = load i32, i32* %29, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %29, align 4
  br label %145

145:                                              ; preds = %131, %123
  %146 = load i64, i64* %16, align 8
  %147 = icmp ugt i64 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %145
  %149 = load i8*, i8** %17, align 8
  %150 = load i32, i32* %29, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %28, i64 0, i64 %151
  %153 = getelementptr inbounds %struct.iovec, %struct.iovec* %152, i32 0, i32 0
  store i8* %149, i8** %153, align 16
  %154 = load i64, i64* %16, align 8
  %155 = trunc i64 %154 to i32
  %156 = load i32, i32* %29, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %28, i64 0, i64 %157
  %159 = getelementptr inbounds %struct.iovec, %struct.iovec* %158, i32 0, i32 1
  store i32 %155, i32* %159, align 8
  %160 = load i32, i32* %29, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %29, align 4
  br label %162

162:                                              ; preds = %148, %145
  %163 = load i64, i64* %20, align 8
  %164 = icmp ugt i64 %163, 0
  br i1 %164, label %165, label %179

165:                                              ; preds = %162
  %166 = load i8*, i8** %21, align 8
  %167 = load i32, i32* %29, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %28, i64 0, i64 %168
  %170 = getelementptr inbounds %struct.iovec, %struct.iovec* %169, i32 0, i32 0
  store i8* %166, i8** %170, align 16
  %171 = load i64, i64* %20, align 8
  %172 = trunc i64 %171 to i32
  %173 = load i32, i32* %29, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %28, i64 0, i64 %174
  %176 = getelementptr inbounds %struct.iovec, %struct.iovec* %175, i32 0, i32 1
  store i32 %172, i32* %176, align 8
  %177 = load i32, i32* %29, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %29, align 4
  br label %179

179:                                              ; preds = %165, %162
  br label %180

180:                                              ; preds = %258, %198, %179
  %181 = load i32, i32* %29, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %259

183:                                              ; preds = %180
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %28, i64 0, i64 0
  %188 = load i32, i32* %29, align 4
  %189 = call i32 @writev(i32 %186, %struct.iovec* %187, i32 %188)
  store i32 %189, i32* %30, align 4
  %190 = load i32, i32* %30, align 4
  %191 = sext i32 %190 to i64
  store i64 %191, i64* %31, align 8
  %192 = load i32, i32* %30, align 4
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %194, label %201

194:                                              ; preds = %183
  %195 = load i32, i32* @errno, align 4
  %196 = load i32, i32* @EINTR, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  br label %180

199:                                              ; preds = %194
  %200 = load i32, i32* @YRMCDS_SYSTEM_ERROR, align 4
  store i32 %200, i32* %27, align 4
  br label %260

201:                                              ; preds = %183
  br label %202

202:                                              ; preds = %257, %201
  %203 = load i64, i64* %31, align 8
  %204 = icmp ugt i64 %203, 0
  br i1 %204, label %205, label %258

205:                                              ; preds = %202
  %206 = load i64, i64* %31, align 8
  %207 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %28, i64 0, i64 0
  %208 = getelementptr inbounds %struct.iovec, %struct.iovec* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = icmp ult i64 %206, %210
  br i1 %211, label %212, label %227

212:                                              ; preds = %205
  %213 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %28, i64 0, i64 0
  %214 = getelementptr inbounds %struct.iovec, %struct.iovec* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 16
  %216 = load i64, i64* %31, align 8
  %217 = getelementptr inbounds i8, i8* %215, i64 %216
  %218 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %28, i64 0, i64 0
  %219 = getelementptr inbounds %struct.iovec, %struct.iovec* %218, i32 0, i32 0
  store i8* %217, i8** %219, align 16
  %220 = load i64, i64* %31, align 8
  %221 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %28, i64 0, i64 0
  %222 = getelementptr inbounds %struct.iovec, %struct.iovec* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = sub i64 %224, %220
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %222, align 8
  br label %258

227:                                              ; preds = %205
  %228 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %28, i64 0, i64 0
  %229 = getelementptr inbounds %struct.iovec, %struct.iovec* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = load i64, i64* %31, align 8
  %233 = sub i64 %232, %231
  store i64 %233, i64* %31, align 8
  %234 = load i32, i32* %29, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %29, align 4
  %236 = load i32, i32* %29, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %227
  br label %258

239:                                              ; preds = %227
  store i32 0, i32* %32, align 4
  br label %240

240:                                              ; preds = %254, %239
  %241 = load i32, i32* %32, align 4
  %242 = load i32, i32* %29, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %257

244:                                              ; preds = %240
  %245 = load i32, i32* %32, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %28, i64 0, i64 %246
  %248 = load i32, i32* %32, align 4
  %249 = add nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %28, i64 0, i64 %250
  %252 = bitcast %struct.iovec* %247 to i8*
  %253 = bitcast %struct.iovec* %251 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %252, i8* align 16 %253, i64 16, i1 false)
  br label %254

254:                                              ; preds = %244
  %255 = load i32, i32* %32, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %32, align 4
  br label %240

257:                                              ; preds = %240
  br label %202

258:                                              ; preds = %238, %212, %202
  br label %180

259:                                              ; preds = %180
  br label %260

260:                                              ; preds = %259, %199
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 0
  %263 = call i32 @pthread_mutex_unlock(i32* %262)
  %264 = load i32, i32* %27, align 4
  store i32 %264, i32* %11, align 4
  store i32 1, i32* %26, align 4
  br label %265

265:                                              ; preds = %260, %101
  %266 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %266)
  br label %267

267:                                              ; preds = %265, %64
  %268 = load i32, i32* %11, align 4
  ret i32 %268
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @hton16(i32, i8*) #2

declare dso_local i32 @hton32(i32, i8*) #2

declare dso_local i32 @hton64(i32, i8*) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
