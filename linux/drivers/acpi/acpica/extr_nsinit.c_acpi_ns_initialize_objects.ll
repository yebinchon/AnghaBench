; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsinit.c_acpi_ns_initialize_objects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsinit.c_acpi_ns_initialize_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_init_walk_info = type { i32, i32, i32 }

@ns_initialize_objects = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"[Init] Completing Initialization of ACPI Objects\0A\00", align 1
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"**** Starting initialization of namespace objects ****\0A\00", align 1
@ACPI_DB_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Final data object initialization: \00", align 1
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@acpi_ns_init_one_object = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"During WalkNamespace\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Namespace contains %u (0x%X) objects\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"%u Control Methods found\0A%u Op Regions found\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_initialize_objects() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_init_walk_info, align 4
  %4 = load i32, i32* @ns_initialize_objects, align 4
  %5 = call i32 @ACPI_FUNCTION_TRACE(i32 %4)
  %6 = load i32, i32* @ACPI_DB_EXEC, align 4
  %7 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([50 x i8]* @.str to i32))
  %8 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %9 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([56 x i8]* @.str.1 to i32))
  %10 = load i32, i32* @ACPI_DB_INIT, align 4
  %11 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([35 x i8]* @.str.2 to i32))
  %12 = call i32 @memset(%struct.acpi_init_walk_info* %3, i32 0, i32 12)
  %13 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %14 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %15 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %16 = load i32, i32* @acpi_ns_init_one_object, align 4
  %17 = call i32 @acpi_walk_namespace(i32 %13, i32 %14, i32 %15, i32 %16, i32* null, %struct.acpi_init_walk_info* %3, i32* null)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @ACPI_FAILURE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %0
  %22 = load i32, i32* @AE_INFO, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([21 x i8]* @.str.3 to i32))
  br label %25

25:                                               ; preds = %21, %0
  %26 = load i32, i32* @ACPI_DB_INIT, align 4
  %27 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %3, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %3, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %30)
  %32 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %33 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %3, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %3, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ACPI_DEBUG_PRINT(i32 %36)
  %38 = load i32, i32* @AE_OK, align 4
  %39 = call i32 @return_ACPI_STATUS(i32 %38)
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @memset(%struct.acpi_init_walk_info*, i32, i32) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, i32*, %struct.acpi_init_walk_info*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
