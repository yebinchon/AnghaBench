; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-imc.c_imc_pmu_create.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-imc.c_imc_pmu_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.imc_pmu = type { i32, %struct.imc_pmu*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.imc_pmu* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"IMC PMU %s Register failed\0A\00", align 1
@IMC_DOMAIN_NEST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i32, i32)* @imc_pmu_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imc_pmu_create(%struct.device_node* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.imc_pmu*, align 8
  %10 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %89

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.imc_pmu* @kzalloc(i32 32, i32 %17)
  store %struct.imc_pmu* %18, %struct.imc_pmu** %9, align 8
  %19 = load %struct.imc_pmu*, %struct.imc_pmu** %9, align 8
  %20 = icmp ne %struct.imc_pmu* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %89

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.imc_pmu*, %struct.imc_pmu** %9, align 8
  %27 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = load %struct.imc_pmu*, %struct.imc_pmu** %9, align 8
  %30 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %29, i32 0, i32 3
  %31 = call i32 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %85

37:                                               ; preds = %24
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i32 @of_property_read_u32(%struct.device_node* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  %42 = load %struct.device_node*, %struct.device_node** %5, align 8
  %43 = load %struct.imc_pmu*, %struct.imc_pmu** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @imc_get_mem_addr_nest(%struct.device_node* %42, %struct.imc_pmu* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %85

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %37
  %52 = load %struct.device_node*, %struct.device_node** %5, align 8
  %53 = load %struct.imc_pmu*, %struct.imc_pmu** %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @init_imc_pmu(%struct.device_node* %52, %struct.imc_pmu* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %51
  %59 = load %struct.imc_pmu*, %struct.imc_pmu** %9, align 8
  %60 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.imc_pmu*, %struct.imc_pmu** %61, align 8
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.imc_pmu* %62)
  %64 = load %struct.imc_pmu*, %struct.imc_pmu** %9, align 8
  %65 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.imc_pmu*, %struct.imc_pmu** %66, align 8
  %68 = call i32 @kfree(%struct.imc_pmu* %67)
  %69 = load %struct.imc_pmu*, %struct.imc_pmu** %9, align 8
  %70 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* @IMC_DOMAIN_NEST, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %58
  %76 = load %struct.imc_pmu*, %struct.imc_pmu** %9, align 8
  %77 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %76, i32 0, i32 1
  %78 = load %struct.imc_pmu*, %struct.imc_pmu** %77, align 8
  %79 = call i32 @kfree(%struct.imc_pmu* %78)
  br label %80

80:                                               ; preds = %75, %58
  %81 = load %struct.imc_pmu*, %struct.imc_pmu** %9, align 8
  %82 = call i32 @kfree(%struct.imc_pmu* %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %89

84:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %89

85:                                               ; preds = %47, %34
  %86 = load %struct.imc_pmu*, %struct.imc_pmu** %9, align 8
  %87 = call i32 @kfree(%struct.imc_pmu* %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %84, %80, %21, %13
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.imc_pmu* @kzalloc(i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @imc_get_mem_addr_nest(%struct.device_node*, %struct.imc_pmu*, i32) #1

declare dso_local i32 @init_imc_pmu(%struct.device_node*, %struct.imc_pmu*, i32) #1

declare dso_local i32 @pr_err(i8*, %struct.imc_pmu*) #1

declare dso_local i32 @kfree(%struct.imc_pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
