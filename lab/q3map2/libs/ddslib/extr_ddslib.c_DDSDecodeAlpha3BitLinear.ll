; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/ddslib/extr_ddslib.c_DDSDecodeAlpha3BitLinear.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/ddslib/extr_ddslib.c_DDSDecodeAlpha3BitLinear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i16, i16, i32* }
%struct.TYPE_4__ = type { i8, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32, i32)* @DDSDecodeAlpha3BitLinear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DDSDecodeAlpha3BitLinear(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x [4 x i8]], align 16
  %13 = alloca [8 x i16], align 16
  %14 = alloca [4 x [4 x %struct.TYPE_4__]], align 16
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 8
  %18 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 0
  store i16 %17, i16* %18, align 16
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 2
  %22 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 1
  store i16 %21, i16* %22, align 2
  %23 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 0
  %24 = load i16, i16* %23, align 16
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 1
  %27 = load i16, i16* %26, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %101

30:                                               ; preds = %4
  %31 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 0
  %32 = load i16, i16* %31, align 16
  %33 = zext i16 %32 to i32
  %34 = mul nsw i32 6, %33
  %35 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 1
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i32
  %38 = add nsw i32 %34, %37
  %39 = sdiv i32 %38, 7
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 2
  store i16 %40, i16* %41, align 4
  %42 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 0
  %43 = load i16, i16* %42, align 16
  %44 = zext i16 %43 to i32
  %45 = mul nsw i32 5, %44
  %46 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 1
  %47 = load i16, i16* %46, align 2
  %48 = zext i16 %47 to i32
  %49 = mul nsw i32 2, %48
  %50 = add nsw i32 %45, %49
  %51 = sdiv i32 %50, 7
  %52 = trunc i32 %51 to i16
  %53 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 3
  store i16 %52, i16* %53, align 2
  %54 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 0
  %55 = load i16, i16* %54, align 16
  %56 = zext i16 %55 to i32
  %57 = mul nsw i32 4, %56
  %58 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 1
  %59 = load i16, i16* %58, align 2
  %60 = zext i16 %59 to i32
  %61 = mul nsw i32 3, %60
  %62 = add nsw i32 %57, %61
  %63 = sdiv i32 %62, 7
  %64 = trunc i32 %63 to i16
  %65 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 4
  store i16 %64, i16* %65, align 8
  %66 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 0
  %67 = load i16, i16* %66, align 16
  %68 = zext i16 %67 to i32
  %69 = mul nsw i32 3, %68
  %70 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 1
  %71 = load i16, i16* %70, align 2
  %72 = zext i16 %71 to i32
  %73 = mul nsw i32 4, %72
  %74 = add nsw i32 %69, %73
  %75 = sdiv i32 %74, 7
  %76 = trunc i32 %75 to i16
  %77 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 5
  store i16 %76, i16* %77, align 2
  %78 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 0
  %79 = load i16, i16* %78, align 16
  %80 = zext i16 %79 to i32
  %81 = mul nsw i32 2, %80
  %82 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 1
  %83 = load i16, i16* %82, align 2
  %84 = zext i16 %83 to i32
  %85 = mul nsw i32 5, %84
  %86 = add nsw i32 %81, %85
  %87 = sdiv i32 %86, 7
  %88 = trunc i32 %87 to i16
  %89 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 6
  store i16 %88, i16* %89, align 4
  %90 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 0
  %91 = load i16, i16* %90, align 16
  %92 = zext i16 %91 to i32
  %93 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 1
  %94 = load i16, i16* %93, align 2
  %95 = zext i16 %94 to i32
  %96 = mul nsw i32 6, %95
  %97 = add nsw i32 %92, %96
  %98 = sdiv i32 %97, 7
  %99 = trunc i32 %98 to i16
  %100 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 7
  store i16 %99, i16* %100, align 2
  br label %150

