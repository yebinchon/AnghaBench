; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_sbs.c_acpi_ac_get_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_sbs.c_acpi_ac_get_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_sbs = type { i32, i32 }

@SMBUS_READ_WORD = common dso_local global i32 0, align 4
@ACPI_SBS_CHARGER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_sbs*)* @acpi_ac_get_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ac_get_present(%struct.acpi_sbs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_sbs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.acpi_sbs* %0, %struct.acpi_sbs** %3, align 8
  %6 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SMBUS_READ_WORD, align 4
  %10 = load i32, i32* @ACPI_SBS_CHARGER, align 4
  %11 = call i32 @acpi_smbus_read(i32 %8, i32 %9, i32 %10, i32 19, i32* %5)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %33

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 65535
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %16
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 15
  %30 = and i32 %29, 1
  %31 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %27, %24, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @acpi_smbus_read(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
