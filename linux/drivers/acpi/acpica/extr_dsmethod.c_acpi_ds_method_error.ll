; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_method_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_method_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_6__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AE_CODE_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_method_error(i32 %0, %struct.acpi_walk_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @ACPI_SUCCESS(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @AE_CODE_CONTROL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %2
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %3, align 4
  br label %78

19:                                               ; preds = %12
  br i1 true, label %20, label %63

20:                                               ; preds = %19
  %21 = call i32 (...) @acpi_ex_exit_interpreter()
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %23 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %26 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @ACPI_PTR_DIFF(i32 %24, i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %31 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %30, i32 0, i32 3
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %20
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  br label %54

41:                                               ; preds = %20
  %42 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %43 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %42, i32 0, i32 2
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %48 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %46, %41
  br label %54

54:                                               ; preds = %53, %34
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %58 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @acpi_gbl_exception_handler(i32 %55, i32 %56, i32 %59, i64 %60, i32* null)
  store i32 %61, i32* %4, align 4
  %62 = call i32 (...) @acpi_ex_enter_interpreter()
  br label %63

63:                                               ; preds = %54, %19
  %64 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %65 = call i32 @acpi_ds_clear_implicit_return(%struct.acpi_walk_state* %64)
  %66 = load i32, i32* %4, align 4
  %67 = call i64 @ACPI_FAILURE(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %72 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %73 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @acpi_ds_dump_method_stack(i32 %70, %struct.acpi_walk_state* %71, i32 %74)
  br label %76

76:                                               ; preds = %69, %63
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %17
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_gbl_exception_handler(i32, i32, i32, i64, i32*) #1

declare dso_local i32 @acpi_ex_exit_interpreter(...) #1

declare dso_local i64 @ACPI_PTR_DIFF(i32, i32) #1

declare dso_local i32 @acpi_ex_enter_interpreter(...) #1

declare dso_local i32 @acpi_ds_clear_implicit_return(%struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ds_dump_method_stack(i32, %struct.acpi_walk_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
