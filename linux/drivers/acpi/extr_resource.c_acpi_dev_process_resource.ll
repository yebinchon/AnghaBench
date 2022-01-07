; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_process_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_process_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i32 }
%struct.res_proc_context = type { i32 (%struct.acpi_resource.0*, i32)*, i32, i32 }
%struct.acpi_resource.0 = type opaque
%struct.resource_win = type { %struct.resource }
%struct.resource = type { i32 }

@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @acpi_dev_process_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_dev_process_resource(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.res_proc_context*, align 8
  %7 = alloca %struct.resource_win, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.res_proc_context*
  store %struct.res_proc_context* %13, %struct.res_proc_context** %6, align 8
  %14 = getelementptr inbounds %struct.resource_win, %struct.resource_win* %7, i32 0, i32 0
  store %struct.resource* %14, %struct.resource** %8, align 8
  %15 = load %struct.res_proc_context*, %struct.res_proc_context** %6, align 8
  %16 = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %15, i32 0, i32 0
  %17 = load i32 (%struct.acpi_resource.0*, i32)*, i32 (%struct.acpi_resource.0*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.acpi_resource.0*, i32)* %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %2
  %20 = load %struct.res_proc_context*, %struct.res_proc_context** %6, align 8
  %21 = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %20, i32 0, i32 0
  %22 = load i32 (%struct.acpi_resource.0*, i32)*, i32 (%struct.acpi_resource.0*, i32)** %21, align 8
  %23 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %24 = bitcast %struct.acpi_resource* %23 to %struct.acpi_resource.0*
  %25 = load %struct.res_proc_context*, %struct.res_proc_context** %6, align 8
  %26 = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %22(%struct.acpi_resource.0* %24, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.res_proc_context*, %struct.res_proc_context** %6, align 8
  %34 = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %35, i32* %3, align 4
  br label %86

36:                                               ; preds = %19
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @AE_OK, align 4
  store i32 %40, i32* %3, align 4
  br label %86

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42, %2
  %44 = call i32 @memset(%struct.resource_win* %7, i32 0, i32 4)
  %45 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %46 = load %struct.resource*, %struct.resource** %8, align 8
  %47 = call i64 @acpi_dev_resource_memory(%struct.acpi_resource* %45, %struct.resource* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %43
  %50 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %51 = load %struct.resource*, %struct.resource** %8, align 8
  %52 = call i64 @acpi_dev_resource_io(%struct.acpi_resource* %50, %struct.resource* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %56 = call i64 @acpi_dev_resource_address_space(%struct.acpi_resource* %55, %struct.resource_win* %7)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %60 = call i64 @acpi_dev_resource_ext_address_space(%struct.acpi_resource* %59, %struct.resource_win* %7)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %54, %49, %43
  %63 = load %struct.res_proc_context*, %struct.res_proc_context** %6, align 8
  %64 = call i32 @acpi_dev_new_resource_entry(%struct.resource_win* %7, %struct.res_proc_context* %63)
  store i32 %64, i32* %3, align 4
  br label %86

65:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %81, %65
  %67 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.resource*, %struct.resource** %8, align 8
  %70 = call i64 @acpi_dev_resource_interrupt(%struct.acpi_resource* %67, i32 %68, %struct.resource* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load %struct.res_proc_context*, %struct.res_proc_context** %6, align 8
  %74 = call i32 @acpi_dev_new_resource_entry(%struct.resource_win* %7, %struct.res_proc_context* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i64 @ACPI_FAILURE(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %3, align 4
  br label %86

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %66

84:                                               ; preds = %66
  %85 = load i32, i32* @AE_OK, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %78, %62, %39, %31
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @memset(%struct.resource_win*, i32, i32) #1

declare dso_local i64 @acpi_dev_resource_memory(%struct.acpi_resource*, %struct.resource*) #1

declare dso_local i64 @acpi_dev_resource_io(%struct.acpi_resource*, %struct.resource*) #1

declare dso_local i64 @acpi_dev_resource_address_space(%struct.acpi_resource*, %struct.resource_win*) #1

declare dso_local i64 @acpi_dev_resource_ext_address_space(%struct.acpi_resource*, %struct.resource_win*) #1

declare dso_local i32 @acpi_dev_new_resource_entry(%struct.resource_win*, %struct.res_proc_context*) #1

declare dso_local i64 @acpi_dev_resource_interrupt(%struct.acpi_resource*, i32, %struct.resource*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
