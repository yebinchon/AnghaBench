; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psutils.c_acpi_ps_alloc_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psutils.c_acpi_ps_alloc_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64 }
%struct.acpi_opcode_info = type { i32 }

@ACPI_PARSEOP_GENERIC = common dso_local global i64 0, align 8
@AML_DEFER = common dso_local global i32 0, align 4
@ACPI_PARSEOP_DEFERRED = common dso_local global i64 0, align 8
@AML_NAMED = common dso_local global i32 0, align 4
@ACPI_PARSEOP_NAMED_OBJECT = common dso_local global i64 0, align 8
@AML_INT_BYTELIST_OP = common dso_local global i64 0, align 8
@ACPI_PARSEOP_BYTELIST = common dso_local global i64 0, align 8
@acpi_gbl_ps_node_cache = common dso_local global i32 0, align 4
@acpi_gbl_ps_node_ext_cache = common dso_local global i32 0, align 4
@AML_SCOPE_OP = common dso_local global i64 0, align 8
@acpi_gbl_current_scope = common dso_local global %union.acpi_parse_object* null, align 8
@acpi_gbl_capture_comments = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca %struct.acpi_opcode_info*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i64, i64* @ACPI_PARSEOP_GENERIC, align 8
  store i64 %8, i64* %7, align 8
  %9 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %10 = load i64, i64* %3, align 8
  %11 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i64 %10)
  store %struct.acpi_opcode_info* %11, %struct.acpi_opcode_info** %6, align 8
  %12 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %6, align 8
  %13 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AML_DEFER, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* @ACPI_PARSEOP_DEFERRED, align 8
  store i64 %19, i64* %7, align 8
  br label %37

20:                                               ; preds = %2
  %21 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %6, align 8
  %22 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AML_NAMED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i64, i64* @ACPI_PARSEOP_NAMED_OBJECT, align 8
  store i64 %28, i64* %7, align 8
  br label %36

29:                                               ; preds = %20
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @AML_INT_BYTELIST_OP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* @ACPI_PARSEOP_BYTELIST, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %33, %29
  br label %36

36:                                               ; preds = %35, %27
  br label %37

37:                                               ; preds = %36, %18
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @ACPI_PARSEOP_GENERIC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @acpi_gbl_ps_node_cache, align 4
  %43 = call %union.acpi_parse_object* @acpi_os_acquire_object(i32 %42)
  store %union.acpi_parse_object* %43, %union.acpi_parse_object** %5, align 8
  br label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @acpi_gbl_ps_node_ext_cache, align 4
  %46 = call %union.acpi_parse_object* @acpi_os_acquire_object(i32 %45)
  store %union.acpi_parse_object* %46, %union.acpi_parse_object** %5, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %49 = icmp ne %union.acpi_parse_object* %48, null
  br i1 %49, label %50, label %76

50:                                               ; preds = %47
  %51 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @acpi_ps_init_op(%union.acpi_parse_object* %51, i64 %52)
  %54 = load i64*, i64** %4, align 8
  %55 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %56 = bitcast %union.acpi_parse_object* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i64* %54, i64** %57, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %60 = bitcast %union.acpi_parse_object* %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  %62 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %63 = call i32 @ASL_CV_CLEAR_OP_COMMENTS(%union.acpi_parse_object* %62)
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* @AML_SCOPE_OP, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %50
  %68 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  store %union.acpi_parse_object* %68, %union.acpi_parse_object** @acpi_gbl_current_scope, align 8
  br label %69

69:                                               ; preds = %67, %50
  %70 = load i64, i64* @acpi_gbl_capture_comments, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %74 = call i32 @ASL_CV_TRANSFER_COMMENTS(%union.acpi_parse_object* %73)
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75, %47
  %77 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  ret %union.acpi_parse_object* %77
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i64) #1

declare dso_local %union.acpi_parse_object* @acpi_os_acquire_object(i32) #1

declare dso_local i32 @acpi_ps_init_op(%union.acpi_parse_object*, i64) #1

declare dso_local i32 @ASL_CV_CLEAR_OP_COMMENTS(%union.acpi_parse_object*) #1

declare dso_local i32 @ASL_CV_TRANSFER_COMMENTS(%union.acpi_parse_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
