; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_handle_input.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_handle_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_20__ = type { i32*, i32 }
%struct.st_ptls_record_t = type { i32*, i32, i32 }

@PTLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@PTLS_STATE_POST_HANDSHAKE_MIN = common dso_local global i64 0, align 8
@PTLS_ALERT_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@PTLS_ALERT_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@PTLS_ERROR_IN_PROGRESS = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8
@PTLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@PTLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@handle_handshake_message = common dso_local global i32 0, align 4
@PTLS_STATE_SERVER_EXPECT_END_OF_EARLY_DATA = common dso_local global i64 0, align 8
@PTLS_MAX_EARLY_DATA_SKIP_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32*, %struct.TYPE_20__*, i8*, i64*, i32*)* @handle_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_input(%struct.TYPE_19__* %0, i32* %1, %struct.TYPE_20__* %2, i8* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.st_ptls_record_t, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = load i64*, i64** %12, align 8
  %20 = call i32 @parse_record(%struct.TYPE_19__* %17, %struct.st_ptls_record_t* %14, i8* %18, i64* %19)
  store i32 %20, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %7, align 4
  br label %279

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PTLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %24
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PTLS_STATE_POST_HANDSHAKE_MIN, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %52, label %50

50:                                               ; preds = %44, %40
  %51 = load i32, i32* @PTLS_ALERT_ILLEGAL_PARAMETER, align 4
  store i32 %51, i32* %7, align 4
  br label %279

52:                                               ; preds = %44
  br label %55

53:                                               ; preds = %34
  %54 = load i32, i32* @PTLS_ALERT_HANDSHAKE_FAILURE, align 4
  store i32 %54, i32* %7, align 4
  br label %279

55:                                               ; preds = %52
  %56 = load i32, i32* @PTLS_ERROR_IN_PROGRESS, align 4
  store i32 %56, i32* %15, align 4
  br label %254

57:                                               ; preds = %24
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %165

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 129
  br i1 %67, label %68, label %165

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 128
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @PTLS_ALERT_HANDSHAKE_FAILURE, align 4
  store i32 %73, i32* %7, align 4
  br label %279

74:                                               ; preds = %68
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %76 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 5, %77
  %79 = call i32 @ptls_buffer_reserve(%struct.TYPE_20__* %75, i32 %78)
  store i32 %79, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %15, align 4
  store i32 %82, i32* %7, align 4
  br label %279

83:                                               ; preds = %74
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @aead_decrypt(%struct.TYPE_14__* %86, i32* %94, i64* %16, i32* %96, i32 %98)
  store i32 %99, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %83
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @UINT32_MAX, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %260

114:                                              ; preds = %106, %101
  %115 = load i32, i32* %15, align 4
  store i32 %115, i32* %7, align 4
  br label %279

116:                                              ; preds = %83
  %117 = load i64, i64* %16, align 8
  %118 = trunc i64 %117 to i32
  %119 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 2
  store i32 %118, i32* %119, align 4
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  %128 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 0
  store i32* %127, i32** %128, align 8
  br label %129

129:                                              ; preds = %145, %116
  %130 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  br label %149

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %144
  %146 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %146, align 4
  br label %129

149:                                              ; preds = %143, %129
  %150 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = load i32, i32* @PTLS_ALERT_UNEXPECTED_MESSAGE, align 4
  store i32 %154, i32* %7, align 4
  br label %279

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %158, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %157, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 1
  store i32 %163, i32* %164, align 8
  br label %183

165:                                              ; preds = %64, %57
  %166 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 128
  br i1 %168, label %169, label %182

169:                                              ; preds = %165
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %169
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @UINT32_MAX, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %260

182:                                              ; preds = %174, %169, %165
  br label %183

183:                                              ; preds = %182, %155
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %195, label %190

190:                                              ; preds = %183
  %191 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @PTLS_CONTENT_TYPE_HANDSHAKE, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %190, %183
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %197 = load i32, i32* @handle_handshake_message, align 4
  %198 = load i32*, i32** %9, align 8
  %199 = load i32*, i32** %13, align 8
  %200 = call i32 @handle_handshake_record(%struct.TYPE_19__* %196, i32 %197, i32* %198, %struct.st_ptls_record_t* %14, i32* %199)
  store i32 %200, i32* %15, align 4
  br label %253

201:                                              ; preds = %190
  %202 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  switch i32 %203, label %250 [
    i32 128, label %204
    i32 129, label %242
  ]

204:                                              ; preds = %201
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @PTLS_STATE_POST_HANDSHAKE_MIN, align 8
  %209 = icmp sge i64 %207, %208
  br i1 %209, label %210, label %217

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, %212
  store i32 %216, i32* %214, align 8
  store i32 0, i32* %15, align 4
  br label %241

217:                                              ; preds = %204
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @PTLS_STATE_SERVER_EXPECT_END_OF_EARLY_DATA, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %238

223:                                              ; preds = %217
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %237

230:                                              ; preds = %223
  %231 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = add nsw i32 %235, %232
  store i32 %236, i32* %234, align 8
  br label %237

237:                                              ; preds = %230, %223
  store i32 0, i32* %15, align 4
  br label %240

238:                                              ; preds = %217
  %239 = load i32, i32* @PTLS_ALERT_UNEXPECTED_MESSAGE, align 4
  store i32 %239, i32* %15, align 4
  br label %240

240:                                              ; preds = %238, %237
  br label %241

241:                                              ; preds = %240, %210
  br label %252

242:                                              ; preds = %201
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %244 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = call i32 @handle_alert(%struct.TYPE_19__* %243, i32* %245, i64 %248)
  store i32 %249, i32* %15, align 4
  br label %252

250:                                              ; preds = %201
  %251 = load i32, i32* @PTLS_ALERT_UNEXPECTED_MESSAGE, align 4
  store i32 %251, i32* %15, align 4
  br label %252

252:                                              ; preds = %250, %242, %241
  br label %253

253:                                              ; preds = %252, %195
  br label %254

254:                                              ; preds = %277, %253, %55
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 0
  %258 = call i32 @ptls_buffer_dispose(i32* %257)
  %259 = load i32, i32* %15, align 4
  store i32 %259, i32* %7, align 4
  br label %279

260:                                              ; preds = %181, %113
  %261 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %267, %263
  store i64 %268, i64* %266, align 8
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @PTLS_MAX_EARLY_DATA_SKIP_SIZE, align 8
  %274 = icmp sgt i64 %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %260
  %276 = load i32, i32* @PTLS_ALERT_HANDSHAKE_FAILURE, align 4
  store i32 %276, i32* %7, align 4
  br label %279

277:                                              ; preds = %260
  %278 = load i32, i32* @PTLS_ERROR_IN_PROGRESS, align 4
  store i32 %278, i32* %15, align 4
  br label %254

279:                                              ; preds = %275, %254, %153, %114, %81, %72, %53, %50, %22
  %280 = load i32, i32* %7, align 4
  ret i32 %280
}

declare dso_local i32 @parse_record(%struct.TYPE_19__*, %struct.st_ptls_record_t*, i8*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ptls_buffer_reserve(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @aead_decrypt(%struct.TYPE_14__*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @handle_handshake_record(%struct.TYPE_19__*, i32, i32*, %struct.st_ptls_record_t*, i32*) #1

declare dso_local i32 @handle_alert(%struct.TYPE_19__*, i32*, i64) #1

declare dso_local i32 @ptls_buffer_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
