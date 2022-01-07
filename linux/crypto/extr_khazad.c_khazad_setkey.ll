; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_khazad.c_khazad_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_khazad.c_khazad_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.khazad_ctx = type { i32*, i32* }

@T7 = common dso_local global i32* null, align 8
@KHAZAD_ROUNDS = common dso_local global i32 0, align 4
@T0 = common dso_local global i32* null, align 8
@T1 = common dso_local global i32* null, align 8
@T2 = common dso_local global i32* null, align 8
@T3 = common dso_local global i32* null, align 8
@T4 = common dso_local global i32* null, align 8
@T5 = common dso_local global i32* null, align 8
@T6 = common dso_local global i32* null, align 8
@c = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @khazad_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @khazad_setkey(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.khazad_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %14 = call %struct.khazad_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %13)
  store %struct.khazad_ctx* %14, %struct.khazad_ctx** %7, align 8
  %15 = load i32*, i32** %5, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** @T7, align 8
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @be32_to_cpu(i32 %19)
  %21 = shl i32 %20, 32
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  %26 = or i32 %21, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  %31 = shl i32 %30, 32
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be32_to_cpu(i32 %34)
  %36 = or i32 %31, %35
  store i32 %36, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %125, %3
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @KHAZAD_ROUNDS, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %128

41:                                               ; preds = %37
  %42 = load i32*, i32** @T0, align 8
  %43 = load i32, i32* %12, align 4
  %44 = ashr i32 %43, 56
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** @T1, align 8
  %49 = load i32, i32* %12, align 4
  %50 = ashr i32 %49, 48
  %51 = and i32 %50, 255
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = xor i32 %47, %54
  %56 = load i32*, i32** @T2, align 8
  %57 = load i32, i32* %12, align 4
  %58 = ashr i32 %57, 40
  %59 = and i32 %58, 255
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %55, %62
  %64 = load i32*, i32** @T3, align 8
  %65 = load i32, i32* %12, align 4
  %66 = ashr i32 %65, 32
  %67 = and i32 %66, 255
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %63, %70
  %72 = load i32*, i32** @T4, align 8
  %73 = load i32, i32* %12, align 4
  %74 = ashr i32 %73, 24
  %75 = and i32 %74, 255
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = xor i32 %71, %78
  %80 = load i32*, i32** @T5, align 8
  %81 = load i32, i32* %12, align 4
  %82 = ashr i32 %81, 16
  %83 = and i32 %82, 255
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %79, %86
  %88 = load i32*, i32** @T6, align 8
  %89 = load i32, i32* %12, align 4
  %90 = ashr i32 %89, 8
  %91 = and i32 %90, 255
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = xor i32 %87, %94
  %96 = load i32*, i32** @T7, align 8
  %97 = load i32, i32* %12, align 4
  %98 = and i32 %97, 255
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = xor i32 %95, %101
  %103 = load i32*, i32** @c, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = xor i32 %102, %107
  %109 = load i32, i32* %11, align 4
  %110 = xor i32 %108, %109
  %111 = load %struct.khazad_ctx*, %struct.khazad_ctx** %7, align 8
  %112 = getelementptr inbounds %struct.khazad_ctx, %struct.khazad_ctx* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %110, i32* %116, align 4
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %11, align 4
  %118 = load %struct.khazad_ctx*, %struct.khazad_ctx** %7, align 8
  %119 = getelementptr inbounds %struct.khazad_ctx, %struct.khazad_ctx* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %41
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %37

128:                                              ; preds = %37
  %129 = load %struct.khazad_ctx*, %struct.khazad_ctx** %7, align 8
  %130 = getelementptr inbounds %struct.khazad_ctx, %struct.khazad_ctx* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* @KHAZAD_ROUNDS, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.khazad_ctx*, %struct.khazad_ctx** %7, align 8
  %137 = getelementptr inbounds %struct.khazad_ctx, %struct.khazad_ctx* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  store i32 %135, i32* %139, align 4
  store i32 1, i32* %9, align 4
  br label %140

140:                                              ; preds = %261, %128
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @KHAZAD_ROUNDS, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %264

144:                                              ; preds = %140
  %145 = load %struct.khazad_ctx*, %struct.khazad_ctx** %7, align 8
  %146 = getelementptr inbounds %struct.khazad_ctx, %struct.khazad_ctx* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* @KHAZAD_ROUNDS, align 4
  %149 = load i32, i32* %9, align 4
  %150 = sub nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %147, i64 %151
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %12, align 4
  %154 = load i32*, i32** @T0, align 8
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %12, align 4
  %157 = ashr i32 %156, 56
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 255
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %154, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** @T1, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %12, align 4
  %168 = ashr i32 %167, 48
  %169 = and i32 %168, 255
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %166, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, 255
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %165, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = xor i32 %164, %176
  %178 = load i32*, i32** @T2, align 8
  %179 = load i32*, i32** %10, align 8
  %180 = load i32, i32* %12, align 4
  %181 = ashr i32 %180, 40
  %182 = and i32 %181, 255
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %179, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, 255
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %178, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = xor i32 %177, %189
  %191 = load i32*, i32** @T3, align 8
  %192 = load i32*, i32** %10, align 8
  %193 = load i32, i32* %12, align 4
  %194 = ashr i32 %193, 32
  %195 = and i32 %194, 255
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %192, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, 255
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %191, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = xor i32 %190, %202
  %204 = load i32*, i32** @T4, align 8
  %205 = load i32*, i32** %10, align 8
  %206 = load i32, i32* %12, align 4
  %207 = ashr i32 %206, 24
  %208 = and i32 %207, 255
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %205, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, 255
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %204, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = xor i32 %203, %215
  %217 = load i32*, i32** @T5, align 8
  %218 = load i32*, i32** %10, align 8
  %219 = load i32, i32* %12, align 4
  %220 = ashr i32 %219, 16
  %221 = and i32 %220, 255
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %218, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = and i32 %224, 255
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %217, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = xor i32 %216, %228
  %230 = load i32*, i32** @T6, align 8
  %231 = load i32*, i32** %10, align 8
  %232 = load i32, i32* %12, align 4
  %233 = ashr i32 %232, 8
  %234 = and i32 %233, 255
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %231, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = and i32 %237, 255
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %230, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = xor i32 %229, %241
  %243 = load i32*, i32** @T7, align 8
  %244 = load i32*, i32** %10, align 8
  %245 = load i32, i32* %12, align 4
  %246 = and i32 %245, 255
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, 255
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %243, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = xor i32 %242, %253
  %255 = load %struct.khazad_ctx*, %struct.khazad_ctx** %7, align 8
  %256 = getelementptr inbounds %struct.khazad_ctx, %struct.khazad_ctx* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  store i32 %254, i32* %260, align 4
  br label %261

261:                                              ; preds = %144
  %262 = load i32, i32* %9, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %9, align 4
  br label %140

264:                                              ; preds = %140
  %265 = load %struct.khazad_ctx*, %struct.khazad_ctx** %7, align 8
  %266 = getelementptr inbounds %struct.khazad_ctx, %struct.khazad_ctx* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.khazad_ctx*, %struct.khazad_ctx** %7, align 8
  %271 = getelementptr inbounds %struct.khazad_ctx, %struct.khazad_ctx* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* @KHAZAD_ROUNDS, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 %269, i32* %275, align 4
  ret i32 0
}

declare dso_local %struct.khazad_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
