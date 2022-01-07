; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psscope.c_acpi_ps_has_completed_scope.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psscope.c_acpi_ps_has_completed_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_parse_state = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ps_has_completed_scope(%struct.acpi_parse_state* %0) #0 {
  %2 = alloca %struct.acpi_parse_state*, align 8
  store %struct.acpi_parse_state* %0, %struct.acpi_parse_state** %2, align 8
  %3 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %2, align 8
  %4 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %2, align 8
  %7 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %5, %11
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %2, align 8
  %15 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %13, %1
  %23 = phi i1 [ true, %1 ], [ %21, %13 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
