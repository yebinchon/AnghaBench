; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/extr_poly1305_donna32.h_poly1305_blocks.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/extr_poly1305_donna32.h_poly1305_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64*, i64 }

@poly1305_block_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i64)* @poly1305_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poly1305_blocks(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i64 0, i64 16777216
  store i64 %33, i64* %7, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %9, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %10, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 3
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %11, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 4
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %9, align 8
  %60 = mul i64 %59, 5
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %10, align 8
  %62 = mul i64 %61, 5
  store i64 %62, i64* %14, align 8
  %63 = load i64, i64* %11, align 8
  %64 = mul i64 %63, 5
  store i64 %64, i64* %15, align 8
  %65 = load i64, i64* %12, align 8
  %66 = mul i64 %65, 5
  store i64 %66, i64* %16, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %17, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %18, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 2
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %19, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 3
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %20, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 4
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %21, align 8
  br label %92

92:                                               ; preds = %96, %3
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* @poly1305_block_size, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %96, label %281

96:                                               ; preds = %92
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = call i32 @LOAD32_LE(i8* %98)
  %100 = and i32 %99, 67108863
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %17, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %17, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 3
  %106 = call i32 @LOAD32_LE(i8* %105)
  %107 = ashr i32 %106, 2
  %108 = and i32 %107, 67108863
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %18, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %18, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 6
  %114 = call i32 @LOAD32_LE(i8* %113)
  %115 = ashr i32 %114, 4
  %116 = and i32 %115, 67108863
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %19, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %19, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 9
  %122 = call i32 @LOAD32_LE(i8* %121)
  %123 = ashr i32 %122, 6
  %124 = and i32 %123, 67108863
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %20, align 8
  %127 = add i64 %126, %125
  store i64 %127, i64* %20, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 12
  %130 = call i32 @LOAD32_LE(i8* %129)
  %131 = ashr i32 %130, 8
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %7, align 8
  %134 = or i64 %132, %133
  %135 = load i64, i64* %21, align 8
  %136 = add i64 %135, %134
  store i64 %136, i64* %21, align 8
  %137 = load i64, i64* %17, align 8
  %138 = load i64, i64* %8, align 8
  %139 = mul i64 %137, %138
  %140 = load i64, i64* %18, align 8
  %141 = load i64, i64* %16, align 8
  %142 = mul i64 %140, %141
  %143 = add i64 %139, %142
  %144 = load i64, i64* %19, align 8
  %145 = load i64, i64* %15, align 8
  %146 = mul i64 %144, %145
  %147 = add i64 %143, %146
  %148 = load i64, i64* %20, align 8
  %149 = load i64, i64* %14, align 8
  %150 = mul i64 %148, %149
  %151 = add i64 %147, %150
  %152 = load i64, i64* %21, align 8
  %153 = load i64, i64* %13, align 8
  %154 = mul i64 %152, %153
  %155 = add i64 %151, %154
  store i64 %155, i64* %22, align 8
  %156 = load i64, i64* %17, align 8
  %157 = load i64, i64* %9, align 8
  %158 = mul i64 %156, %157
  %159 = load i64, i64* %18, align 8
  %160 = load i64, i64* %8, align 8
  %161 = mul i64 %159, %160
  %162 = add i64 %158, %161
  %163 = load i64, i64* %19, align 8
  %164 = load i64, i64* %16, align 8
  %165 = mul i64 %163, %164
  %166 = add i64 %162, %165
  %167 = load i64, i64* %20, align 8
  %168 = load i64, i64* %15, align 8
  %169 = mul i64 %167, %168
  %170 = add i64 %166, %169
  %171 = load i64, i64* %21, align 8
  %172 = load i64, i64* %14, align 8
  %173 = mul i64 %171, %172
  %174 = add i64 %170, %173
  store i64 %174, i64* %23, align 8
  %175 = load i64, i64* %17, align 8
  %176 = load i64, i64* %10, align 8
  %177 = mul i64 %175, %176
  %178 = load i64, i64* %18, align 8
  %179 = load i64, i64* %9, align 8
  %180 = mul i64 %178, %179
  %181 = add i64 %177, %180
  %182 = load i64, i64* %19, align 8
  %183 = load i64, i64* %8, align 8
  %184 = mul i64 %182, %183
  %185 = add i64 %181, %184
  %186 = load i64, i64* %20, align 8
  %187 = load i64, i64* %16, align 8
  %188 = mul i64 %186, %187
  %189 = add i64 %185, %188
  %190 = load i64, i64* %21, align 8
  %191 = load i64, i64* %15, align 8
  %192 = mul i64 %190, %191
  %193 = add i64 %189, %192
  store i64 %193, i64* %24, align 8
  %194 = load i64, i64* %17, align 8
  %195 = load i64, i64* %11, align 8
  %196 = mul i64 %194, %195
  %197 = load i64, i64* %18, align 8
  %198 = load i64, i64* %10, align 8
  %199 = mul i64 %197, %198
  %200 = add i64 %196, %199
  %201 = load i64, i64* %19, align 8
  %202 = load i64, i64* %9, align 8
  %203 = mul i64 %201, %202
  %204 = add i64 %200, %203
  %205 = load i64, i64* %20, align 8
  %206 = load i64, i64* %8, align 8
  %207 = mul i64 %205, %206
  %208 = add i64 %204, %207
  %209 = load i64, i64* %21, align 8
  %210 = load i64, i64* %16, align 8
  %211 = mul i64 %209, %210
  %212 = add i64 %208, %211
  store i64 %212, i64* %25, align 8
  %213 = load i64, i64* %17, align 8
  %214 = load i64, i64* %12, align 8
  %215 = mul i64 %213, %214
  %216 = load i64, i64* %18, align 8
  %217 = load i64, i64* %11, align 8
  %218 = mul i64 %216, %217
  %219 = add i64 %215, %218
  %220 = load i64, i64* %19, align 8
  %221 = load i64, i64* %10, align 8
  %222 = mul i64 %220, %221
  %223 = add i64 %219, %222
  %224 = load i64, i64* %20, align 8
  %225 = load i64, i64* %9, align 8
  %226 = mul i64 %224, %225
  %227 = add i64 %223, %226
  %228 = load i64, i64* %21, align 8
  %229 = load i64, i64* %8, align 8
  %230 = mul i64 %228, %229
  %231 = add i64 %227, %230
  store i64 %231, i64* %26, align 8
  %232 = load i64, i64* %22, align 8
  %233 = lshr i64 %232, 26
  store i64 %233, i64* %27, align 8
  %234 = load i64, i64* %22, align 8
  %235 = and i64 %234, 67108863
  store i64 %235, i64* %17, align 8
  %236 = load i64, i64* %27, align 8
  %237 = load i64, i64* %23, align 8
  %238 = add i64 %237, %236
  store i64 %238, i64* %23, align 8
  %239 = load i64, i64* %23, align 8
  %240 = lshr i64 %239, 26
  store i64 %240, i64* %27, align 8
  %241 = load i64, i64* %23, align 8
  %242 = and i64 %241, 67108863
  store i64 %242, i64* %18, align 8
  %243 = load i64, i64* %27, align 8
  %244 = load i64, i64* %24, align 8
  %245 = add i64 %244, %243
  store i64 %245, i64* %24, align 8
  %246 = load i64, i64* %24, align 8
  %247 = lshr i64 %246, 26
  store i64 %247, i64* %27, align 8
  %248 = load i64, i64* %24, align 8
  %249 = and i64 %248, 67108863
  store i64 %249, i64* %19, align 8
  %250 = load i64, i64* %27, align 8
  %251 = load i64, i64* %25, align 8
  %252 = add i64 %251, %250
  store i64 %252, i64* %25, align 8
  %253 = load i64, i64* %25, align 8
  %254 = lshr i64 %253, 26
  store i64 %254, i64* %27, align 8
  %255 = load i64, i64* %25, align 8
  %256 = and i64 %255, 67108863
  store i64 %256, i64* %20, align 8
  %257 = load i64, i64* %27, align 8
  %258 = load i64, i64* %26, align 8
  %259 = add i64 %258, %257
  store i64 %259, i64* %26, align 8
  %260 = load i64, i64* %26, align 8
  %261 = lshr i64 %260, 26
  store i64 %261, i64* %27, align 8
  %262 = load i64, i64* %26, align 8
  %263 = and i64 %262, 67108863
  store i64 %263, i64* %21, align 8
  %264 = load i64, i64* %27, align 8
  %265 = mul i64 %264, 5
  %266 = load i64, i64* %17, align 8
  %267 = add i64 %266, %265
  store i64 %267, i64* %17, align 8
  %268 = load i64, i64* %17, align 8
  %269 = lshr i64 %268, 26
  store i64 %269, i64* %27, align 8
  %270 = load i64, i64* %17, align 8
  %271 = and i64 %270, 67108863
  store i64 %271, i64* %17, align 8
  %272 = load i64, i64* %27, align 8
  %273 = load i64, i64* %18, align 8
  %274 = add i64 %273, %272
  store i64 %274, i64* %18, align 8
  %275 = load i64, i64* @poly1305_block_size, align 8
  %276 = load i8*, i8** %5, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 %275
  store i8* %277, i8** %5, align 8
  %278 = load i64, i64* @poly1305_block_size, align 8
  %279 = load i64, i64* %6, align 8
  %280 = sub i64 %279, %278
  store i64 %280, i64* %6, align 8
  br label %92

281:                                              ; preds = %92
  %282 = load i64, i64* %17, align 8
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 1
  %285 = load i64*, i64** %284, align 8
  %286 = getelementptr inbounds i64, i64* %285, i64 0
  store i64 %282, i64* %286, align 8
  %287 = load i64, i64* %18, align 8
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 1
  %290 = load i64*, i64** %289, align 8
  %291 = getelementptr inbounds i64, i64* %290, i64 1
  store i64 %287, i64* %291, align 8
  %292 = load i64, i64* %19, align 8
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 1
  %295 = load i64*, i64** %294, align 8
  %296 = getelementptr inbounds i64, i64* %295, i64 2
  store i64 %292, i64* %296, align 8
  %297 = load i64, i64* %20, align 8
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 1
  %300 = load i64*, i64** %299, align 8
  %301 = getelementptr inbounds i64, i64* %300, i64 3
  store i64 %297, i64* %301, align 8
  %302 = load i64, i64* %21, align 8
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 1
  %305 = load i64*, i64** %304, align 8
  %306 = getelementptr inbounds i64, i64* %305, i64 4
  store i64 %302, i64* %306, align 8
  ret void
}

declare dso_local i32 @LOAD32_LE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
