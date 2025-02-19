; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_is_key_valid.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecc.c_ecc_is_key_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecc_curve = type { i32 }

@ECC_DIGITS_TO_BYTES_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecc_is_key_valid(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecc_curve*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.ecc_curve* @ecc_get_curve(i32 %12)
  store %struct.ecc_curve* %13, %struct.ecc_curve** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @ECC_DIGITS_TO_BYTES_SHIFT, align 4
  %16 = shl i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %28

23:                                               ; preds = %4
  %24 = load %struct.ecc_curve*, %struct.ecc_curve** %11, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @__ecc_is_key_valid(%struct.ecc_curve* %24, i32* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local %struct.ecc_curve* @ecc_get_curve(i32) #1

declare dso_local i32 @__ecc_is_key_valid(%struct.ecc_curve*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
