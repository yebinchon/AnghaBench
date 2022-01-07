; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ioapic.c_acpi_ioapic_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ioapic.c_acpi_ioapic_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_OK = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@handle_ioapic_add = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ioapic_add(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @AE_OK, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @UINT_MAX, align 4
  %9 = load i32, i32* @handle_ioapic_add, align 4
  %10 = load i32, i32* %2, align 4
  %11 = bitcast i32* %4 to i8**
  %12 = call i32 @acpi_walk_namespace(i32 %6, i32 %7, i32 %8, i32 %9, i32* null, i32 %10, i8** %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @ACPI_SUCCESS(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @ACPI_SUCCESS(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %24

21:                                               ; preds = %16, %1
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  br label %24

24:                                               ; preds = %21, %20
  %25 = phi i32 [ 0, %20 ], [ %23, %21 ]
  ret i32 %25
}

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, i32*, i32, i8**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
