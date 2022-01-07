; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_point_mult.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_point_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecc_point = type { i32*, i32*, i32 }
%struct.ecc_curve = type { i32, i32* }

@ECC_MAX_DIGITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecc_point*, %struct.ecc_point*, i32*, i32*, %struct.ecc_curve*, i32)* @ecc_point_mult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecc_point_mult(%struct.ecc_point* %0, %struct.ecc_point* %1, i32* %2, i32* %3, %struct.ecc_curve* %4, i32 %5) #0 {
  %7 = alloca %struct.ecc_point*, align 8
  %8 = alloca %struct.ecc_point*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ecc_curve*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ecc_point* %0, %struct.ecc_point** %7, align 8
  store %struct.ecc_point* %1, %struct.ecc_point** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.ecc_curve* %4, %struct.ecc_curve** %11, align 8
  store i32 %5, i32* %12, align 4
  %23 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %13, align 8
  %26 = mul nuw i64 2, %24
  %27 = alloca i32, i64 %26, align 16
  store i64 %24, i64* %14, align 8
  %28 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %29 = zext i32 %28 to i64
  %30 = mul nuw i64 2, %29
  %31 = alloca i32, i64 %30, align 16
  store i64 %29, i64* %15, align 8
  %32 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %16, align 8
  %35 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %36 = zext i32 %35 to i64
  %37 = mul nuw i64 2, %36
  %38 = alloca i32, i64 %37, align 16
  store i64 %36, i64* %17, align 8
  %39 = load %struct.ecc_curve*, %struct.ecc_curve** %11, align 8
  %40 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %18, align 8
  %42 = mul nsw i64 0, %36
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32*, i32** %9, align 8
  %45 = load %struct.ecc_curve*, %struct.ecc_curve** %11, align 8
  %46 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @vli_add(i32* %43, i32* %44, i32 %47, i32 %48)
  store i32 %49, i32* %22, align 4
  %50 = mul nsw i64 1, %36
  %51 = getelementptr inbounds i32, i32* %38, i64 %50
  %52 = mul nsw i64 0, %36
  %53 = getelementptr inbounds i32, i32* %38, i64 %52
  %54 = load %struct.ecc_curve*, %struct.ecc_curve** %11, align 8
  %55 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @vli_add(i32* %51, i32* %53, i32 %56, i32 %57)
  %59 = load i32, i32* %22, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %63, %36
  %65 = getelementptr inbounds i32, i32* %38, i64 %64
  store i32* %65, i32** %9, align 8
  %66 = load i32, i32* %12, align 4
  %67 = zext i32 %66 to i64
  %68 = mul i64 4, %67
  %69 = mul i64 %68, 8
  %70 = add i64 %69, 1
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %21, align 4
  %72 = mul nsw i64 1, %24
  %73 = getelementptr inbounds i32, i32* %27, i64 %72
  %74 = load %struct.ecc_point*, %struct.ecc_point** %8, align 8
  %75 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @vli_set(i32* %73, i32* %76, i32 %77)
  %79 = mul nsw i64 1, %29
  %80 = getelementptr inbounds i32, i32* %31, i64 %79
  %81 = load %struct.ecc_point*, %struct.ecc_point** %8, align 8
  %82 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @vli_set(i32* %80, i32* %83, i32 %84)
  %86 = mul nsw i64 1, %24
  %87 = getelementptr inbounds i32, i32* %27, i64 %86
  %88 = mul nsw i64 1, %29
  %89 = getelementptr inbounds i32, i32* %31, i64 %88
  %90 = mul nsw i64 0, %24
  %91 = getelementptr inbounds i32, i32* %27, i64 %90
  %92 = mul nsw i64 0, %29
  %93 = getelementptr inbounds i32, i32* %31, i64 %92
  %94 = load i32*, i32** %10, align 8
  %95 = load i32*, i32** %18, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @xycz_initial_double(i32* %87, i32* %89, i32* %91, i32* %93, i32* %94, i32* %95, i32 %96)
  %98 = load i32, i32* %21, align 4
  %99 = sub nsw i32 %98, 2
  store i32 %99, i32* %19, align 4
  br label %100

100:                                              ; preds = %152, %6
  %101 = load i32, i32* %19, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %155

