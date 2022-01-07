; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_point_mult_shamir.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_point_mult_shamir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecc_point = type { i32*, i32* }
%struct.ecc_curve = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ECC_MAX_DIGITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecc_point_mult_shamir(%struct.ecc_point* %0, i32* %1, %struct.ecc_point* %2, i32* %3, %struct.ecc_point* %4, %struct.ecc_curve* %5) #0 {
  %7 = alloca %struct.ecc_point*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ecc_point*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ecc_point*, align 8
  %12 = alloca %struct.ecc_curve*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ecc_point, align 8
  %21 = alloca [4 x %struct.ecc_point*], align 16
  %22 = alloca %struct.ecc_point*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.ecc_point* %0, %struct.ecc_point** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.ecc_point* %2, %struct.ecc_point** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.ecc_point* %4, %struct.ecc_point** %11, align 8
  store %struct.ecc_curve* %5, %struct.ecc_curve** %12, align 8
  %29 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %13, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  %33 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %34 = zext i32 %33 to i64
  %35 = mul nuw i64 2, %34
  %36 = alloca i32, i64 %35, align 16
  store i64 %34, i64* %15, align 8
  %37 = load %struct.ecc_point*, %struct.ecc_point** %7, align 8
  %38 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %16, align 8
  %40 = load %struct.ecc_point*, %struct.ecc_point** %7, align 8
  %41 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %17, align 8
  %43 = load %struct.ecc_curve*, %struct.ecc_curve** %12, align 8
  %44 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %18, align 4
  %47 = mul nsw i64 0, %34
  %48 = getelementptr inbounds i32, i32* %36, i64 %47
  %49 = mul nsw i64 1, %34
  %50 = getelementptr inbounds i32, i32* %36, i64 %49
  %51 = load i32, i32* %18, align 4
  %52 = call { i32*, i32* } @ECC_POINT_INIT(i32* %48, i32* %50, i32 %51)
  %53 = bitcast %struct.ecc_point* %20 to { i32*, i32* }*
  %54 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %53, i32 0, i32 0
  %55 = extractvalue { i32*, i32* } %52, 0
  store i32* %55, i32** %54, align 8
  %56 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %53, i32 0, i32 1
  %57 = extractvalue { i32*, i32* } %52, 1
  store i32* %57, i32** %56, align 8
  %58 = load %struct.ecc_point*, %struct.ecc_point** %9, align 8
  %59 = load %struct.ecc_point*, %struct.ecc_point** %11, align 8
  %60 = load %struct.ecc_curve*, %struct.ecc_curve** %12, align 8
  %61 = call i32 @ecc_point_add(%struct.ecc_point* %20, %struct.ecc_point* %58, %struct.ecc_point* %59, %struct.ecc_curve* %60)
  %62 = getelementptr inbounds [4 x %struct.ecc_point*], [4 x %struct.ecc_point*]* %21, i64 0, i64 0
  store %struct.ecc_point* null, %struct.ecc_point** %62, align 16
  %63 = load %struct.ecc_point*, %struct.ecc_point** %9, align 8
  %64 = getelementptr inbounds [4 x %struct.ecc_point*], [4 x %struct.ecc_point*]* %21, i64 0, i64 1
  store %struct.ecc_point* %63, %struct.ecc_point** %64, align 8
  %65 = load %struct.ecc_point*, %struct.ecc_point** %11, align 8
  %66 = getelementptr inbounds [4 x %struct.ecc_point*], [4 x %struct.ecc_point*]* %21, i64 0, i64 2
  store %struct.ecc_point* %65, %struct.ecc_point** %66, align 16
  %67 = getelementptr inbounds [4 x %struct.ecc_point*], [4 x %struct.ecc_point*]* %21, i64 0, i64 3
  store %struct.ecc_point* %20, %struct.ecc_point** %67, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %18, align 4
  %70 = call i32 @vli_num_bits(i32* %68, i32 %69)
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %18, align 4
  %73 = call i32 @vli_num_bits(i32* %71, i32 %72)
  %74 = call i32 @max(i32 %70, i32 %73)
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %19, align 4
  %76 = sub i32 %75, 1
  store i32 %76, i32* %24, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %24, align 4
  %79 = call i32 @vli_test_bit(i32* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %24, align 4
  %86 = call i32 @vli_test_bit(i32* %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = shl i32 %90, 1
  %92 = or i32 %83, %91
  store i32 %92, i32* %23, align 4
  %93 = load i32, i32* %23, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [4 x %struct.ecc_point*], [4 x %struct.ecc_point*]* %21, i64 0, i64 %94
  %96 = load %struct.ecc_point*, %struct.ecc_point** %95, align 8
  store %struct.ecc_point* %96, %struct.ecc_point** %22, align 8
  %97 = load i32*, i32** %16, align 8
  %98 = load %struct.ecc_point*, %struct.ecc_point** %22, align 8
  %99 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @vli_set(i32* %97, i32* %100, i32 %101)
  %103 = load i32*, i32** %17, align 8
  %104 = load %struct.ecc_point*, %struct.ecc_point** %22, align 8
  %105 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %18, align 4
  %108 = call i32 @vli_set(i32* %103, i32* %106, i32 %107)
  %109 = getelementptr inbounds i32, i32* %32, i64 1
  %110 = load i32, i32* %18, align 4
  %111 = sub i32 %110, 1
  %112 = call i32 @vli_clear(i32* %109, i32 %111)
  %113 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 1, i32* %113, align 16
  %114 = load i32, i32* %24, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %24, align 4
  br label %116

116:                                              ; preds = %195, %6
  %117 = load i32, i32* %24, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %198

119:                                              ; preds = %116
  %120 = load i32*, i32** %16, align 8
  %121 = load i32*, i32** %17, align 8
  %122 = load %struct.ecc_curve*, %struct.ecc_curve** %12, align 8
  %123 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %18, align 4
  %126 = call i32 @ecc_point_double_jacobian(i32* %120, i32* %121, i32* %32, i32 %124, i32 %125)
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %24, align 4
  %129 = call i32 @vli_test_bit(i32* %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* %24, align 4
  %136 = call i32 @vli_test_bit(i32* %134, i32 %135)
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = shl i32 %140, 1
  %142 = or i32 %133, %141
  store i32 %142, i32* %23, align 4
  %143 = load i32, i32* %23, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [4 x %struct.ecc_point*], [4 x %struct.ecc_point*]* %21, i64 0, i64 %144
  %146 = load %struct.ecc_point*, %struct.ecc_point** %145, align 8
  store %struct.ecc_point* %146, %struct.ecc_point** %22, align 8
  %147 = load %struct.ecc_point*, %struct.ecc_point** %22, align 8
  %148 = icmp ne %struct.ecc_point* %147, null
  br i1 %148, label %149, label %194

149:                                              ; preds = %119
  %150 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %151 = zext i32 %150 to i64
  %152 = call i8* @llvm.stacksave()
  store i8* %152, i8** %25, align 8
  %153 = alloca i32, i64 %151, align 16
  store i64 %151, i64* %26, align 8
  %154 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %155 = zext i32 %154 to i64
  %156 = alloca i32, i64 %155, align 16
  store i64 %155, i64* %27, align 8
  %157 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %158 = zext i32 %157 to i64
  %159 = alloca i32, i64 %158, align 16
  store i64 %158, i64* %28, align 8
  %160 = load %struct.ecc_point*, %struct.ecc_point** %22, align 8
  %161 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %18, align 4
  %164 = call i32 @vli_set(i32* %153, i32* %162, i32 %163)
  %165 = load %struct.ecc_point*, %struct.ecc_point** %22, align 8
  %166 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %18, align 4
  %169 = call i32 @vli_set(i32* %156, i32* %167, i32 %168)
  %170 = load %struct.ecc_curve*, %struct.ecc_curve** %12, align 8
  %171 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %18, align 4
  %174 = call i32 @apply_z(i32* %153, i32* %156, i32* %32, i32 %172, i32 %173)
  %175 = load i32*, i32** %16, align 8
  %176 = load %struct.ecc_curve*, %struct.ecc_curve** %12, align 8
  %177 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %18, align 4
  %180 = call i32 @vli_mod_sub(i32* %159, i32* %175, i32* %153, i32 %178, i32 %179)
  %181 = load i32*, i32** %16, align 8
  %182 = load i32*, i32** %17, align 8
  %183 = load %struct.ecc_curve*, %struct.ecc_curve** %12, align 8
  %184 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %18, align 4
  %187 = call i32 @xycz_add(i32* %153, i32* %156, i32* %181, i32* %182, i32 %185, i32 %186)
  %188 = load %struct.ecc_curve*, %struct.ecc_curve** %12, align 8
  %189 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %18, align 4
  %192 = call i32 @vli_mod_mult_fast(i32* %32, i32* %32, i32* %159, i32 %190, i32 %191)
  %193 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %193)
  br label %194

194:                                              ; preds = %149, %119
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %24, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %24, align 4
  br label %116

198:                                              ; preds = %116
  %199 = load %struct.ecc_curve*, %struct.ecc_curve** %12, align 8
  %200 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %18, align 4
  %203 = call i32 @vli_mod_inv(i32* %32, i32* %32, i32 %201, i32 %202)
  %204 = load i32*, i32** %16, align 8
  %205 = load i32*, i32** %17, align 8
  %206 = load %struct.ecc_curve*, %struct.ecc_curve** %12, align 8
  %207 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %18, align 4
  %210 = call i32 @apply_z(i32* %204, i32* %205, i32* %32, i32 %208, i32 %209)
  %211 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %211)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local { i32*, i32* } @ECC_POINT_INIT(i32*, i32*, i32) #2

declare dso_local i32 @ecc_point_add(%struct.ecc_point*, %struct.ecc_point*, %struct.ecc_point*, %struct.ecc_curve*) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i32 @vli_num_bits(i32*, i32) #2

declare dso_local i32 @vli_test_bit(i32*, i32) #2

declare dso_local i32 @vli_set(i32*, i32*, i32) #2

declare dso_local i32 @vli_clear(i32*, i32) #2

declare dso_local i32 @ecc_point_double_jacobian(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @apply_z(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @vli_mod_sub(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @xycz_add(i32*, i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @vli_mod_mult_fast(i32*, i32*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @vli_mod_inv(i32*, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
