; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_field_10x26_impl.h_secp256k1_fe_normalize_var.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_field_10x26_impl.h_secp256k1_fe_normalize_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @secp256k1_fe_normalize_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secp256k1_fe_normalize_var(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 5
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 6
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 7
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 8
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %11, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 9
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = ashr i32 %65, 22
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = and i64 %68, 4194303
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 977
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %14, align 4
  %79 = shl i32 %78, 6
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %3, align 4
  %83 = ashr i32 %82, 26
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = and i64 %87, 67108863
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %4, align 4
  %91 = ashr i32 %90, 26
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = and i64 %95, 67108863
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %5, align 4
  %99 = ashr i32 %98, 26
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = and i64 %103, 67108863
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %6, align 4
  %108 = ashr i32 %107, 26
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = and i64 %112, 67108863
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %13, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %7, align 4
  %119 = ashr i32 %118, 26
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = and i64 %123, 67108863
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %13, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %8, align 4
  %130 = ashr i32 %129, 26
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = and i64 %134, 67108863
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %13, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %9, align 4
  %141 = ashr i32 %140, 26
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = and i64 %145, 67108863
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %13, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %10, align 4
  %152 = ashr i32 %151, 26
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = and i64 %156, 67108863
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %13, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %11, align 4
  %163 = ashr i32 %162, 26
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = and i64 %167, 67108863
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %13, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %12, align 4
  %174 = ashr i32 %173, 23
  %175 = icmp eq i32 %174, 0
  %176 = zext i1 %175 to i32
  %177 = call i32 @VERIFY_CHECK(i32 %176)
  %178 = load i32, i32* %12, align 4
  %179 = ashr i32 %178, 22
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp eq i64 %181, 4194303
  %183 = zext i1 %182 to i32
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = icmp eq i64 %185, 67108863
  %187 = zext i1 %186 to i32
  %188 = and i32 %183, %187
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = add i64 %190, 64
  %192 = load i32, i32* %3, align 4
  %193 = sext i32 %192 to i64
  %194 = add i64 %193, 977
  %195 = lshr i64 %194, 26
  %196 = add i64 %191, %195
  %197 = icmp ugt i64 %196, 67108863
  %198 = zext i1 %197 to i32
  %199 = and i32 %188, %198
  %200 = or i32 %179, %199
  store i32 %200, i32* %14, align 4
  %201 = load i32, i32* %14, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %294

203:                                              ; preds = %1
  %204 = load i32, i32* %3, align 4
  %205 = sext i32 %204 to i64
  %206 = add i64 %205, 977
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %3, align 4
  %208 = load i32, i32* %14, align 4
  %209 = shl i32 %208, 6
  %210 = load i32, i32* %4, align 4
  %211 = add nsw i32 %210, %209
  store i32 %211, i32* %4, align 4
  %212 = load i32, i32* %3, align 4
  %213 = ashr i32 %212, 26
  %214 = load i32, i32* %4, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %4, align 4
  %216 = load i32, i32* %3, align 4
  %217 = sext i32 %216 to i64
  %218 = and i64 %217, 67108863
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %3, align 4
  %220 = load i32, i32* %4, align 4
  %221 = ashr i32 %220, 26
  %222 = load i32, i32* %5, align 4
  %223 = add nsw i32 %222, %221
  store i32 %223, i32* %5, align 4
  %224 = load i32, i32* %4, align 4
  %225 = sext i32 %224 to i64
  %226 = and i64 %225, 67108863
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %4, align 4
  %228 = load i32, i32* %5, align 4
  %229 = ashr i32 %228, 26
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, %229
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = and i64 %233, 67108863
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %5, align 4
  %236 = load i32, i32* %6, align 4
  %237 = ashr i32 %236, 26
  %238 = load i32, i32* %7, align 4
  %239 = add nsw i32 %238, %237
  store i32 %239, i32* %7, align 4
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = and i64 %241, 67108863
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %6, align 4
  %244 = load i32, i32* %7, align 4
  %245 = ashr i32 %244, 26
  %246 = load i32, i32* %8, align 4
  %247 = add nsw i32 %246, %245
  store i32 %247, i32* %8, align 4
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = and i64 %249, 67108863
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %7, align 4
  %252 = load i32, i32* %8, align 4
  %253 = ashr i32 %252, 26
  %254 = load i32, i32* %9, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* %9, align 4
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = and i64 %257, 67108863
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %8, align 4
  %260 = load i32, i32* %9, align 4
  %261 = ashr i32 %260, 26
  %262 = load i32, i32* %10, align 4
  %263 = add nsw i32 %262, %261
  store i32 %263, i32* %10, align 4
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = and i64 %265, 67108863
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %9, align 4
  %268 = load i32, i32* %10, align 4
  %269 = ashr i32 %268, 26
  %270 = load i32, i32* %11, align 4
  %271 = add nsw i32 %270, %269
  store i32 %271, i32* %11, align 4
  %272 = load i32, i32* %10, align 4
  %273 = sext i32 %272 to i64
  %274 = and i64 %273, 67108863
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %10, align 4
  %276 = load i32, i32* %11, align 4
  %277 = ashr i32 %276, 26
  %278 = load i32, i32* %12, align 4
  %279 = add nsw i32 %278, %277
  store i32 %279, i32* %12, align 4
  %280 = load i32, i32* %11, align 4
  %281 = sext i32 %280 to i64
  %282 = and i64 %281, 67108863
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %11, align 4
  %284 = load i32, i32* %12, align 4
  %285 = ashr i32 %284, 22
  %286 = load i32, i32* %14, align 4
  %287 = icmp eq i32 %285, %286
  %288 = zext i1 %287 to i32
  %289 = call i32 @VERIFY_CHECK(i32 %288)
  %290 = load i32, i32* %12, align 4
  %291 = sext i32 %290 to i64
  %292 = and i64 %291, 4194303
  %293 = trunc i64 %292 to i32
  store i32 %293, i32* %12, align 4
  br label %294

294:                                              ; preds = %203, %1
  %295 = load i32, i32* %3, align 4
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 0
  store i32 %295, i32* %299, align 4
  %300 = load i32, i32* %4, align 4
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 1
  store i32 %300, i32* %304, align 4
  %305 = load i32, i32* %5, align 4
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 2
  store i32 %305, i32* %309, align 4
  %310 = load i32, i32* %6, align 4
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 3
  store i32 %310, i32* %314, align 4
  %315 = load i32, i32* %7, align 4
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 4
  store i32 %315, i32* %319, align 4
  %320 = load i32, i32* %8, align 4
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 5
  store i32 %320, i32* %324, align 4
  %325 = load i32, i32* %9, align 4
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 6
  store i32 %325, i32* %329, align 4
  %330 = load i32, i32* %10, align 4
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 0
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 7
  store i32 %330, i32* %334, align 4
  %335 = load i32, i32* %11, align 4
  %336 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 0
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 8
  store i32 %335, i32* %339, align 4
  %340 = load i32, i32* %12, align 4
  %341 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 9
  store i32 %340, i32* %344, align 4
  ret void
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
