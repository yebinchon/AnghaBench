; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_remove_ddw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_remove_ddw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.dynamic_dma_window_prop = type { i32, i32 }
%struct.property = type { i32, %struct.dynamic_dma_window_prop* }

@.str = private unnamed_addr constant [19 x i8] c"ibm,ddw-applicable\00", align 1
@DIRECT64_PROPNAME = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"%pOF failed to clear tces in window.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%pOF successfully cleared tces in window.\0A\00", align 1
@.str.3 = private unnamed_addr constant [93 x i8] c"%pOF: failed to remove direct window: rtas returned %d to ibm,remove-pe-dma-window(%x) %llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [97 x i8] c"%pOF: successfully removed direct window: rtas returned %d to ibm,remove-pe-dma-window(%x) %llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"%pOF: failed to remove direct window property: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*, i32)* @remove_ddw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_ddw(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dynamic_dma_window_prop*, align 8
  %6 = alloca %struct.property*, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %12 = call i32 @of_property_read_u32_array(%struct.device_node* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %11, i32 3)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.device_node*, %struct.device_node** %3, align 8
  %14 = load i32, i32* @DIRECT64_PROPNAME, align 4
  %15 = call %struct.property* @of_find_property(%struct.device_node* %13, i32 %14, i32* null)
  store %struct.property* %15, %struct.property** %6, align 8
  %16 = load %struct.property*, %struct.property** %6, align 8
  %17 = icmp ne %struct.property* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %90

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load %struct.property*, %struct.property** %6, align 8
  %24 = getelementptr inbounds %struct.property, %struct.property* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 8
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %19
  br label %76

29:                                               ; preds = %22
  %30 = load %struct.property*, %struct.property** %6, align 8
  %31 = getelementptr inbounds %struct.property, %struct.property* %30, i32 0, i32 1
  %32 = load %struct.dynamic_dma_window_prop*, %struct.dynamic_dma_window_prop** %31, align 8
  store %struct.dynamic_dma_window_prop* %32, %struct.dynamic_dma_window_prop** %5, align 8
  %33 = load %struct.dynamic_dma_window_prop*, %struct.dynamic_dma_window_prop** %5, align 8
  %34 = getelementptr inbounds %struct.dynamic_dma_window_prop, %struct.dynamic_dma_window_prop* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @be32_to_cpu(i32 %35)
  store i64 %36, i64* %8, align 8
  %37 = load %struct.dynamic_dma_window_prop*, %struct.dynamic_dma_window_prop** %5, align 8
  %38 = getelementptr inbounds %struct.dynamic_dma_window_prop, %struct.dynamic_dma_window_prop* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @be32_to_cpu(i32 %39)
  %41 = load i64, i64* @PAGE_SHIFT, align 8
  %42 = sub i64 %40, %41
  %43 = shl i64 1, %42
  %44 = load %struct.dynamic_dma_window_prop*, %struct.dynamic_dma_window_prop** %5, align 8
  %45 = call i32 @tce_clearrange_multi_pSeriesLP(i32 0, i64 %43, %struct.dynamic_dma_window_prop* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = load %struct.device_node*, %struct.device_node** %3, align 8
  %50 = call i32 (i8*, %struct.device_node*, ...) @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %49)
  br label %54

51:                                               ; preds = %29
  %52 = load %struct.device_node*, %struct.device_node** %3, align 8
  %53 = call i32 (i8*, %struct.device_node*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @rtas_call(i32 %56, i32 1, i32 1, i32* null, i64 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.device_node*, %struct.device_node** %3, align 8
  %63 = load i32, i32* %9, align 4
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %8, align 8
  %67 = call i32 (i8*, %struct.device_node*, ...) @pr_warn(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %62, i32 %63, i32 %65, i64 %66)
  br label %75

68:                                               ; preds = %54
  %69 = load %struct.device_node*, %struct.device_node** %3, align 8
  %70 = load i32, i32* %9, align 4
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %8, align 8
  %74 = call i32 (i8*, %struct.device_node*, ...) @pr_debug(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %69, i32 %70, i32 %72, i64 %73)
  br label %75

75:                                               ; preds = %68, %61
  br label %76

76:                                               ; preds = %75, %28
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.device_node*, %struct.device_node** %3, align 8
  %81 = load %struct.property*, %struct.property** %6, align 8
  %82 = call i32 @of_remove_property(%struct.device_node* %80, %struct.property* %81)
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.device_node*, %struct.device_node** %3, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 (i8*, %struct.device_node*, ...) @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), %struct.device_node* %87, i32 %88)
  br label %90

90:                                               ; preds = %18, %86, %83
  ret void
}

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i32, i32*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @tce_clearrange_multi_pSeriesLP(i32, i64, %struct.dynamic_dma_window_prop*) #1

declare dso_local i32 @pr_warn(i8*, %struct.device_node*, ...) #1

declare dso_local i32 @pr_debug(i8*, %struct.device_node*, ...) #1

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i64) #1

declare dso_local i32 @of_remove_property(%struct.device_node*, %struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
