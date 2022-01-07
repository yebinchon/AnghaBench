; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_sbs.c_acpi_battery_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_sbs.c_acpi_battery_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_battery = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@SMBUS_READ_WORD = common dso_local global i32 0, align 4
@ACPI_SBS_MANAGER = common dso_local global i32 0, align 4
@SMBUS_WRITE_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_battery*)* @acpi_battery_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_battery_read(%struct.acpi_battery* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_battery*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acpi_battery* %0, %struct.acpi_battery** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %1
  %17 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SMBUS_READ_WORD, align 4
  %23 = load i32, i32* @ACPI_SBS_MANAGER, align 4
  %24 = call i32 @acpi_smbus_read(i32 %21, i32 %22, i32 %23, i32 1, i32* %6)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %30 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %28, %32
  %34 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %35 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %27, %16
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 4095
  store i32 %38, i32* %6, align 4
  %39 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %40 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 12
  %43 = shl i32 1, %42
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %47 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SMBUS_WRITE_WORD, align 4
  %52 = load i32, i32* @ACPI_SBS_MANAGER, align 4
  %53 = call i32 @acpi_smbus_write(i32 %50, i32 %51, i32 %52, i32 1, i32* %6, i32 2)
  br label %63

54:                                               ; preds = %1
  %55 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %56 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %61 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %54
  br label %63

63:                                               ; preds = %62, %36
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %68 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66, %63
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %101

73:                                               ; preds = %66
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %76 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %81 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %83 = call i32 @acpi_battery_get_info(%struct.acpi_battery* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %88 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %101

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %73
  %92 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %93 = call i32 @acpi_battery_get_state(%struct.acpi_battery* %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %98 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %86, %71
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @acpi_smbus_read(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @acpi_smbus_write(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @acpi_battery_get_info(%struct.acpi_battery*) #1

declare dso_local i32 @acpi_battery_get_state(%struct.acpi_battery*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
