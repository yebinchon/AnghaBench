; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_bus_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_bus_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_bus_scan(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @acpi_bus_check_add(i32 %5, i32 0, i32* null, i8** %4)
  %7 = call i64 @ACPI_SUCCESS(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %13 = call i32 @acpi_walk_namespace(i32 %10, i32 %11, i32 %12, i32 (i32, i32, i32*, i8**)* @acpi_bus_check_add, i32* null, i32* null, i8** %4)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @acpi_bus_attach(i8* %18)
  store i32 0, i32* %2, align 4
  br label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_bus_check_add(i32, i32, i32*, i8**) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32 (i32, i32, i32*, i8**)*, i32*, i32*, i8**) #1

declare dso_local i32 @acpi_bus_attach(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
