; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dswstate.c_acpi_ds_create_walk_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dswstate.c_acpi_ds_create_walk_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %struct.TYPE_2__, %struct.acpi_thread_state*, %union.acpi_parse_object*, i32, %union.acpi_operand_object*, i32 }
%struct.TYPE_2__ = type { %union.acpi_parse_object* }
%union.acpi_parse_object = type { i32 }
%union.acpi_operand_object = type { i32 }
%struct.acpi_thread_state = type { i32 }

@ds_create_walk_state = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_WALK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32 %0, %union.acpi_parse_object* %1, %union.acpi_operand_object* %2, %struct.acpi_thread_state* %3) #0 {
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_parse_object*, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca %struct.acpi_thread_state*, align 8
  %10 = alloca %struct.acpi_walk_state*, align 8
  store i32 %0, i32* %6, align 4
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %7, align 8
  store %union.acpi_operand_object* %2, %union.acpi_operand_object** %8, align 8
  store %struct.acpi_thread_state* %3, %struct.acpi_thread_state** %9, align 8
  %11 = load i32, i32* @ds_create_walk_state, align 4
  %12 = call i32 @ACPI_FUNCTION_TRACE(i32 %11)
  %13 = call %struct.acpi_walk_state* @ACPI_ALLOCATE_ZEROED(i32 48)
  store %struct.acpi_walk_state* %13, %struct.acpi_walk_state** %10, align 8
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %15 = icmp ne %struct.acpi_walk_state* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = call i32 @return_PTR(%struct.acpi_walk_state* null)
  br label %18

18:                                               ; preds = %16, %4
  %19 = load i32, i32* @ACPI_DESC_TYPE_WALK, align 4
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %21 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %24 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 4
  store %union.acpi_operand_object* %22, %union.acpi_operand_object** %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %27 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %30 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %29, i32 0, i32 2
  store %union.acpi_parse_object* %28, %union.acpi_parse_object** %30, align 8
  %31 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %9, align 8
  %32 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %33 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %32, i32 0, i32 1
  store %struct.acpi_thread_state* %31, %struct.acpi_thread_state** %33, align 8
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %36 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %union.acpi_parse_object* %34, %union.acpi_parse_object** %37, align 8
  %38 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %39 = call i32 @acpi_ds_method_data_init(%struct.acpi_walk_state* %38)
  %40 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %9, align 8
  %41 = icmp ne %struct.acpi_thread_state* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %18
  %43 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %44 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %9, align 8
  %45 = call i32 @acpi_ds_push_walk_state(%struct.acpi_walk_state* %43, %struct.acpi_thread_state* %44)
  br label %46

46:                                               ; preds = %42, %18
  %47 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %48 = call i32 @return_PTR(%struct.acpi_walk_state* %47)
  %49 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  ret %struct.acpi_walk_state* %49
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %struct.acpi_walk_state* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @return_PTR(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_method_data_init(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_push_walk_state(%struct.acpi_walk_state*, %struct.acpi_thread_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
