; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic_bxtwc.c_intel_bxtwc_pmic_get_raw_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic_bxtwc.c_intel_bxtwc_pmic_get_raw_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@intel_bxtwc_pmic_get_raw_temp.rlsb_array = internal constant [12 x i64] [i64 0, i64 260420, i64 130210, i64 65100, i64 32550, i64 16280, i64 8140, i64 4070, i64 2030, i64 0, i64 260420, i64 130210], align 16
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32)* @intel_bxtwc_pmic_get_raw_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_bxtwc_pmic_get_raw_temp(%struct.regmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.regmap*, %struct.regmap** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @regmap_read(%struct.regmap* %13, i32 %14, i32* %6)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %51

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %9, align 8
  %23 = load %struct.regmap*, %struct.regmap** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, 1
  %26 = call i64 @regmap_read(%struct.regmap* %23, i32 %25, i32* %6)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %51

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @WHISKEY_COVE_ADC_HIGH_BIT(i64 %35)
  %37 = or i64 %34, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %8, align 4
  %39 = load i64, i64* %10, align 8
  %40 = call i64 @WHISKEY_COVE_ADC_CURSRC(i64 %39)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds [12 x i64], [12 x i64]* @intel_bxtwc_pmic_get_raw_temp.rlsb_array, i64 0, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %12, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = load i64, i64* %12, align 8
  %47 = mul i64 %45, %46
  %48 = udiv i64 %47, 1000
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %31, %28, %17
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i64 @WHISKEY_COVE_ADC_HIGH_BIT(i64) #1

declare dso_local i64 @WHISKEY_COVE_ADC_CURSRC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