101:                                              ; preds = %4
  %102 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 0
  %103 = load i16, i16* %102, align 16
  %104 = zext i16 %103 to i32
  %105 = mul nsw i32 4, %104
  %106 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 1
  %107 = load i16, i16* %106, align 2
  %108 = zext i16 %107 to i32
  %109 = add nsw i32 %105, %108
  %110 = sdiv i32 %109, 5
  %111 = trunc i32 %110 to i16
  %112 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 2
  store i16 %111, i16* %112, align 4
  %113 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 0
  %114 = load i16, i16* %113, align 16
  %115 = zext i16 %114 to i32
  %116 = mul nsw i32 3, %115
  %117 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 1
  %118 = load i16, i16* %117, align 2
  %119 = zext i16 %118 to i32
  %120 = mul nsw i32 2, %119
  %121 = add nsw i32 %116, %120
  %122 = sdiv i32 %121, 5
  %123 = trunc i32 %122 to i16
  %124 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 3
  store i16 %123, i16* %124, align 2
  %125 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 0
  %126 = load i16, i16* %125, align 16
  %127 = zext i16 %126 to i32
  %128 = mul nsw i32 2, %127
  %129 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 1
  %130 = load i16, i16* %129, align 2
  %131 = zext i16 %130 to i32
  %132 = mul nsw i32 3, %131
  %133 = add nsw i32 %128, %132
  %134 = sdiv i32 %133, 5
  %135 = trunc i32 %134 to i16
  %136 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 4
  store i16 %135, i16* %136, align 8
  %137 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 0
  %138 = load i16, i16* %137, align 16
  %139 = zext i16 %138 to i32
  %140 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 1
  %141 = load i16, i16* %140, align 2
  %142 = zext i16 %141 to i32
  %143 = mul nsw i32 4, %142
  %144 = add nsw i32 %139, %143
  %145 = sdiv i32 %144, 5
  %146 = trunc i32 %145 to i16
  %147 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 5
  store i16 %146, i16* %147, align 2
  %148 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 6
  store i16 0, i16* %148, align 4
  %149 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 7
  store i16 255, i16* %149, align 2
  br label %150

