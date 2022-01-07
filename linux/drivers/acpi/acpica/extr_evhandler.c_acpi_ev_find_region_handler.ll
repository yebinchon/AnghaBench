; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evhandler.c_acpi_ev_find_region_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evhandler.c_acpi_ev_find_region_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %union.acpi_operand_object* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_operand_object* @acpi_ev_find_region_handler(i64 %0, %union.acpi_operand_object* %1) #0 {
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  store i64 %0, i64* %4, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %5, align 8
  br label %6

6:                                                ; preds = %18, %2
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %8 = icmp ne %union.acpi_operand_object* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %11 = bitcast %union.acpi_operand_object* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  store %union.acpi_operand_object* %17, %union.acpi_operand_object** %3, align 8
  br label %24

18:                                               ; preds = %9
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %20 = bitcast %union.acpi_operand_object* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %21, align 8
  store %union.acpi_operand_object* %22, %union.acpi_operand_object** %5, align 8
  br label %6

23:                                               ; preds = %6
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %3, align 8
  br label %24

24:                                               ; preds = %23, %16
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  ret %union.acpi_operand_object* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
