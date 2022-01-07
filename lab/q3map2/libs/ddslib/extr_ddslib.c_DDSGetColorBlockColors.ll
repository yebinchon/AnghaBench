; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/ddslib/extr_ddslib.c_DDSGetColorBlockColors.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/ddslib/extr_ddslib.c_DDSGetColorBlockColors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i32, i8, i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*)* @DDSGetColorBlockColors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DDSGetColorBlockColors(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i16, align 2
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = call zeroext i16 @DDSLittleShort(i64 %10)
  store i16 %11, i16* %5, align 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 255, i32* %14, align 4
  %15 = load i16, i16* %5, align 2
  %16 = trunc i16 %15 to i8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i8 %16, i8* %19, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i8, i8* %22, align 4
  %24 = zext i8 %23 to i32
  %25 = shl i32 %24, 3
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %22, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i8, i8* %29, align 4
  %31 = zext i8 %30 to i32
  %32 = ashr i32 %31, 5
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i8, i8* %35, align 4
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, %32
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 4
  %40 = load i16, i16* %5, align 2
  %41 = zext i16 %40 to i32
  %42 = ashr i32 %41, 5
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %5, align 2
  %44 = load i16, i16* %5, align 2
  %45 = trunc i16 %44 to i8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i8 %45, i8* %48, align 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 %53, 2
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %51, align 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = ashr i32 %60, 5
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %66, %61
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %64, align 1
  %69 = load i16, i16* %5, align 2
  %70 = zext i16 %69 to i32
  %71 = ashr i32 %70, 6
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %5, align 2
  %73 = load i16, i16* %5, align 2
  %74 = trunc i16 %73 to i8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  store i8 %74, i8* %77, align 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load i8, i8* %80, align 2
  %82 = zext i8 %81 to i32
  %83 = shl i32 %82, 3
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %80, align 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load i8, i8* %87, align 2
  %89 = zext i8 %88 to i32
  %90 = ashr i32 %89, 5
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load i8, i8* %93, align 2
  %95 = zext i8 %94 to i32
  %96 = or i32 %95, %90
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %93, align 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  %102 = load i64, i64* %101, align 8
  %103 = call zeroext i16 @DDSLittleShort(i64 %102)
  store i16 %103, i16* %5, align 2
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32 255, i32* %106, align 4
  %107 = load i16, i16* %5, align 2
  %108 = trunc i16 %107 to i8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  store i8 %108, i8* %111, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i8, i8* %114, align 4
  %116 = zext i8 %115 to i32
  %117 = shl i32 %116, 3
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %114, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i8, i8* %121, align 4
  %123 = zext i8 %122 to i32
  %124 = ashr i32 %123, 5
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i8, i8* %127, align 4
  %129 = zext i8 %128 to i32
  %130 = or i32 %129, %124
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %127, align 4
  %132 = load i16, i16* %5, align 2
  %133 = zext i16 %132 to i32
  %134 = ashr i32 %133, 5
  %135 = trunc i32 %134 to i16
  store i16 %135, i16* %5, align 2
  %136 = load i16, i16* %5, align 2
  %137 = trunc i16 %136 to i8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  store i8 %137, i8* %140, align 1
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i64 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = shl i32 %145, 2
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %143, align 1
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 1
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = ashr i32 %152, 5
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i64 1
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = or i32 %158, %153
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %156, align 1
  %161 = load i16, i16* %5, align 2
  %162 = zext i16 %161 to i32
  %163 = ashr i32 %162, 6
  %164 = trunc i32 %163 to i16
  store i16 %164, i16* %5, align 2
  %165 = load i16, i16* %5, align 2
  %166 = trunc i16 %165 to i8
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i64 1
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 3
  store i8 %166, i8* %169, align 2
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i64 1
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 3
  %173 = load i8, i8* %172, align 2
  %174 = zext i8 %173 to i32
  %175 = shl i32 %174, 3
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %172, align 2
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i64 1
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 3
  %180 = load i8, i8* %179, align 2
  %181 = zext i8 %180 to i32
  %182 = ashr i32 %181, 5
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i64 1
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 3
  %186 = load i8, i8* %185, align 2
  %187 = zext i8 %186 to i32
  %188 = or i32 %187, %182
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %185, align 2
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i64*, i64** %191, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i64*, i64** %196, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp sgt i64 %194, %199
  br i1 %200, label %201, label %334

201:                                              ; preds = %2
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 3
  %205 = load i8, i8* %204, align 2
  %206 = zext i8 %205 to i16
  %207 = zext i16 %206 to i32
  %208 = mul nsw i32 %207, 2
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i64 1
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 3
  %212 = load i8, i8* %211, align 2
  %213 = zext i8 %212 to i16
  %214 = zext i16 %213 to i32
  %215 = add nsw i32 %208, %214
  %216 = sdiv i32 %215, 3
  %217 = trunc i32 %216 to i16
  store i16 %217, i16* %5, align 2
  %218 = load i16, i16* %5, align 2
  %219 = trunc i16 %218 to i8
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i64 2
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 3
  store i8 %219, i8* %222, align 2
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 0
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 2
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i16
  %228 = zext i16 %227 to i32
  %229 = mul nsw i32 %228, 2
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i64 1
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 2
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i16
  %235 = zext i16 %234 to i32
  %236 = add nsw i32 %229, %235
  %237 = sdiv i32 %236, 3
  %238 = trunc i32 %237 to i16
  store i16 %238, i16* %5, align 2
  %239 = load i16, i16* %5, align 2
  %240 = trunc i16 %239 to i8
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i64 2
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 2
  store i8 %240, i8* %243, align 1
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i64 0
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 1
  %247 = load i8, i8* %246, align 4
  %248 = zext i8 %247 to i16
  %249 = zext i16 %248 to i32
  %250 = mul nsw i32 %249, 2
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i64 1
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 1
  %254 = load i8, i8* %253, align 4
  %255 = zext i8 %254 to i16
  %256 = zext i16 %255 to i32
  %257 = add nsw i32 %250, %256
  %258 = sdiv i32 %257, 3
  %259 = trunc i32 %258 to i16
  store i16 %259, i16* %5, align 2
  %260 = load i16, i16* %5, align 2
  %261 = trunc i16 %260 to i8
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i64 2
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 1
  store i8 %261, i8* %264, align 4
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i64 2
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  store i32 255, i32* %267, align 4
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i64 0
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 3
  %271 = load i8, i8* %270, align 2
  %272 = zext i8 %271 to i16
  %273 = zext i16 %272 to i32
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i64 1
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 3
  %277 = load i8, i8* %276, align 2
  %278 = zext i8 %277 to i16
  %279 = zext i16 %278 to i32
  %280 = mul nsw i32 %279, 2
  %281 = add nsw i32 %273, %280
  %282 = sdiv i32 %281, 3
  %283 = trunc i32 %282 to i16
  store i16 %283, i16* %5, align 2
  %284 = load i16, i16* %5, align 2
  %285 = trunc i16 %284 to i8
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i64 3
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 3
  store i8 %285, i8* %288, align 2
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i64 0
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 2
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i16
  %294 = zext i16 %293 to i32
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i64 1
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 2
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i16
  %300 = zext i16 %299 to i32
  %301 = mul nsw i32 %300, 2
  %302 = add nsw i32 %294, %301
  %303 = sdiv i32 %302, 3
  %304 = trunc i32 %303 to i16
  store i16 %304, i16* %5, align 2
  %305 = load i16, i16* %5, align 2
  %306 = trunc i16 %305 to i8
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i64 3
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 2
  store i8 %306, i8* %309, align 1
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i64 0
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 1
  %313 = load i8, i8* %312, align 4
  %314 = zext i8 %313 to i16
  %315 = zext i16 %314 to i32
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i64 1
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 1
  %319 = load i8, i8* %318, align 4
  %320 = zext i8 %319 to i16
  %321 = zext i16 %320 to i32
  %322 = mul nsw i32 %321, 2
  %323 = add nsw i32 %315, %322
  %324 = sdiv i32 %323, 3
  %325 = trunc i32 %324 to i16
  store i16 %325, i16* %5, align 2
  %326 = load i16, i16* %5, align 2
  %327 = trunc i16 %326 to i8
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i64 3
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 1
  store i8 %327, i8* %330, align 4
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i64 3
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 0
  store i32 255, i32* %333, align 4
  br label %410

334:                                              ; preds = %2
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i64 0
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 3
  %338 = load i8, i8* %337, align 2
  %339 = zext i8 %338 to i16
  %340 = zext i16 %339 to i32
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i64 1
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 3
  %344 = load i8, i8* %343, align 2
  %345 = zext i8 %344 to i16
  %346 = zext i16 %345 to i32
  %347 = add nsw i32 %340, %346
  %348 = sdiv i32 %347, 2
  %349 = trunc i32 %348 to i16
  store i16 %349, i16* %5, align 2
  %350 = load i16, i16* %5, align 2
  %351 = trunc i16 %350 to i8
  %352 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i64 2
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 3
  store i8 %351, i8* %354, align 2
  %355 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i64 0
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 2
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i16
  %360 = zext i16 %359 to i32
  %361 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i64 1
  %363 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %362, i32 0, i32 2
  %364 = load i8, i8* %363, align 1
  %365 = zext i8 %364 to i16
  %366 = zext i16 %365 to i32
  %367 = add nsw i32 %360, %366
  %368 = sdiv i32 %367, 2
  %369 = trunc i32 %368 to i16
  store i16 %369, i16* %5, align 2
  %370 = load i16, i16* %5, align 2
  %371 = trunc i16 %370 to i8
  %372 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i64 2
  %374 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %373, i32 0, i32 2
  store i8 %371, i8* %374, align 1
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i64 0
  %377 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %376, i32 0, i32 1
  %378 = load i8, i8* %377, align 4
  %379 = zext i8 %378 to i16
  %380 = zext i16 %379 to i32
  %381 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %381, i64 1
  %383 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %382, i32 0, i32 1
  %384 = load i8, i8* %383, align 4
  %385 = zext i8 %384 to i16
  %386 = zext i16 %385 to i32
  %387 = add nsw i32 %380, %386
  %388 = sdiv i32 %387, 2
  %389 = trunc i32 %388 to i16
  store i16 %389, i16* %5, align 2
  %390 = load i16, i16* %5, align 2
  %391 = trunc i16 %390 to i8
  %392 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %392, i64 2
  %394 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %393, i32 0, i32 1
  store i8 %391, i8* %394, align 4
  %395 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %395, i64 2
  %397 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %396, i32 0, i32 0
  store i32 255, i32* %397, align 4
  %398 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i64 3
  %400 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %399, i32 0, i32 3
  store i8 0, i8* %400, align 2
  %401 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i64 3
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i32 0, i32 2
  store i8 -1, i8* %403, align 1
  %404 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %404, i64 3
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i32 0, i32 1
  store i8 -1, i8* %406, align 4
  %407 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %407, i64 3
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i32 0, i32 0
  store i32 0, i32* %409, align 4
  br label %410

410:                                              ; preds = %334, %201
  ret void
}

declare dso_local zeroext i16 @DDSLittleShort(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
