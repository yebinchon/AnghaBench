; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psutils.c_acpi_ps_set_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psutils.c_acpi_ps_set_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ACPI_PARSEOP_GENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ps_set_name(%union.acpi_parse_object* %0, i32 %1) #0 {
  %3 = alloca %union.acpi_parse_object*, align 8
  %4 = alloca i32, align 4
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %6 = bitcast %union.acpi_parse_object* %5 to %struct.TYPE_3__*
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ACPI_PARSEOP_GENERIC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %16 = bitcast %union.acpi_parse_object* %15 to %struct.TYPE_4__*
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  br label %18

18:                                               ; preds = %13, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
