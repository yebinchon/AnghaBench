; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic_bxtwc.c_intel_bxtwc_pmic_update_aux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic_bxtwc.c_intel_bxtwc_pmic_update_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@s8 = common dso_local global i32 0, align 4
@WHISKEY_COVE_ALRT_HIGH_BIT_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32, i32)* @intel_bxtwc_pmic_update_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_bxtwc_pmic_update_aux(%struct.regmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sdiv i32 %16, 32
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @fls(i32 %18)
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @s8, align 4
  %22 = load i32, i32* %10, align 4
  %23 = sub nsw i32 %22, 7
  %24 = call i32 @clamp_t(i32 %21, i32 %23, i32 0, i32 7)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %14, align 4
  %27 = add nsw i32 4, %26
  %28 = shl i32 1, %27
  %29 = sdiv i32 %25, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %14, align 4
  %31 = shl i32 %30, 9
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = ashr i32 %34, 8
  %36 = load i32, i32* @WHISKEY_COVE_ALRT_HIGH_BIT_MASK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %12, align 4
  %38 = load %struct.regmap*, %struct.regmap** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* @WHISKEY_COVE_ALRT_HIGH_BIT_MASK, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @regmap_update_bits(%struct.regmap* %38, i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %3
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %54

48:                                               ; preds = %3
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.regmap*, %struct.regmap** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @regmap_write(%struct.regmap* %50, i32 %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %48, %45
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @clamp_t(i32, i32, i32, i32) #1

declare dso_local i64 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
