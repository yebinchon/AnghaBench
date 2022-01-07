; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_perflib.c_acpi_processor_get_platform_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_perflib.c_acpi_processor_get_platform_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_PPC\00", align 1
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@acpi_processor_ppc_in_use = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Evaluating _PPC\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"CPU %d: _PPC is %d - frequency %s limited\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Failed to update perflib freq constraint: CPU%d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*)* @acpi_processor_get_platform_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_get_platform_limit(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %8 = icmp ne %struct.acpi_processor* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %90

12:                                               ; preds = %1
  %13 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @acpi_evaluate_integer(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %5)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @AE_NOT_FOUND, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 1, i32* @acpi_processor_ppc_in_use, align 4
  br label %21

21:                                               ; preds = %20, %12
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @ACPI_FAILURE(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @AE_NOT_FOUND, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* @AE_INFO, align 4
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([16 x i8]* @.str.1 to i32))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %90

35:                                               ; preds = %25, %21
  %36 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %37 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %5, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %40, i8* %44)
  %46 = load i64, i64* %5, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %49 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %52 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp uge i64 %50, %55
  br i1 %56, label %66, label %57

57:                                               ; preds = %35
  %58 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %59 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %58, i32 0, i32 3
  %60 = call i32 @freq_qos_request_active(i32* %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57, %35
  store i32 0, i32* %2, align 4
  br label %90

67:                                               ; preds = %57
  %68 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %69 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %68, i32 0, i32 3
  %70 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %71 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i64, i64* %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %78, 1000
  %80 = call i32 @freq_qos_update_request(i32* %69, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %67
  %84 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %85 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %83, %67
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %66, %29, %9
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i64 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @freq_qos_request_active(i32*) #1

declare dso_local i32 @freq_qos_update_request(i32*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
