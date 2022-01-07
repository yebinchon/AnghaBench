; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psutils.c_acpi_ps_free_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psutils.c_acpi_ps_free_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@ps_free_op = common dso_local global i32 0, align 4
@AML_INT_RETURN_VALUE_OP = common dso_local global i64 0, align 8
@ACPI_DB_ALLOCATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Free retval op: %p\0A\00", align 1
@ACPI_PARSEOP_GENERIC = common dso_local global i32 0, align 4
@acpi_gbl_ps_node_cache = common dso_local global i32 0, align 4
@acpi_gbl_ps_node_ext_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ps_free_op(%union.acpi_parse_object* %0) #0 {
  %2 = alloca %union.acpi_parse_object*, align 8
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %2, align 8
  %3 = load i32, i32* @ps_free_op, align 4
  %4 = call i32 @ACPI_FUNCTION_NAME(i32 %3)
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %6 = call i32 @ASL_CV_CLEAR_OP_COMMENTS(%union.acpi_parse_object* %5)
  %7 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %8 = bitcast %union.acpi_parse_object* %7 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AML_INT_RETURN_VALUE_OP, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %16 = ptrtoint %union.acpi_parse_object* %15 to i32
  %17 = call i32 @ACPI_DEBUG_PRINT(i32 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %20 = bitcast %union.acpi_parse_object* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ACPI_PARSEOP_GENERIC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i32, i32* @acpi_gbl_ps_node_cache, align 4
  %28 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %29 = call i32 @acpi_os_release_object(i32 %27, %union.acpi_parse_object* %28)
  br label %34

30:                                               ; preds = %18
  %31 = load i32, i32* @acpi_gbl_ps_node_ext_cache, align 4
  %32 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %33 = call i32 @acpi_os_release_object(i32 %31, %union.acpi_parse_object* %32)
  br label %34

34:                                               ; preds = %30, %26
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ASL_CV_CLEAR_OP_COMMENTS(%union.acpi_parse_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_os_release_object(i32, %union.acpi_parse_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
