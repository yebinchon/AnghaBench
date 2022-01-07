; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_is_pubkey_valid_partial.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_is_pubkey_valid_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecc_curve = type { i32*, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ecc_point = type { i64, i32*, i32* }

@ECC_MAX_DIGITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecc_is_pubkey_valid_partial(%struct.ecc_curve* %0, %struct.ecc_point* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecc_curve*, align 8
  %5 = alloca %struct.ecc_point*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ecc_curve* %0, %struct.ecc_curve** %4, align 8
  store %struct.ecc_point* %1, %struct.ecc_point** %5, align 8
  %11 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %18 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %21 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %22 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ecc_curve*, %struct.ecc_curve** %4, align 8
  %25 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %23, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %142

35:                                               ; preds = %2
  %36 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %37 = call i64 @ecc_point_is_zero(%struct.ecc_point* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %142

42:                                               ; preds = %35
  %43 = load %struct.ecc_curve*, %struct.ecc_curve** %4, align 8
  %44 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %47 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %50 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @vli_cmp(i32* %45, i32* %48, i64 %51)
  %53 = icmp ne i64 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %142

57:                                               ; preds = %42
  %58 = load %struct.ecc_curve*, %struct.ecc_curve** %4, align 8
  %59 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %62 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %65 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @vli_cmp(i32* %60, i32* %63, i64 %66)
  %68 = icmp ne i64 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %142

72:                                               ; preds = %57
  %73 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %74 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.ecc_curve*, %struct.ecc_curve** %4, align 8
  %77 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %80 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @vli_mod_square_fast(i32* %14, i32* %75, i32* %78, i64 %81)
  %83 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %84 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.ecc_curve*, %struct.ecc_curve** %4, align 8
  %87 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %90 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @vli_mod_square_fast(i32* %17, i32* %85, i32* %88, i64 %91)
  %93 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %94 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.ecc_curve*, %struct.ecc_curve** %4, align 8
  %97 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %100 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @vli_mod_mult_fast(i32* %17, i32* %17, i32* %95, i32* %98, i64 %101)
  %103 = load %struct.ecc_curve*, %struct.ecc_curve** %4, align 8
  %104 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %107 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.ecc_curve*, %struct.ecc_curve** %4, align 8
  %110 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %113 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @vli_mod_mult_fast(i32* %20, i32* %105, i32* %108, i32* %111, i64 %114)
  %116 = load %struct.ecc_curve*, %struct.ecc_curve** %4, align 8
  %117 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.ecc_curve*, %struct.ecc_curve** %4, align 8
  %120 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %123 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @vli_mod_add(i32* %20, i32* %20, i32* %118, i32* %121, i64 %124)
  %126 = load %struct.ecc_curve*, %struct.ecc_curve** %4, align 8
  %127 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %130 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @vli_mod_add(i32* %20, i32* %20, i32* %17, i32* %128, i64 %131)
  %133 = load %struct.ecc_point*, %struct.ecc_point** %5, align 8
  %134 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @vli_cmp(i32* %14, i32* %20, i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %72
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %142

141:                                              ; preds = %72
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %142

142:                                              ; preds = %141, %138, %69, %54, %39, %32
  %143 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i64 @ecc_point_is_zero(%struct.ecc_point*) #2

declare dso_local i64 @vli_cmp(i32*, i32*, i64) #2

declare dso_local i32 @vli_mod_square_fast(i32*, i32*, i32*, i64) #2

declare dso_local i32 @vli_mod_mult_fast(i32*, i32*, i32*, i32*, i64) #2

declare dso_local i32 @vli_mod_add(i32*, i32*, i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
