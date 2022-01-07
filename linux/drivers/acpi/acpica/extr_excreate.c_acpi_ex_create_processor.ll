; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_excreate.c_acpi_ex_create_processor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_excreate.c_acpi_ex_create_processor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %union.acpi_operand_object** }
%union.acpi_operand_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i8*, i8* }
%struct.TYPE_4__ = type { i64 }
%struct.acpi_namespace_node = type { i32 }

@ex_create_processor = common dso_local global i32 0, align 4
@ACPI_TYPE_PROCESSOR = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_create_processor(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca %union.acpi_operand_object**, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 0
  %9 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %10 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %9, i64 0
  store %union.acpi_operand_object** %10, %union.acpi_operand_object*** %4, align 8
  %11 = load i32, i32* @ex_create_processor, align 4
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %13 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %11, %struct.acpi_walk_state* %12)
  %14 = load i32, i32* @ACPI_TYPE_PROCESSOR, align 4
  %15 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %14)
  store %union.acpi_operand_object* %15, %union.acpi_operand_object** %5, align 8
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %17 = icmp ne %union.acpi_operand_object* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @AE_NO_MEMORY, align 4
  %20 = call i32 @return_ACPI_STATUS(i32 %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %23 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %22, i64 1
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %23, align 8
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %30 = bitcast %union.acpi_operand_object* %29 to %struct.TYPE_3__*
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i8* %28, i8** %31, align 8
  %32 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %33 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %32, i64 3
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %33, align 8
  %35 = bitcast %union.acpi_operand_object* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %40 = bitcast %union.acpi_operand_object* %39 to %struct.TYPE_3__*
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  %42 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %43 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %42, i64 2
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %43, align 8
  %45 = bitcast %union.acpi_operand_object* %44 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %49 = bitcast %union.acpi_operand_object* %48 to %struct.TYPE_3__*
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %52 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %51, i64 0
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %52, align 8
  %54 = bitcast %union.acpi_operand_object* %53 to %struct.acpi_namespace_node*
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %56 = load i32, i32* @ACPI_TYPE_PROCESSOR, align 4
  %57 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %54, %union.acpi_operand_object* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %59 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %58)
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @return_ACPI_STATUS(i32 %60)
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
