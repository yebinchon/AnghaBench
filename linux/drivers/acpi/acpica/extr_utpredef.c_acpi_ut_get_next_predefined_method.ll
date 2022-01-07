; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utpredef.c_acpi_ut_get_next_predefined_method.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utpredef.c_acpi_ut_get_next_predefined_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_predefined_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ACPI_RTYPE_PACKAGE = common dso_local global i32 0, align 4
@ACPI_RTYPE_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_predefined_info* @acpi_ut_get_next_predefined_method(%union.acpi_predefined_info* %0) #0 {
  %2 = alloca %union.acpi_predefined_info*, align 8
  store %union.acpi_predefined_info* %0, %union.acpi_predefined_info** %2, align 8
  %3 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %2, align 8
  %4 = bitcast %union.acpi_predefined_info* %3 to %struct.TYPE_2__*
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ACPI_RTYPE_PACKAGE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %2, align 8
  %12 = bitcast %union.acpi_predefined_info* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ACPI_RTYPE_ALL, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %2, align 8
  %19 = getelementptr inbounds %union.acpi_predefined_info, %union.acpi_predefined_info* %18, i32 1
  store %union.acpi_predefined_info* %19, %union.acpi_predefined_info** %2, align 8
  br label %20

20:                                               ; preds = %17, %10, %1
  %21 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %2, align 8
  %22 = getelementptr inbounds %union.acpi_predefined_info, %union.acpi_predefined_info* %21, i32 1
  store %union.acpi_predefined_info* %22, %union.acpi_predefined_info** %2, align 8
  %23 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %2, align 8
  ret %union.acpi_predefined_info* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
