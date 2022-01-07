; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_recv.c_yrmcds_recv.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_recv.c_yrmcds_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64, i8*, i8*, i64, i64 }
%struct.TYPE_8__ = type { i32, i8, i8*, i64, i32, i8*, i64, i8*, i8*, i32, i64 }

@YRMCDS_BAD_ARGUMENT = common dso_local global i64 0, align 8
@YRMCDS_PROTOCOL_ERROR = common dso_local global i64 0, align 8
@BINARY_HEADER_SIZE = common dso_local global i64 0, align 8
@MAX_CAPACITY = common dso_local global i64 0, align 8
@YRMCDS_CMD_INCREMENT = common dso_local global i8 0, align 1
@YRMCDS_CMD_DECREMENT = common dso_local global i8 0, align 1
@YRMCDS_STATUS_OK = common dso_local global i64 0, align 8
@YRMCDS_OK = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i64 0, align 8
@YRMCDS_FLAG_COMPRESS = common dso_local global i32 0, align 4
@YRMCDS_OUT_OF_MEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @yrmcds_recv(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = icmp eq %struct.TYPE_9__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = icmp eq %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %2
  %21 = load i64, i64* @YRMCDS_BAD_ARGUMENT, align 8
  store i64 %21, i64* %3, align 8
  br label %311

22:                                               ; preds = %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* @YRMCDS_PROTOCOL_ERROR, align 8
  store i64 %28, i64* %3, align 8
  br label %311

29:                                               ; preds = %22
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %29
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %37, %40
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %34
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @memmove(i8* %47, i8* %54, i64 %55)
  br label %57

57:                                               ; preds = %44, %34
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 4
  store i8* null, i8** %68, align 8
  br label %69

69:                                               ; preds = %57, %29
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = call i64 @text_recv(%struct.TYPE_9__* %75, %struct.TYPE_8__* %76)
  store i64 %77, i64* %3, align 8
  br label %311

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %92, %78
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @BINARY_HEADER_SIZE, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = call i64 @recv_data(%struct.TYPE_9__* %86)
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %7, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i64, i64* %7, align 8
  store i64 %91, i64* %3, align 8
  br label %311

92:                                               ; preds = %85
  br label %79

93:                                               ; preds = %79
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, -127
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load i64, i64* @YRMCDS_PROTOCOL_ERROR, align 8
  store i64 %103, i64* %3, align 8
  br label %311

104:                                              ; preds = %93
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 8
  %109 = call i8* @ntoh32(i8* %108)
  %110 = ptrtoint i8* %109 to i64
  store i64 %110, i64* %8, align 8
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* @MAX_CAPACITY, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %104
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load i64, i64* @YRMCDS_PROTOCOL_ERROR, align 8
  store i64 %117, i64* %3, align 8
  br label %311

118:                                              ; preds = %104
  br label %119

119:                                              ; preds = %134, %118
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @BINARY_HEADER_SIZE, align 8
  %124 = load i64, i64* %8, align 8
  %125 = add nsw i64 %123, %124
  %126 = icmp ult i64 %122, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %119
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %129 = call i64 @recv_data(%struct.TYPE_9__* %128)
  store i64 %129, i64* %9, align 8
  %130 = load i64, i64* %9, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i64, i64* %9, align 8
  store i64 %133, i64* %3, align 8
  br label %311

134:                                              ; preds = %127
  br label %119

135:                                              ; preds = %119
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 2
  %140 = call i8* @ntoh16(i8* %139)
  %141 = ptrtoint i8* %140 to i64
  store i64 %141, i64* %10, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 4
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  store i32 %147, i32* %11, align 4
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %10, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  %153 = icmp slt i64 %148, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %135
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  %157 = load i64, i64* @YRMCDS_PROTOCOL_ERROR, align 8
  store i64 %157, i64* %3, align 8
  br label %311

158:                                              ; preds = %135
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = load i64, i64* @BINARY_HEADER_SIZE, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %162, %164
  %166 = getelementptr inbounds i8, i8* %161, i64 %165
  store i8* %166, i8** %12, align 8
  %167 = load i64, i64* @BINARY_HEADER_SIZE, align 8
  %168 = load i64, i64* %8, align 8
  %169 = add nsw i64 %167, %168
  %170 = trunc i64 %169 to i32
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 3
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  %177 = load i8, i8* %176, align 1
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  store i8 %177, i8* %179, align 4
  %180 = load i64, i64* %10, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %158
  %183 = load i8*, i8** %12, align 8
  br label %185

184:                                              ; preds = %158
  br label %185

185:                                              ; preds = %184, %182
  %186 = phi i8* [ %183, %182 ], [ null, %184 ]
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 2
  store i8* %186, i8** %188, align 8
  %189 = load i64, i64* %10, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 10
  store i64 %189, i64* %191, align 8
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 3
  %194 = load i8*, i8** %193, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 6
  %196 = call i8* @ntoh16(i8* %195)
  %197 = ptrtoint i8* %196 to i64
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 3
  store i64 %197, i64* %199, align 8
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 9
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 3
  %204 = load i8*, i8** %203, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 12
  %206 = call i32 @memcpy(i32* %201, i8* %205, i32 4)
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 3
  %209 = load i8*, i8** %208, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 16
  %211 = call i8* @ntoh64(i8* %210)
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 8
  store i8* %211, i8** %213, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 4
  store i32 0, i32* %215, align 8
  %216 = load i32, i32* %11, align 4
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %235

218:                                              ; preds = %185
  %219 = load i32, i32* %11, align 4
  %220 = icmp ne i32 %219, 4
  br i1 %220, label %221, label %225

221:                                              ; preds = %218
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  store i32 1, i32* %223, align 8
  %224 = load i64, i64* @YRMCDS_PROTOCOL_ERROR, align 8
  store i64 %224, i64* %3, align 8
  br label %311

225:                                              ; preds = %218
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 3
  %228 = load i8*, i8** %227, align 8
  %229 = load i64, i64* @BINARY_HEADER_SIZE, align 8
  %230 = getelementptr inbounds i8, i8* %228, i64 %229
  %231 = call i8* @ntoh32(i8* %230)
  %232 = ptrtoint i8* %231 to i32
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 4
  store i32 %232, i32* %234, align 8
  br label %235

235:                                              ; preds = %225, %185
  %236 = load i64, i64* %8, align 8
  %237 = load i64, i64* %10, align 8
  %238 = sub nsw i64 %236, %237
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = sub nsw i64 %238, %240
  store i64 %241, i64* %13, align 8
  %242 = load i8*, i8** %12, align 8
  %243 = load i64, i64* %10, align 8
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  store i8* %244, i8** %14, align 8
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 1
  %247 = load i8, i8* %246, align 4
  %248 = zext i8 %247 to i32
  %249 = load i8, i8* @YRMCDS_CMD_INCREMENT, align 1
  %250 = zext i8 %249 to i32
  %251 = icmp eq i32 %248, %250
  br i1 %251, label %260, label %252

252:                                              ; preds = %235
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 1
  %255 = load i8, i8* %254, align 4
  %256 = zext i8 %255 to i32
  %257 = load i8, i8* @YRMCDS_CMD_DECREMENT, align 1
  %258 = zext i8 %257 to i32
  %259 = icmp eq i32 %256, %258
  br i1 %259, label %260, label %289

260:                                              ; preds = %252, %235
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @YRMCDS_STATUS_OK, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %289

266:                                              ; preds = %260
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 5
  store i8* null, i8** %268, align 8
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 6
  store i64 0, i64* %270, align 8
  %271 = load i64, i64* %13, align 8
  %272 = icmp ne i64 %271, 8
  br i1 %272, label %273, label %277

273:                                              ; preds = %266
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 0
  store i32 1, i32* %275, align 8
  %276 = load i64, i64* @YRMCDS_PROTOCOL_ERROR, align 8
  store i64 %276, i64* %3, align 8
  br label %311

277:                                              ; preds = %266
  %278 = load i8*, i8** %14, align 8
  %279 = call i8* @ntoh64(i8* %278)
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 7
  store i8* %279, i8** %281, align 8
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = sext i32 %284 to i64
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 1
  store i64 %285, i64* %287, align 8
  %288 = load i64, i64* @YRMCDS_OK, align 8
  store i64 %288, i64* %3, align 8
  br label %311

289:                                              ; preds = %260, %252
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 7
  store i8* null, i8** %291, align 8
  %292 = load i64, i64* %13, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %289
  %295 = load i8*, i8** %14, align 8
  br label %297

296:                                              ; preds = %289
  br label %297

297:                                              ; preds = %296, %294
  %298 = phi i8* [ %295, %294 ], [ null, %296 ]
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 5
  store i8* %298, i8** %300, align 8
  %301 = load i64, i64* %13, align 8
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 6
  store i64 %301, i64* %303, align 8
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = sext i32 %306 to i64
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 1
  store i64 %307, i64* %309, align 8
  %310 = load i64, i64* @YRMCDS_OK, align 8
  store i64 %310, i64* %3, align 8
  br label %311

311:                                              ; preds = %297, %277, %273, %221, %154, %132, %114, %100, %90, %74, %27, %20
  %312 = load i64, i64* %3, align 8
  ret i64 %312
}

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @text_recv(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i64 @recv_data(%struct.TYPE_9__*) #1

declare dso_local i8* @ntoh32(i8*) #1

declare dso_local i8* @ntoh16(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i8* @ntoh64(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
