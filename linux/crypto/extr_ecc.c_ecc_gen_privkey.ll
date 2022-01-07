; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_gen_privkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_gen_privkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecc_curve = type { i32 }

@ECC_MAX_DIGITS = common dso_local global i32 0, align 4
@ECC_DIGITS_TO_BYTES_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@crypto_default_rng = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecc_gen_privkey(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ecc_curve*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.ecc_curve* @ecc_get_curve(i32 %15)
  store %struct.ecc_curve* %16, %struct.ecc_curve** %8, align 8
  %17 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ECC_DIGITS_TO_BYTES_SHIFT, align 4
  %23 = shl i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.ecc_curve*, %struct.ecc_curve** %8, align 8
  %25 = getelementptr inbounds %struct.ecc_curve, %struct.ecc_curve* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @vli_num_bits(i32 %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ult i32 %29, 160
  br i1 %30, label %35, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ARRAY_SIZE(i32* %20)
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %65

38:                                               ; preds = %31
  %39 = call i64 (...) @crypto_get_default_rng()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %65

44:                                               ; preds = %38
  %45 = load i32, i32* @crypto_default_rng, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @crypto_rng_get_bytes(i32 %45, i32* %20, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = call i32 (...) @crypto_put_default_rng()
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %65

53:                                               ; preds = %44
  %54 = load %struct.ecc_curve*, %struct.ecc_curve** %8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @__ecc_is_key_valid(%struct.ecc_curve* %54, i32* %20, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %65

61:                                               ; preds = %53
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @ecc_swap_digits(i32* %20, i32* %62, i32 %63)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %65

65:                                               ; preds = %61, %58, %51, %41, %35
  %66 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.ecc_curve* @ecc_get_curve(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @vli_num_bits(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @crypto_get_default_rng(...) #1

declare dso_local i32 @crypto_rng_get_bytes(i32, i32*, i32) #1

declare dso_local i32 @crypto_put_default_rng(...) #1

declare dso_local i64 @__ecc_is_key_valid(%struct.ecc_curve*, i32*, i32) #1

declare dso_local i32 @ecc_swap_digits(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
