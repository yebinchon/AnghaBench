; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evgpe.c_acpi_ev_get_gpe_event_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evgpe.c_acpi_ev_get_gpe_event_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_event_info = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_namespace_node = type { i32 }

@ACPI_MAX_GPE_BLOCKS = common dso_local global i64 0, align 8
@acpi_gbl_gpe_fadt_blocks = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.acpi_gpe_event_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %struct.acpi_gpe_event_info*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %29, %12
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @ACPI_MAX_GPE_BLOCKS, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = load i32*, i32** @acpi_gbl_gpe_fadt_blocks, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.acpi_gpe_event_info* @acpi_ev_low_get_gpe_info(i64 %18, i32 %22)
  store %struct.acpi_gpe_event_info* %23, %struct.acpi_gpe_event_info** %7, align 8
  %24 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %7, align 8
  %25 = icmp ne %struct.acpi_gpe_event_info* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %7, align 8
  store %struct.acpi_gpe_event_info* %27, %struct.acpi_gpe_event_info** %3, align 8
  br label %53

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %8, align 8
  br label %13

32:                                               ; preds = %13
  store %struct.acpi_gpe_event_info* null, %struct.acpi_gpe_event_info** %3, align 8
  br label %53

33:                                               ; preds = %2
  %34 = load i64, i64* %4, align 8
  %35 = inttoptr i64 %34 to %struct.acpi_namespace_node*
  %36 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %35)
  store %union.acpi_operand_object* %36, %union.acpi_operand_object** %6, align 8
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %38 = icmp ne %union.acpi_operand_object* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %41 = bitcast %union.acpi_operand_object* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39, %33
  store %struct.acpi_gpe_event_info* null, %struct.acpi_gpe_event_info** %3, align 8
  br label %53

46:                                               ; preds = %39
  %47 = load i64, i64* %5, align 8
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %49 = bitcast %union.acpi_operand_object* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.acpi_gpe_event_info* @acpi_ev_low_get_gpe_info(i64 %47, i32 %51)
  store %struct.acpi_gpe_event_info* %52, %struct.acpi_gpe_event_info** %3, align 8
  br label %53

53:                                               ; preds = %46, %45, %32, %26
  %54 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %3, align 8
  ret %struct.acpi_gpe_event_info* %54
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local %struct.acpi_gpe_event_info* @acpi_ev_low_get_gpe_info(i64, i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
