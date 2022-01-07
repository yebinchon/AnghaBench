; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_field_10x26_impl.h_secp256k1_fe_get_b32.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_field_10x26_impl.h_secp256k1_fe_get_b32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_4__*)* @secp256k1_fe_get_b32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secp256k1_fe_get_b32(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 9
  %9 = load i32, i32* %8, align 4
  %10 = ashr i32 %9, 14
  %11 = and i32 %10, 255
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %12, i8* %14, align 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 9
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 6
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 %22, i8* %24, align 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 9
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 63
  %31 = shl i32 %30, 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 8
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 24
  %38 = and i32 %37, 3
  %39 = or i32 %31, %38
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  store i8 %40, i8* %42, align 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 8
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 3
  store i8 %50, i8* %52, align 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 255
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %3, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 4
  store i8 %60, i8* %62, align 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 8
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 255
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %3, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 5
  store i8 %69, i8* %71, align 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 7
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 18
  %78 = and i32 %77, 255
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 6
  store i8 %79, i8* %81, align 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 7
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 10
  %88 = and i32 %87, 255
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %3, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 7
  store i8 %89, i8* %91, align 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 7
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 2
  %98 = and i32 %97, 255
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** %3, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 8
  store i8 %99, i8* %101, align 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 7
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 3
  %108 = shl i32 %107, 6
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 6
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 20
  %115 = and i32 %114, 63
  %116 = or i32 %108, %115
  %117 = trunc i32 %116 to i8
  %118 = load i8*, i8** %3, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 9
  store i8 %117, i8* %119, align 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 6
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %124, 12
  %126 = and i32 %125, 255
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %3, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 10
  store i8 %127, i8* %129, align 1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 6
  %134 = load i32, i32* %133, align 4
  %135 = ashr i32 %134, 4
  %136 = and i32 %135, 255
  %137 = trunc i32 %136 to i8
  %138 = load i8*, i8** %3, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 11
  store i8 %137, i8* %139, align 1
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 6
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 15
  %146 = shl i32 %145, 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 5
  %151 = load i32, i32* %150, align 4
  %152 = ashr i32 %151, 22
  %153 = and i32 %152, 15
  %154 = or i32 %146, %153
  %155 = trunc i32 %154 to i8
  %156 = load i8*, i8** %3, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 12
  store i8 %155, i8* %157, align 1
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 5
  %162 = load i32, i32* %161, align 4
  %163 = ashr i32 %162, 14
  %164 = and i32 %163, 255
  %165 = trunc i32 %164 to i8
  %166 = load i8*, i8** %3, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 13
  store i8 %165, i8* %167, align 1
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 5
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 6
  %174 = and i32 %173, 255
  %175 = trunc i32 %174 to i8
  %176 = load i8*, i8** %3, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 14
  store i8 %175, i8* %177, align 1
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 5
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 63
  %184 = shl i32 %183, 2
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 4
  %189 = load i32, i32* %188, align 4
  %190 = ashr i32 %189, 24
  %191 = and i32 %190, 3
  %192 = or i32 %184, %191
  %193 = trunc i32 %192 to i8
  %194 = load i8*, i8** %3, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 15
  store i8 %193, i8* %195, align 1
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 4
  %200 = load i32, i32* %199, align 4
  %201 = ashr i32 %200, 16
  %202 = and i32 %201, 255
  %203 = trunc i32 %202 to i8
  %204 = load i8*, i8** %3, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 16
  store i8 %203, i8* %205, align 1
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 4
  %210 = load i32, i32* %209, align 4
  %211 = ashr i32 %210, 8
  %212 = and i32 %211, 255
  %213 = trunc i32 %212 to i8
  %214 = load i8*, i8** %3, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 17
  store i8 %213, i8* %215, align 1
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 4
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, 255
  %222 = trunc i32 %221 to i8
  %223 = load i8*, i8** %3, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 18
  store i8 %222, i8* %224, align 1
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 3
  %229 = load i32, i32* %228, align 4
  %230 = ashr i32 %229, 18
  %231 = and i32 %230, 255
  %232 = trunc i32 %231 to i8
  %233 = load i8*, i8** %3, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 19
  store i8 %232, i8* %234, align 1
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 3
  %239 = load i32, i32* %238, align 4
  %240 = ashr i32 %239, 10
  %241 = and i32 %240, 255
  %242 = trunc i32 %241 to i8
  %243 = load i8*, i8** %3, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 20
  store i8 %242, i8* %244, align 1
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 3
  %249 = load i32, i32* %248, align 4
  %250 = ashr i32 %249, 2
  %251 = and i32 %250, 255
  %252 = trunc i32 %251 to i8
  %253 = load i8*, i8** %3, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 21
  store i8 %252, i8* %254, align 1
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 3
  %259 = load i32, i32* %258, align 4
  %260 = and i32 %259, 3
  %261 = shl i32 %260, 6
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 2
  %266 = load i32, i32* %265, align 4
  %267 = ashr i32 %266, 20
  %268 = and i32 %267, 63
  %269 = or i32 %261, %268
  %270 = trunc i32 %269 to i8
  %271 = load i8*, i8** %3, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 22
  store i8 %270, i8* %272, align 1
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 2
  %277 = load i32, i32* %276, align 4
  %278 = ashr i32 %277, 12
  %279 = and i32 %278, 255
  %280 = trunc i32 %279 to i8
  %281 = load i8*, i8** %3, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 23
  store i8 %280, i8* %282, align 1
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 2
  %287 = load i32, i32* %286, align 4
  %288 = ashr i32 %287, 4
  %289 = and i32 %288, 255
  %290 = trunc i32 %289 to i8
  %291 = load i8*, i8** %3, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 24
  store i8 %290, i8* %292, align 1
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 2
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, 15
  %299 = shl i32 %298, 4
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 0
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 1
  %304 = load i32, i32* %303, align 4
  %305 = ashr i32 %304, 22
  %306 = and i32 %305, 15
  %307 = or i32 %299, %306
  %308 = trunc i32 %307 to i8
  %309 = load i8*, i8** %3, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 25
  store i8 %308, i8* %310, align 1
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 1
  %315 = load i32, i32* %314, align 4
  %316 = ashr i32 %315, 14
  %317 = and i32 %316, 255
  %318 = trunc i32 %317 to i8
  %319 = load i8*, i8** %3, align 8
  %320 = getelementptr inbounds i8, i8* %319, i64 26
  store i8 %318, i8* %320, align 1
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 1
  %325 = load i32, i32* %324, align 4
  %326 = ashr i32 %325, 6
  %327 = and i32 %326, 255
  %328 = trunc i32 %327 to i8
  %329 = load i8*, i8** %3, align 8
  %330 = getelementptr inbounds i8, i8* %329, i64 27
  store i8 %328, i8* %330, align 1
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 0
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 1
  %335 = load i32, i32* %334, align 4
  %336 = and i32 %335, 63
  %337 = shl i32 %336, 2
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 0
  %342 = load i32, i32* %341, align 4
  %343 = ashr i32 %342, 24
  %344 = and i32 %343, 3
  %345 = or i32 %337, %344
  %346 = trunc i32 %345 to i8
  %347 = load i8*, i8** %3, align 8
  %348 = getelementptr inbounds i8, i8* %347, i64 28
  store i8 %346, i8* %348, align 1
  %349 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 0
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 0
  %353 = load i32, i32* %352, align 4
  %354 = ashr i32 %353, 16
  %355 = and i32 %354, 255
  %356 = trunc i32 %355 to i8
  %357 = load i8*, i8** %3, align 8
  %358 = getelementptr inbounds i8, i8* %357, i64 29
  store i8 %356, i8* %358, align 1
  %359 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 0
  %363 = load i32, i32* %362, align 4
  %364 = ashr i32 %363, 8
  %365 = and i32 %364, 255
  %366 = trunc i32 %365 to i8
  %367 = load i8*, i8** %3, align 8
  %368 = getelementptr inbounds i8, i8* %367, i64 30
  store i8 %366, i8* %368, align 1
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 0
  %371 = load i32*, i32** %370, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 0
  %373 = load i32, i32* %372, align 4
  %374 = and i32 %373, 255
  %375 = trunc i32 %374 to i8
  %376 = load i8*, i8** %3, align 8
  %377 = getelementptr inbounds i8, i8* %376, i64 31
  store i8 %375, i8* %377, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
