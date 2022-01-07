; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nspredef.c_acpi_ns_get_bitmapped_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nspredef.c_acpi_ns_get_bitmapped_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ACPI_RTYPE_NONE = common dso_local global i32 0, align 4
@ACPI_RTYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_RTYPE_BUFFER = common dso_local global i32 0, align 4
@ACPI_RTYPE_STRING = common dso_local global i32 0, align 4
@ACPI_RTYPE_PACKAGE = common dso_local global i32 0, align 4
@ACPI_RTYPE_REFERENCE = common dso_local global i32 0, align 4
@ACPI_RTYPE_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.acpi_operand_object*)* @acpi_ns_get_bitmapped_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ns_get_bitmapped_type(%union.acpi_operand_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %6 = icmp ne %union.acpi_operand_object* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ACPI_RTYPE_NONE, align 4
  store i32 %8, i32* %2, align 4
  br label %28

9:                                                ; preds = %1
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %11 = bitcast %union.acpi_operand_object* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %24 [
    i32 131, label %14
    i32 132, label %16
    i32 128, label %18
    i32 129, label %20
    i32 130, label %22
  ]

14:                                               ; preds = %9
  %15 = load i32, i32* @ACPI_RTYPE_INTEGER, align 4
  store i32 %15, i32* %4, align 4
  br label %26

16:                                               ; preds = %9
  %17 = load i32, i32* @ACPI_RTYPE_BUFFER, align 4
  store i32 %17, i32* %4, align 4
  br label %26

18:                                               ; preds = %9
  %19 = load i32, i32* @ACPI_RTYPE_STRING, align 4
  store i32 %19, i32* %4, align 4
  br label %26

20:                                               ; preds = %9
  %21 = load i32, i32* @ACPI_RTYPE_PACKAGE, align 4
  store i32 %21, i32* %4, align 4
  br label %26

22:                                               ; preds = %9
  %23 = load i32, i32* @ACPI_RTYPE_REFERENCE, align 4
  store i32 %23, i32* %4, align 4
  br label %26

24:                                               ; preds = %9
  %25 = load i32, i32* @ACPI_RTYPE_ANY, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %22, %20, %18, %16, %14
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %7
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
