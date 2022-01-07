; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecc.c_crypto_ecdh_shared_secret.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecc.c_crypto_ecdh_shared_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecc_point = type { i32*, i32* }
%struct.ecc_curve = type { i32 }

@ECC_MAX_DIGITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ECC_DIGITS_TO_BYTES_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_ecdh_shared_secret(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ecc_point*, align 8
  %13 = alloca %struct.ecc_point*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ecc_curve*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %16, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.ecc_curve* @ecc_get_curve(i32 %26)
  store %struct.ecc_curve* %27, %struct.ecc_curve** %18, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %5
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.ecc_curve*, %struct.ecc_curve** %18, align 8
  %35 = icmp ne %struct.ecc_curve* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ARRAY_SIZE(i32* %22)
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @ARRAY_SIZE(i32* %25)
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %36, %33, %30, %5
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %117

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @ECC_DIGITS_TO_BYTES_SHIFT, align 4
  %50 = shl i32 %48, %49
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @get_random_bytes(i32* %25, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = call %struct.ecc_point* @ecc_alloc_point(i32 %53)
  store %struct.ecc_point* %54, %struct.ecc_point** %13, align 8
  %55 = load %struct.ecc_point*, %struct.ecc_point** %13, align 8
  %56 = icmp ne %struct.ecc_point* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  br label %117

60:                                               ; preds = %47
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.ecc_point*, %struct.ecc_point** %13, align 8
  %63 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @ecc_swap_digits(i32* %61, i32* %64, i32 %65)
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load %struct.ecc_point*, %struct.ecc_point** %13, align 8
  %72 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @ecc_swap_digits(i32* %70, i32* %73, i32 %74)
  %76 = load %struct.ecc_curve*, %struct.ecc_curve** %18, align 8
  %77 = load %struct.ecc_point*, %struct.ecc_point** %13, align 8
  %78 = call i32 @ecc_is_pubkey_valid_partial(%struct.ecc_curve* %76, %struct.ecc_point* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %60
  br label %114

82:                                               ; preds = %60
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @ecc_swap_digits(i32* %83, i32* %22, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = call %struct.ecc_point* @ecc_alloc_point(i32 %86)
  store %struct.ecc_point* %87, %struct.ecc_point** %12, align 8
  %88 = load %struct.ecc_point*, %struct.ecc_point** %12, align 8
  %89 = icmp ne %struct.ecc_point* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %11, align 4
  br label %114

93:                                               ; preds = %82
  %94 = load %struct.ecc_point*, %struct.ecc_point** %12, align 8
  %95 = load %struct.ecc_point*, %struct.ecc_point** %13, align 8
  %96 = load %struct.ecc_curve*, %struct.ecc_curve** %18, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @ecc_point_mult(%struct.ecc_point* %94, %struct.ecc_point* %95, i32* %22, i32* %25, %struct.ecc_curve* %96, i32 %97)
  %99 = load %struct.ecc_point*, %struct.ecc_point** %12, align 8
  %100 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @ecc_swap_digits(i32* %101, i32* %102, i32 %103)
  %105 = load %struct.ecc_point*, %struct.ecc_point** %12, align 8
  %106 = call i64 @ecc_point_is_zero(%struct.ecc_point* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %93
  %109 = load i32, i32* @EFAULT, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %108, %93
  %112 = load %struct.ecc_point*, %struct.ecc_point** %12, align 8
  %113 = call i32 @ecc_free_point(%struct.ecc_point* %112)
  br label %114

114:                                              ; preds = %111, %90, %81
  %115 = load %struct.ecc_point*, %struct.ecc_point** %13, align 8
  %116 = call i32 @ecc_free_point(%struct.ecc_point* %115)
  br label %117

117:                                              ; preds = %114, %57, %44
  %118 = load i32, i32* %11, align 4
  %119 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %119)
  ret i32 %118
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ecc_curve* @ecc_get_curve(i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @get_random_bytes(i32*, i32) #2

declare dso_local %struct.ecc_point* @ecc_alloc_point(i32) #2

declare dso_local i32 @ecc_swap_digits(i32*, i32*, i32) #2

declare dso_local i32 @ecc_is_pubkey_valid_partial(%struct.ecc_curve*, %struct.ecc_point*) #2

declare dso_local i32 @ecc_point_mult(%struct.ecc_point*, %struct.ecc_point*, i32*, i32*, %struct.ecc_curve*, i32) #2

declare dso_local i64 @ecc_point_is_zero(%struct.ecc_point*) #2

declare dso_local i32 @ecc_free_point(%struct.ecc_point*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
