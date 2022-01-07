; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dswstate.c_acpi_ds_delete_walk_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dswstate.c_acpi_ds_delete_walk_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i64, %union.acpi_generic_state*, %union.acpi_generic_state*, %union.acpi_generic_state*, %struct.TYPE_4__ }
%union.acpi_generic_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %union.acpi_generic_state* }
%struct.TYPE_4__ = type { i64 }

@ds_delete_walk_state = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_WALK = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%p is not a valid walk state\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%p walk still has a scope list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca %struct.acpi_walk_state*, align 8
  %3 = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %2, align 8
  %4 = load i32, i32* @ds_delete_walk_state, align 4
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %6 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %4, %struct.acpi_walk_state* %5)
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %8 = icmp ne %struct.acpi_walk_state* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @return_VOID, align 4
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %13 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ACPI_DESC_TYPE_WALK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load i32, i32* @AE_INFO, align 4
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %20 = ptrtoint %struct.acpi_walk_state* %19 to i32
  %21 = call i32 @ACPI_ERROR(i32 %20)
  %22 = load i32, i32* @return_VOID, align 4
  br label %23

23:                                               ; preds = %17, %11
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %25 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i32, i32* @AE_INFO, align 4
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %32 = ptrtoint %struct.acpi_walk_state* %31 to i32
  %33 = call i32 @ACPI_ERROR(i32 %32)
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %35 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %34, i32 0, i32 4
  %36 = call i32 @acpi_ps_cleanup_scope(%struct.TYPE_4__* %35)
  br label %37

37:                                               ; preds = %29, %23
  br label %38

38:                                               ; preds = %43, %37
  %39 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %40 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %39, i32 0, i32 3
  %41 = load %union.acpi_generic_state*, %union.acpi_generic_state** %40, align 8
  %42 = icmp ne %union.acpi_generic_state* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %45 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %44, i32 0, i32 3
  %46 = load %union.acpi_generic_state*, %union.acpi_generic_state** %45, align 8
  store %union.acpi_generic_state* %46, %union.acpi_generic_state** %3, align 8
  %47 = load %union.acpi_generic_state*, %union.acpi_generic_state** %3, align 8
  %48 = bitcast %union.acpi_generic_state* %47 to %struct.TYPE_3__*
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %union.acpi_generic_state*, %union.acpi_generic_state** %49, align 8
  %51 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %52 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %51, i32 0, i32 3
  store %union.acpi_generic_state* %50, %union.acpi_generic_state** %52, align 8
  %53 = load %union.acpi_generic_state*, %union.acpi_generic_state** %3, align 8
  %54 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %53)
  br label %38

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %61, %55
  %57 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %58 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %57, i32 0, i32 2
  %59 = load %union.acpi_generic_state*, %union.acpi_generic_state** %58, align 8
  %60 = icmp ne %union.acpi_generic_state* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %63 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %62, i32 0, i32 2
  %64 = load %union.acpi_generic_state*, %union.acpi_generic_state** %63, align 8
  store %union.acpi_generic_state* %64, %union.acpi_generic_state** %3, align 8
  %65 = load %union.acpi_generic_state*, %union.acpi_generic_state** %3, align 8
  %66 = bitcast %union.acpi_generic_state* %65 to %struct.TYPE_3__*
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load %union.acpi_generic_state*, %union.acpi_generic_state** %67, align 8
  %69 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %70 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %69, i32 0, i32 2
  store %union.acpi_generic_state* %68, %union.acpi_generic_state** %70, align 8
  %71 = load %union.acpi_generic_state*, %union.acpi_generic_state** %3, align 8
  %72 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %71)
  br label %56

73:                                               ; preds = %56
  br label %74

74:                                               ; preds = %79, %73
  %75 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %76 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %75, i32 0, i32 1
  %77 = load %union.acpi_generic_state*, %union.acpi_generic_state** %76, align 8
  %78 = icmp ne %union.acpi_generic_state* %77, null
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %81 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %80, i32 0, i32 1
  %82 = load %union.acpi_generic_state*, %union.acpi_generic_state** %81, align 8
  store %union.acpi_generic_state* %82, %union.acpi_generic_state** %3, align 8
  %83 = load %union.acpi_generic_state*, %union.acpi_generic_state** %3, align 8
  %84 = bitcast %union.acpi_generic_state* %83 to %struct.TYPE_3__*
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load %union.acpi_generic_state*, %union.acpi_generic_state** %85, align 8
  %87 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %88 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %87, i32 0, i32 1
  store %union.acpi_generic_state* %86, %union.acpi_generic_state** %88, align 8
  %89 = load %union.acpi_generic_state*, %union.acpi_generic_state** %3, align 8
  %90 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %89)
  br label %74

91:                                               ; preds = %74
  %92 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %93 = call i32 @ACPI_FREE(%struct.acpi_walk_state* %92)
  %94 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ps_cleanup_scope(%struct.TYPE_4__*) #1

declare dso_local i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_walk_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
