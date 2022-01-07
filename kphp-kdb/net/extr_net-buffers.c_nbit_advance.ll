; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_nbit_advance.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_nbit_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, %struct.TYPE_4__*, %struct.TYPE_4__* }

@NET_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nbit_advance(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %6, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %11, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %2
  store i32 0, i32* %3, align 4
  br label %305

29:                                               ; preds = %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ule i8* %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i8*, i8** %11, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ule i8* %36, %39
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi i1 [ false, %29 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load i8*, i8** %11, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ule i8* %50, %53
  br label %55

55:                                               ; preds = %49, %41
  %56 = phi i1 [ true, %41 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %213

61:                                               ; preds = %55
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %8, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %91

74:                                               ; preds = %61
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %77, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %74
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %91

91:                                               ; preds = %82, %74, %61
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %202, %91
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %92
  %97 = load i8*, i8** %11, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store %struct.TYPE_4__* %103, %struct.TYPE_4__** %105, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %106, %107
  store i32 %108, i32* %3, align 4
  br label %305

109:                                              ; preds = %92
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %5, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %109
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  store i8* %121, i8** %123, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store %struct.TYPE_4__* %124, %struct.TYPE_4__** %126, align 8
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %3, align 4
  br label %305

128:                                              ; preds = %109
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %133 = icmp eq %struct.TYPE_4__* %131, %132
  br i1 %133, label %134, label %160

134:                                              ; preds = %128
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = icmp eq i8* %142, %145
  br label %147

147:                                              ; preds = %139, %134
  %148 = phi i1 [ true, %134 ], [ %146, %139 ]
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  store %struct.TYPE_4__* %156, %struct.TYPE_4__** %158, align 8
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %3, align 4
  br label %305

160:                                              ; preds = %128
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  store %struct.TYPE_4__* %163, %struct.TYPE_4__** %6, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  store i8* %166, i8** %11, align 8
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = ptrtoint i8* %169 to i64
  %172 = ptrtoint i8* %170 to i64
  %173 = sub i64 %171, %172
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %8, align 4
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %196

179:                                              ; preds = %160
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 2
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = icmp ne i8* %182, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %179
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 2
  %190 = load i8*, i8** %189, align 8
  %191 = load i8*, i8** %11, align 8
  %192 = ptrtoint i8* %190 to i64
  %193 = ptrtoint i8* %191 to i64
  %194 = sub i64 %192, %193
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %196

196:                                              ; preds = %187, %179, %160
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @NET_BUFFER_SIZE, align 4
  %199 = icmp ule i32 %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @assert(i32 %200)
  br label %202

202:                                              ; preds = %196
  %203 = load i32, i32* %5, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %92, label %205

205:                                              ; preds = %202
  %206 = load i8*, i8** %11, align 8
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  store i8* %206, i8** %208, align 8
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  store %struct.TYPE_4__* %209, %struct.TYPE_4__** %211, align 8
  %212 = load i32, i32* %9, align 4
  store i32 %212, i32* %3, align 4
  br label %305

213:                                              ; preds = %55
  %214 = load i8*, i8** %11, align 8
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = ptrtoint i8* %214 to i64
  %219 = ptrtoint i8* %217 to i64
  %220 = sub i64 %218, %219
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %222

222:                                              ; preds = %294, %213
  %223 = load i32, i32* %8, align 4
  %224 = load i32, i32* %5, align 4
  %225 = add nsw i32 %223, %224
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %222
  %228 = load i8*, i8** %11, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  store i8* %231, i8** %233, align 8
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 1
  store %struct.TYPE_4__* %234, %struct.TYPE_4__** %236, align 8
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %5, align 4
  %239 = add nsw i32 %237, %238
  store i32 %239, i32* %3, align 4
  br label %305

240:                                              ; preds = %222
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* %9, align 4
  %243 = sub nsw i32 %242, %241
  store i32 %243, i32* %9, align 4
  %244 = load i32, i32* %8, align 4
  %245 = load i32, i32* %5, align 4
  %246 = add nsw i32 %245, %244
  store i32 %246, i32* %5, align 4
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %249 = icmp eq %struct.TYPE_4__* %247, %248
  br i1 %249, label %250, label %260

250:                                              ; preds = %240
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 0
  store i8* %253, i8** %255, align 8
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 1
  store %struct.TYPE_4__* %256, %struct.TYPE_4__** %258, align 8
  %259 = load i32, i32* %9, align 4
  store i32 %259, i32* %3, align 4
  br label %305

260:                                              ; preds = %240
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 3
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %262, align 8
  store %struct.TYPE_4__* %263, %struct.TYPE_4__** %6, align 8
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  store i8* %266, i8** %11, align 8
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 2
  %269 = load i8*, i8** %268, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %271, label %277

271:                                              ; preds = %260
  %272 = load i8*, i8** %11, align 8
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 2
  %275 = load i8*, i8** %274, align 8
  %276 = icmp eq i8* %272, %275
  br label %277

277:                                              ; preds = %271, %260
  %278 = phi i1 [ true, %260 ], [ %276, %271 ]
  %279 = zext i1 %278 to i32
  %280 = call i32 @assert(i32 %279)
  %281 = load i8*, i8** %11, align 8
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  %284 = load i8*, i8** %283, align 8
  %285 = ptrtoint i8* %281 to i64
  %286 = ptrtoint i8* %284 to i64
  %287 = sub i64 %285, %286
  %288 = trunc i64 %287 to i32
  store i32 %288, i32* %8, align 4
  %289 = load i32, i32* %8, align 4
  %290 = load i32, i32* @NET_BUFFER_SIZE, align 4
  %291 = icmp ule i32 %289, %290
  %292 = zext i1 %291 to i32
  %293 = call i32 @assert(i32 %292)
  br label %294

294:                                              ; preds = %277
  %295 = load i32, i32* %5, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %222, label %297

297:                                              ; preds = %294
  %298 = load i8*, i8** %11, align 8
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 0
  store i8* %298, i8** %300, align 8
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 1
  store %struct.TYPE_4__* %301, %struct.TYPE_4__** %303, align 8
  %304 = load i32, i32* %9, align 4
  store i32 %304, i32* %3, align 4
  br label %305

305:                                              ; preds = %297, %250, %227, %205, %147, %118, %96, %28
  %306 = load i32, i32* %3, align 4
  ret i32 %306
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
