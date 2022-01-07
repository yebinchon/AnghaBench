; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evgpeinit.c_acpi_ev_gpe_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evgpeinit.c_acpi_ev_gpe_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }

@ev_gpe_initialize = common dso_local global i32 0, align 4
@ACPI_DB_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Initializing General Purpose Events (GPEs):\0A\00", align 1
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@acpi_gbl_FADT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ACPI_GPE_REGISTER_WIDTH = common dso_local global i32 0, align 4
@acpi_gbl_fadt_gpe_device = common dso_local global i32 0, align 4
@acpi_gbl_gpe_fadt_blocks = common dso_local global i32* null, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not create GPE Block 0\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"GPE0 block (GPE 0 to %u) overlaps the GPE1 block (GPE %u to %u) - Ignoring GPE1\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not create GPE Block 1\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"There are no GPE blocks defined in the FADT\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_gpe_initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @ev_gpe_initialize, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load i32, i32* @ACPI_DB_INIT, align 4
  %9 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([45 x i8]* @.str to i32))
  %10 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %11 = call i32 @acpi_ut_acquire_mutex(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @ACPI_FAILURE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @return_ACPI_STATUS(i32 %16)
  br label %18

18:                                               ; preds = %15, %0
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 0), align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 5, i32 1), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 0), align 8
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @ACPI_GPE_REGISTER_WIDTH, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @acpi_gbl_fadt_gpe_device, align 4
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 5, i32 1), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 5, i32 0), align 8
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 3), align 4
  %36 = load i32*, i32** @acpi_gbl_gpe_fadt_blocks, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = call i32 @acpi_ev_create_gpe_block(i32 %31, i64 %32, i32 %33, i32 %34, i32 0, i32 %35, i32* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @ACPI_FAILURE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %24
  %43 = load i32, i32* @AE_INFO, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([29 x i8]* @.str.1 to i32))
  br label %46

46:                                               ; preds = %42, %24
  br label %47

47:                                               ; preds = %46, %21, %18
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 1), align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %98

50:                                               ; preds = %47
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 4, i32 1), align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %98

53:                                               ; preds = %50
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 1), align 4
  %55 = sdiv i32 %54, 2
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %2, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 2), align 8
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load i32, i32* @AE_INFO, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 2), align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 2), align 8
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @ACPI_GPE_REGISTER_WIDTH, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sub nsw i32 %69, 1
  %71 = add nsw i32 %66, %70
  %72 = call i32 @ACPI_ERROR(i32 %71)
  store i32 0, i32* %3, align 4
  br label %97

73:                                               ; preds = %58, %53
  %74 = load i32, i32* @acpi_gbl_fadt_gpe_device, align 4
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 4, i32 1), align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 4, i32 0), align 8
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 2), align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 3), align 4
  %80 = load i32*, i32** @acpi_gbl_gpe_fadt_blocks, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = call i32 @acpi_ev_create_gpe_block(i32 %74, i64 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32* %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i64 @ACPI_FAILURE(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %73
  %87 = load i32, i32* @AE_INFO, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([29 x i8]* @.str.3 to i32))
  br label %90

90:                                               ; preds = %86, %73
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 2), align 8
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @ACPI_GPE_REGISTER_WIDTH, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sub nsw i32 %94, 1
  %96 = add nsw i32 %91, %95
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %90, %62
  br label %98

98:                                               ; preds = %97, %50, %47
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @ACPI_DB_INIT, align 4
  %105 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([45 x i8]* @.str.4 to i32))
  %106 = load i32, i32* @AE_OK, align 4
  store i32 %106, i32* %5, align 4
  br label %108

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %103
  %109 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %110 = call i32 @acpi_ut_release_mutex(i32 %109)
  %111 = load i32, i32* @AE_OK, align 4
  %112 = call i32 @return_ACPI_STATUS(i32 %111)
  %113 = load i32, i32* %1, align 4
  ret i32 %113
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ev_create_gpe_block(i32, i64, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
