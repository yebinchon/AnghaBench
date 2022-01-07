; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exmutex.c_acpi_ex_link_mutex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exmutex.c_acpi_ex_link_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %union.acpi_operand_object*, %union.acpi_operand_object* }
%struct.acpi_thread_state = type { %union.acpi_operand_object* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.acpi_operand_object*, %struct.acpi_thread_state*)* @acpi_ex_link_mutex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ex_link_mutex(%union.acpi_operand_object* %0, %struct.acpi_thread_state* %1) #0 {
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca %struct.acpi_thread_state*, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  store %struct.acpi_thread_state* %1, %struct.acpi_thread_state** %4, align 8
  %6 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %4, align 8
  %7 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %6, i32 0, i32 0
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  store %union.acpi_operand_object* %8, %union.acpi_operand_object** %5, align 8
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %10 = bitcast %union.acpi_operand_object* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %11, align 8
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %14 = bitcast %union.acpi_operand_object* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %union.acpi_operand_object* %12, %union.acpi_operand_object** %15, align 8
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %17 = icmp ne %union.acpi_operand_object* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %21 = bitcast %union.acpi_operand_object* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %union.acpi_operand_object* %19, %union.acpi_operand_object** %22, align 8
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %25 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %4, align 8
  %26 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %25, i32 0, i32 0
  store %union.acpi_operand_object* %24, %union.acpi_operand_object** %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
