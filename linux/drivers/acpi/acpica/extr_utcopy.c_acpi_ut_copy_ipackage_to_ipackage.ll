; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utcopy.c_acpi_ut_copy_ipackage_to_ipackage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utcopy.c_acpi_ut_copy_ipackage_to_ipackage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.acpi_walk_state = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@ut_copy_ipackage_to_ipackage = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Package allocation failure\00", align 1
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@acpi_ut_copy_ielement_to_ielement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_walk_state*)* @acpi_ut_copy_ipackage_to_ipackage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ut_copy_ipackage_to_ipackage(%union.acpi_operand_object* %0, %union.acpi_operand_object* %1, %struct.acpi_walk_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %struct.acpi_walk_state*, align 8
  %8 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %5, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %6, align 8
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %7, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @ut_copy_ipackage_to_ipackage, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %13 = bitcast %union.acpi_operand_object* %12 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %17 = bitcast %union.acpi_operand_object* %16 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %20 = bitcast %union.acpi_operand_object* %19 to %struct.TYPE_3__*
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %24 = bitcast %union.acpi_operand_object* %23 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %27 = bitcast %union.acpi_operand_object* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %31 = bitcast %union.acpi_operand_object* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i64 %29, i64* %32, align 8
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %34 = bitcast %union.acpi_operand_object* %33 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @ACPI_ALLOCATE_ZEROED(i32 %41)
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %44 = bitcast %union.acpi_operand_object* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %47 = bitcast %union.acpi_operand_object* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %3
  %52 = load i32, i32* @AE_INFO, align 4
  %53 = call i32 @ACPI_ERROR(i32 ptrtoint ([27 x i8]* @.str to i32))
  %54 = load i32, i32* @AE_NO_MEMORY, align 4
  %55 = call i32 @return_ACPI_STATUS(i32 %54)
  br label %56

56:                                               ; preds = %51, %3
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %59 = load i32, i32* @acpi_ut_copy_ielement_to_ielement, align 4
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %61 = call i32 @acpi_ut_walk_package_tree(%union.acpi_operand_object* %57, %union.acpi_operand_object* %58, i32 %59, %struct.acpi_walk_state* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @ACPI_FAILURE(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %67 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %66)
  br label %68

68:                                               ; preds = %65, %56
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @return_ACPI_STATUS(i32 %69)
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_walk_package_tree(%union.acpi_operand_object*, %union.acpi_operand_object*, i32, %struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
