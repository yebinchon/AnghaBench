; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_pstree.c_acpi_ps_append_arg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_pstree.c_acpi_ps_append_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %union.acpi_parse_object* }
%struct.acpi_opcode_info = type { i64, i32 }

@ps_append_arg = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@AML_CLASS_UNKNOWN = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid AML Opcode: 0x%2.2X\00", align 1
@AML_HAS_ARGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ps_append_arg(%union.acpi_parse_object* %0, %union.acpi_parse_object* %1) #0 {
  %3 = alloca %union.acpi_parse_object*, align 8
  %4 = alloca %union.acpi_parse_object*, align 8
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca %struct.acpi_opcode_info*, align 8
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %3, align 8
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %4, align 8
  %7 = load i32, i32* @ps_append_arg, align 4
  %8 = call i32 @ACPI_FUNCTION_TRACE(i32 %7)
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %10 = icmp ne %union.acpi_parse_object* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @return_VOID, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %15 = bitcast %union.acpi_parse_object* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i32 %17)
  store %struct.acpi_opcode_info* %18, %struct.acpi_opcode_info** %6, align 8
  %19 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %6, align 8
  %20 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AML_CLASS_UNKNOWN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %13
  %25 = load i32, i32* @AE_INFO, align 4
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %27 = bitcast %union.acpi_parse_object* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ACPI_ERROR(i32 %29)
  %31 = load i32, i32* @return_VOID, align 4
  br label %32

32:                                               ; preds = %24, %13
  %33 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %6, align 8
  %34 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @AML_HAS_ARGS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @return_VOID, align 4
  br label %41

41:                                               ; preds = %39, %32
  %42 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %43 = bitcast %union.acpi_parse_object* %42 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %union.acpi_parse_object*, %union.acpi_parse_object** %45, align 8
  %47 = icmp ne %union.acpi_parse_object* %46, null
  br i1 %47, label %48, label %70

48:                                               ; preds = %41
  %49 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %50 = bitcast %union.acpi_parse_object* %49 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %union.acpi_parse_object*, %union.acpi_parse_object** %52, align 8
  store %union.acpi_parse_object* %53, %union.acpi_parse_object** %5, align 8
  br label %54

54:                                               ; preds = %60, %48
  %55 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %56 = bitcast %union.acpi_parse_object* %55 to %struct.TYPE_4__*
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %union.acpi_parse_object*, %union.acpi_parse_object** %57, align 8
  %59 = icmp ne %union.acpi_parse_object* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %62 = bitcast %union.acpi_parse_object* %61 to %struct.TYPE_4__*
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load %union.acpi_parse_object*, %union.acpi_parse_object** %63, align 8
  store %union.acpi_parse_object* %64, %union.acpi_parse_object** %5, align 8
  br label %54

65:                                               ; preds = %54
  %66 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %67 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %68 = bitcast %union.acpi_parse_object* %67 to %struct.TYPE_4__*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store %union.acpi_parse_object* %66, %union.acpi_parse_object** %69, align 8
  br label %76

70:                                               ; preds = %41
  %71 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %72 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %73 = bitcast %union.acpi_parse_object* %72 to %struct.TYPE_4__*
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store %union.acpi_parse_object* %71, %union.acpi_parse_object** %75, align 8
  br label %76

76:                                               ; preds = %70, %65
  br label %77

77:                                               ; preds = %80, %76
  %78 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %79 = icmp ne %union.acpi_parse_object* %78, null
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %82 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %83 = bitcast %union.acpi_parse_object* %82 to %struct.TYPE_4__*
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store %union.acpi_parse_object* %81, %union.acpi_parse_object** %84, align 8
  %85 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %86 = bitcast %union.acpi_parse_object* %85 to %struct.TYPE_4__*
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load %union.acpi_parse_object*, %union.acpi_parse_object** %87, align 8
  store %union.acpi_parse_object* %88, %union.acpi_parse_object** %4, align 8
  %89 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %90 = bitcast %union.acpi_parse_object* %89 to %struct.TYPE_4__*
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %77

94:                                               ; preds = %77
  %95 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