103:                                              ; preds = %100
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %19, align 4
  %106 = call i32 @vli_test_bit(i32* %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %20, align 4
  %110 = load i32, i32* %20, align 4
  %111 = sub nsw i32 1, %110
  %112 = sext i32 %111 to i64
  %113 = mul nsw i64 %112, %24
  %114 = getelementptr inbounds i32, i32* %27, i64 %113
  %115 = load i32, i32* %20, align 4
  %116 = sub nsw i32 1, %115
  %117 = sext i32 %116 to i64
  %118 = mul nsw i64 %117, %29
  %119 = getelementptr inbounds i32, i32* %31, i64 %118
  %120 = load i32, i32* %20, align 4
  %121 = sext i32 %120 to i64
  %122 = mul nsw i64 %121, %24
  %123 = getelementptr inbounds i32, i32* %27, i64 %122
  %124 = load i32, i32* %20, align 4
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %125, %29
  %127 = getelementptr inbounds i32, i32* %31, i64 %126
  %128 = load i32*, i32** %18, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @xycz_add_c(i32* %114, i32* %119, i32* %123, i32* %127, i32* %128, i32 %129)
  %131 = load i32, i32* %20, align 4
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %132, %24
  %134 = getelementptr inbounds i32, i32* %27, i64 %133
  %135 = load i32, i32* %20, align 4
  %136 = sext i32 %135 to i64
  %137 = mul nsw i64 %136, %29
  %138 = getelementptr inbounds i32, i32* %31, i64 %137
  %139 = load i32, i32* %20, align 4
  %140 = sub nsw i32 1, %139
  %141 = sext i32 %140 to i64
  %142 = mul nsw i64 %141, %24
  %143 = getelementptr inbounds i32, i32* %27, i64 %142
  %144 = load i32, i32* %20, align 4
  %145 = sub nsw i32 1, %144
  %146 = sext i32 %145 to i64
  %147 = mul nsw i64 %146, %29
  %148 = getelementptr inbounds i32, i32* %31, i64 %147
  %149 = load i32*, i32** %18, align 8
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @xycz_add(i32* %134, i32* %138, i32* %143, i32* %148, i32* %149, i32 %150)
  br label %152

152:                                              ; preds = %103
  %153 = load i32, i32* %19, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %19, align 4
  br label %100

155:                                              ; preds = %100
  %156 = load i32*, i32** %9, align 8
  %157 = call i32 @vli_test_bit(i32* %156, i32 0)
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %20, align 4
  %161 = load i32, i32* %20, align 4
  %162 = sub nsw i32 1, %161
  %163 = sext i32 %162 to i64
  %164 = mul nsw i64 %163, %24
  %165 = getelementptr inbounds i32, i32* %27, i64 %164
  %166 = load i32, i32* %20, align 4
  %167 = sub nsw i32 1, %166
  %168 = sext i32 %167 to i64
  %169 = mul nsw i64 %168, %29
  %170 = getelementptr inbounds i32, i32* %31, i64 %169
  %171 = load i32, i32* %20, align 4
  %172 = sext i32 %171 to i64
  %173 = mul nsw i64 %172, %24
  %174 = getelementptr inbounds i32, i32* %27, i64 %173
  %175 = load i32, i32* %20, align 4
  %176 = sext i32 %175 to i64
  %177 = mul nsw i64 %176, %29
  %178 = getelementptr inbounds i32, i32* %31, i64 %177
  %179 = load i32*, i32** %18, align 8
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @xycz_add_c(i32* %165, i32* %170, i32* %174, i32* %178, i32* %179, i32 %180)
  %182 = mul nsw i64 1, %24
  %183 = getelementptr inbounds i32, i32* %27, i64 %182
  %184 = mul nsw i64 0, %24
  %185 = getelementptr inbounds i32, i32* %27, i64 %184
  %186 = load i32*, i32** %18, align 8
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @vli_mod_sub(i32* %34, i32* %183, i32* %185, i32* %186, i32 %187)
  %189 = load i32, i32* %20, align 4
  %190 = sub nsw i32 1, %189
  %191 = sext i32 %190 to i64
  %192 = mul nsw i64 %191, %29
  %193 = getelementptr inbounds i32, i32* %31, i64 %192
  %194 = load i32*, i32** %18, align 8
  %195 = load i32, i32* %12, align 4
  %196 = call i32 @vli_mod_mult_fast(i32* %34, i32* %34, i32* %193, i32* %194, i32 %195)
  %197 = load %struct.ecc_point*, %struct.ecc_point** %8, align 8
  %198 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load i32*, i32** %18, align 8
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @vli_mod_mult_fast(i32* %34, i32* %34, i32* %199, i32* %200, i32 %201)
  %203 = load i32*, i32** %18, align 8
  %204 = load %struct.ecc_point*, %struct.ecc_point** %8, align 8
  %205 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @vli_mod_inv(i32* %34, i32* %34, i32* %203, i32 %206)
  %208 = load %struct.ecc_point*, %struct.ecc_point** %8, align 8
  %209 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i32*, i32** %18, align 8
  %212 = load i32, i32* %12, align 4
  %213 = call i32 @vli_mod_mult_fast(i32* %34, i32* %34, i32* %210, i32* %211, i32 %212)
  %214 = load i32, i32* %20, align 4
  %215 = sub nsw i32 1, %214
  %216 = sext i32 %215 to i64
  %217 = mul nsw i64 %216, %24
  %218 = getelementptr inbounds i32, i32* %27, i64 %217
  %219 = load i32*, i32** %18, align 8
  %220 = load i32, i32* %12, align 4
  %221 = call i32 @vli_mod_mult_fast(i32* %34, i32* %34, i32* %218, i32* %219, i32 %220)
  %222 = load i32, i32* %20, align 4
  %223 = sext i32 %222 to i64
  %224 = mul nsw i64 %223, %24
  %225 = getelementptr inbounds i32, i32* %27, i64 %224
  %226 = load i32, i32* %20, align 4
  %227 = sext i32 %226 to i64
  %228 = mul nsw i64 %227, %29
  %229 = getelementptr inbounds i32, i32* %31, i64 %228
  %230 = load i32, i32* %20, align 4
  %231 = sub nsw i32 1, %230
  %232 = sext i32 %231 to i64
  %233 = mul nsw i64 %232, %24
  %234 = getelementptr inbounds i32, i32* %27, i64 %233
  %235 = load i32, i32* %20, align 4
  %236 = sub nsw i32 1, %235
  %237 = sext i32 %236 to i64
  %238 = mul nsw i64 %237, %29
  %239 = getelementptr inbounds i32, i32* %31, i64 %238
  %240 = load i32*, i32** %18, align 8
  %241 = load i32, i32* %12, align 4
  %242 = call i32 @xycz_add(i32* %225, i32* %229, i32* %234, i32* %239, i32* %240, i32 %241)
  %243 = mul nsw i64 0, %24
  %244 = getelementptr inbounds i32, i32* %27, i64 %243
  %245 = mul nsw i64 0, %29
  %246 = getelementptr inbounds i32, i32* %31, i64 %245
  %247 = load i32*, i32** %18, align 8
  %248 = load i32, i32* %12, align 4
  %249 = call i32 @apply_z(i32* %244, i32* %246, i32* %34, i32* %247, i32 %248)
  %250 = load %struct.ecc_point*, %struct.ecc_point** %7, align 8
  %251 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = mul nsw i64 0, %24
  %254 = getelementptr inbounds i32, i32* %27, i64 %253
  %255 = load i32, i32* %12, align 4
  %256 = call i32 @vli_set(i32* %252, i32* %254, i32 %255)
  %257 = load %struct.ecc_point*, %struct.ecc_point** %7, align 8
  %258 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = mul nsw i64 0, %29
  %261 = getelementptr inbounds i32, i32* %31, i64 %260
  %262 = load i32, i32* %12, align 4
  %263 = call i32 @vli_set(i32* %259, i32* %261, i32 %262)
  %264 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %264)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vli_add(i32*, i32*, i32, i32) #2

declare dso_local i32 @vli_set(i32*, i32*, i32) #2

declare dso_local i32 @xycz_initial_double(i32*, i32*, i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @vli_test_bit(i32*, i32) #2

declare dso_local i32 @xycz_add_c(i32*, i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @xycz_add(i32*, i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @vli_mod_sub(i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @vli_mod_mult_fast(i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @vli_mod_inv(i32*, i32*, i32*, i32) #2

declare dso_local i32 @apply_z(i32*, i32*, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
