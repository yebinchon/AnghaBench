; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_battery.c_extract_battery_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_battery.c_extract_battery_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_battery = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.acpi_buffer = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@battery_bix_broken_package = common dso_local global i64 0, align 8
@extended_info_offsets = common dso_local global i64 0, align 8
@info_offsets = common dso_local global i64 0, align 8
@ACPI_BATTERY_QUIRK_PERCENTAGE_CAPACITY = common dso_local global i32 0, align 4
@ACPI_BATTERY_QUIRK_THINKPAD_MAH = common dso_local global i32 0, align 4
@ACPI_BATTERY_QUIRK_DEGRADED_FULL_CHARGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.acpi_battery*, %struct.acpi_buffer*)* @extract_battery_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_battery_info(i32 %0, %struct.acpi_battery* %1, %struct.acpi_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_battery*, align 8
  %6 = alloca %struct.acpi_buffer*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.acpi_battery* %1, %struct.acpi_battery** %5, align 8
  store %struct.acpi_buffer* %2, %struct.acpi_buffer** %6, align 8
  %8 = load i32, i32* @EFAULT, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load i64, i64* @battery_bix_broken_package, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %17 = load %struct.acpi_buffer*, %struct.acpi_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* @extended_info_offsets, align 8
  %21 = add nsw i64 %20, 1
  %22 = load i64, i64* @extended_info_offsets, align 8
  %23 = call i64 @ARRAY_SIZE(i64 %22)
  %24 = sub nsw i64 %23, 1
  %25 = call i32 @extract_package(%struct.acpi_battery* %16, i32 %19, i64 %21, i64 %24)
  store i32 %25, i32* %7, align 4
  br label %48

26:                                               ; preds = %12, %3
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %31 = load %struct.acpi_buffer*, %struct.acpi_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* @extended_info_offsets, align 8
  %35 = load i64, i64* @extended_info_offsets, align 8
  %36 = call i64 @ARRAY_SIZE(i64 %35)
  %37 = call i32 @extract_package(%struct.acpi_battery* %30, i32 %33, i64 %34, i64 %36)
  store i32 %37, i32* %7, align 4
  br label %47

38:                                               ; preds = %26
  %39 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %40 = load %struct.acpi_buffer*, %struct.acpi_buffer** %6, align 8
  %41 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* @info_offsets, align 8
  %44 = load i64, i64* @info_offsets, align 8
  %45 = call i64 @ARRAY_SIZE(i64 %44)
  %46 = call i32 @extract_package(%struct.acpi_battery* %39, i32 %42, i64 %43, i64 %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %38, %29
  br label %48

48:                                               ; preds = %47, %15
  %49 = load i32, i32* @ACPI_BATTERY_QUIRK_PERCENTAGE_CAPACITY, align 4
  %50 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %51 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %50, i32 0, i32 5
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %56 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %59 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %54, %48
  %61 = load i32, i32* @ACPI_BATTERY_QUIRK_THINKPAD_MAH, align 4
  %62 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %63 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %62, i32 0, i32 5
  %64 = call i64 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %107

66:                                               ; preds = %60
  %67 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %68 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %107

71:                                               ; preds = %66
  %72 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %73 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %107

76:                                               ; preds = %71
  %77 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %78 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %79, 10000
  %81 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %82 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = sdiv i32 %80, %83
  %85 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %86 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %88 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %89, 10000
  %91 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %92 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sdiv i32 %90, %93
  %95 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %96 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %98 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, 10000
  %101 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %102 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = sdiv i32 %100, %103
  %105 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %106 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %76, %71, %66, %60
  %108 = load i32, i32* @ACPI_BATTERY_QUIRK_DEGRADED_FULL_CHARGE, align 4
  %109 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %110 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %109, i32 0, i32 5
  %111 = call i64 @test_bit(i32 %108, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %107
  %114 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %115 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %118 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sgt i32 %116, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %113
  %122 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %123 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %126 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %121, %113, %107
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local i32 @extract_package(%struct.acpi_battery*, i32, i64, i64) #1

declare dso_local i64 @ARRAY_SIZE(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