150:                                              ; preds = %101, %30
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = and i32 %156, 7
  %158 = trunc i32 %157 to i8
  %159 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %12, i64 0, i64 0
  %160 = getelementptr inbounds [4 x i8], [4 x i8]* %159, i64 0, i64 0
  store i8 %158, i8* %160, align 16
  %161 = load i32, i32* %11, align 4
  %162 = lshr i32 %161, 3
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = and i32 %163, 7
  %165 = trunc i32 %164 to i8
  %166 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %12, i64 0, i64 0
  %167 = getelementptr inbounds [4 x i8], [4 x i8]* %166, i64 0, i64 1
  store i8 %165, i8* %167, align 1
  %168 = load i32, i32* %11, align 4
  %169 = lshr i32 %168, 3
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = and i32 %170, 7
  %172 = trunc i32 %171 to i8
  %173 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %12, i64 0, i64 0
  %174 = getelementptr inbounds [4 x i8], [4 x i8]* %173, i64 0, i64 2
  store i8 %172, i8* %174, align 2
  %175 = load i32, i32* %11, align 4
  %176 = lshr i32 %175, 3
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = and i32 %177, 7
  %179 = trunc i32 %178 to i8
  %180 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %12, i64 0, i64 0
  %181 = getelementptr inbounds [4 x i8], [4 x i8]* %180, i64 0, i64 3
  store i8 %179, i8* %181, align 1
  %182 = load i32, i32* %11, align 4
  %183 = lshr i32 %182, 3
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = and i32 %184, 7
  %186 = trunc i32 %185 to i8
  %187 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %12, i64 0, i64 1
  %188 = getelementptr inbounds [4 x i8], [4 x i8]* %187, i64 0, i64 0
  store i8 %186, i8* %188, align 4
  %189 = load i32, i32* %11, align 4
  %190 = lshr i32 %189, 3
  store i32 %190, i32* %11, align 4
  %191 = load i32, i32* %11, align 4
  %192 = and i32 %191, 7
  %193 = trunc i32 %192 to i8
  %194 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %12, i64 0, i64 1
  %195 = getelementptr inbounds [4 x i8], [4 x i8]* %194, i64 0, i64 1
  store i8 %193, i8* %195, align 1
  %196 = load i32, i32* %11, align 4
  %197 = lshr i32 %196, 3
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %11, align 4
  %199 = and i32 %198, 7
  %200 = trunc i32 %199 to i8
  %201 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %12, i64 0, i64 1
  %202 = getelementptr inbounds [4 x i8], [4 x i8]* %201, i64 0, i64 2
  store i8 %200, i8* %202, align 2
  %203 = load i32, i32* %11, align 4
  %204 = lshr i32 %203, 3
  store i32 %204, i32* %11, align 4
  %205 = load i32, i32* %11, align 4
  %206 = and i32 %205, 7
  %207 = trunc i32 %206 to i8
  %208 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %12, i64 0, i64 1
  %209 = getelementptr inbounds [4 x i8], [4 x i8]* %208, i64 0, i64 3
  store i8 %207, i8* %209, align 1
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 3
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %11, align 4
  %215 = load i32, i32* %11, align 4
  %216 = and i32 %215, 7
  %217 = trunc i32 %216 to i8
  %218 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %12, i64 0, i64 2
  %219 = getelementptr inbounds [4 x i8], [4 x i8]* %218, i64 0, i64 0
  store i8 %217, i8* %219, align 8
  %220 = load i32, i32* %11, align 4
  %221 = lshr i32 %220, 3
  store i32 %221, i32* %11, align 4
  %222 = load i32, i32* %11, align 4
  %223 = and i32 %222, 7
  %224 = trunc i32 %223 to i8
  %225 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %12, i64 0, i64 2
  %226 = getelementptr inbounds [4 x i8], [4 x i8]* %225, i64 0, i64 1
  store i8 %224, i8* %226, align 1
  %227 = load i32, i32* %11, align 4
  %228 = lshr i32 %227, 3
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %11, align 4
  %230 = and i32 %229, 7
  %231 = trunc i32 %230 to i8
  %232 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %12, i64 0, i64 2
  %233 = getelementptr inbounds [4 x i8], [4 x i8]* %232, i64 0, i64 2
  store i8 %231, i8* %233, align 2
  %234 = load i32, i32* %11, align 4
  %235 = lshr i32 %234, 3
  store i32 %235, i32* %11, align 4
  %236 = load i32, i32* %11, align 4
  %237 = and i32 %236, 7
  %238 = trunc i32 %237 to i8
  %239 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %12, i64 0, i64 2
  %240 = getelementptr inbounds [4 x i8], [4 x i8]* %239, i64 0, i64 3
  store i8 %238, i8* %240, align 1
  %241 = load i32, i32* %11, align 4
  %242 = lshr i32 %241, 3
  store i32 %242, i32* %11, align 4
  %243 = load i32, i32* %11, align 4
  %244 = and i32 %243, 7
  %245 = trunc i32 %244 to i8
  %246 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %12, i64 0, i64 3
  %247 = getelementptr inbounds [4 x i8], [4 x i8]* %246, i64 0, i64 0
  store i8 %245, i8* %247, align 4
  %248 = load i32, i32* %11, align 4
  %249 = lshr i32 %248, 3
  store i32 %249, i32* %11, align 4
  %250 = load i32, i32* %11, align 4
  %251 = and i32 %250, 7
  %252 = trunc i32 %251 to i8
  %253 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %12, i64 0, i64 3
  %254 = getelementptr inbounds [4 x i8], [4 x i8]* %253, i64 0, i64 1
  store i8 %252, i8* %254, align 1
  %255 = load i32, i32* %11, align 4
  %256 = lshr i32 %255, 3
  store i32 %256, i32* %11, align 4
  %257 = load i32, i32* %11, align 4
  %258 = and i32 %257, 7
  %259 = trunc i32 %258 to i8
  %260 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %12, i64 0, i64 3
  %261 = getelementptr inbounds [4 x i8], [4 x i8]* %260, i64 0, i64 2
  store i8 %259, i8* %261, align 2
  %262 = load i32, i32* %11, align 4
  %263 = lshr i32 %262, 3
  store i32 %263, i32* %11, align 4
  %264 = load i32, i32* %11, align 4
  %265 = and i32 %264, 7
  %266 = trunc i32 %265 to i8
  %267 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %12, i64 0, i64 3
  %268 = getelementptr inbounds [4 x i8], [4 x i8]* %267, i64 0, i64 3
  store i8 %266, i8* %268, align 1
  store i32 0, i32* %9, align 4
  br label %269

269:                                              ; preds = %320, %150
  %270 = load i32, i32* %9, align 4
  %271 = icmp slt i32 %270, 4
  br i1 %271, label %272, label %323

272:                                              ; preds = %269
  store i32 0, i32* %10, align 4
  br label %273

273:                                              ; preds = %316, %272
  %274 = load i32, i32* %10, align 4
  %275 = icmp slt i32 %274, 4
  br i1 %275, label %276, label %319

276:                                              ; preds = %273
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [4 x [4 x %struct.TYPE_4__]], [4 x [4 x %struct.TYPE_4__]]* %14, i64 0, i64 %278
  %280 = load i32, i32* %10, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %279, i64 0, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 3
  store i64 0, i64* %283, align 8
  %284 = load i32, i32* %9, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [4 x [4 x %struct.TYPE_4__]], [4 x [4 x %struct.TYPE_4__]]* %14, i64 0, i64 %285
  %287 = load i32, i32* %10, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %286, i64 0, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 2
  store i64 0, i64* %290, align 16
  %291 = load i32, i32* %9, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [4 x [4 x %struct.TYPE_4__]], [4 x [4 x %struct.TYPE_4__]]* %14, i64 0, i64 %292
  %294 = load i32, i32* %10, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %293, i64 0, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 1
  store i64 0, i64* %297, align 8
  %298 = load i32, i32* %9, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %12, i64 0, i64 %299
  %301 = load i32, i32* %10, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [4 x i8], [4 x i8]* %300, i64 0, i64 %302
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i64
  %306 = getelementptr inbounds [8 x i16], [8 x i16]* %13, i64 0, i64 %305
  %307 = load i16, i16* %306, align 2
  %308 = trunc i16 %307 to i8
  %309 = load i32, i32* %9, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [4 x [4 x %struct.TYPE_4__]], [4 x [4 x %struct.TYPE_4__]]* %14, i64 0, i64 %310
  %312 = load i32, i32* %10, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %311, i64 0, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 0
  store i8 %308, i8* %315, align 16
  br label %316

316:                                              ; preds = %276
  %317 = load i32, i32* %10, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %10, align 4
  br label %273

319:                                              ; preds = %273
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %9, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %9, align 4
  br label %269

323:                                              ; preds = %269
  store i32 0, i32* %9, align 4
  br label %324

324:                                              ; preds = %353, %323
  %325 = load i32, i32* %9, align 4
  %326 = icmp slt i32 %325, 4
  br i1 %326, label %327, label %361

327:                                              ; preds = %324
  store i32 0, i32* %10, align 4
  br label %328

328:                                              ; preds = %349, %327
  %329 = load i32, i32* %10, align 4
  %330 = icmp slt i32 %329, 4
  br i1 %330, label %331, label %352

331:                                              ; preds = %328
  %332 = load i32, i32* %8, align 4
  %333 = load i32*, i32** %5, align 8
  %334 = load i32, i32* %333, align 4
  %335 = and i32 %334, %332
  store i32 %335, i32* %333, align 4
  %336 = load i32, i32* %9, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [4 x [4 x %struct.TYPE_4__]], [4 x [4 x %struct.TYPE_4__]]* %14, i64 0, i64 %337
  %339 = load i32, i32* %10, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %338, i64 0, i64 %340
  %342 = bitcast %struct.TYPE_4__* %341 to i32*
  %343 = load i32, i32* %342, align 16
  %344 = load i32*, i32** %5, align 8
  %345 = load i32, i32* %344, align 4
  %346 = or i32 %345, %343
  store i32 %346, i32* %344, align 4
  %347 = load i32*, i32** %5, align 8
  %348 = getelementptr inbounds i32, i32* %347, i32 1
  store i32* %348, i32** %5, align 8
  br label %349

349:                                              ; preds = %331
  %350 = load i32, i32* %10, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %10, align 4
  br label %328

352:                                              ; preds = %328
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* %9, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %9, align 4
  %356 = load i32, i32* %7, align 4
  %357 = sub nsw i32 %356, 4
  %358 = load i32*, i32** %5, align 8
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds i32, i32* %358, i64 %359
  store i32* %360, i32** %5, align 8
  br label %324

361:                                              ; preds = %324
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
