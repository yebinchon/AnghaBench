; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-bus.c_parse_mc_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-bus.c_parse_mc_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"missing or empty ranges property for device tree node '%pOFn'\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"malformed ranges property '%pOFn'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32*, i32*, i32*, i32**)* @parse_mc_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mc_ranges(%struct.device* %0, i32* %1, i32* %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32** %4, i32*** %11, align 8
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %16, align 8
  %20 = load %struct.device_node*, %struct.device_node** %16, align 8
  %21 = call i32* @of_get_property(%struct.device_node* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %14)
  %22 = load i32**, i32*** %11, align 8
  store i32* %21, i32** %22, align 8
  %23 = load i32**, i32*** %11, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26, %5
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = load %struct.device_node*, %struct.device_node** %16, align 8
  %32 = call i32 @dev_warn(%struct.device* %30, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %31)
  store i32 0, i32* %6, align 4
  br label %89

33:                                               ; preds = %26
  %34 = load %struct.device_node*, %struct.device_node** %16, align 8
  %35 = call i32 @of_n_addr_cells(%struct.device_node* %34)
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.device_node*, %struct.device_node** %16, align 8
  %38 = call i32* @of_get_property(%struct.device_node* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %38, i32** %12, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @be32_to_cpup(i32* %42)
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  br label %49

45:                                               ; preds = %33
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.device_node*, %struct.device_node** %16, align 8
  %51 = call i32* @of_get_property(%struct.device_node* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32* %51, i32** %12, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @be32_to_cpup(i32* %55)
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  br label %62

58:                                               ; preds = %49
  %59 = load %struct.device_node*, %struct.device_node** %16, align 8
  %60 = call i32 @of_n_size_cells(%struct.device_node* %59)
  %61 = load i32*, i32** %10, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %64, %66
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %67, %69
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %15, align 4
  %77 = srem i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %62
  %80 = load %struct.device*, %struct.device** %7, align 8
  %81 = load %struct.device_node*, %struct.device_node** %16, align 8
  %82 = call i32 @dev_err(%struct.device* %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %89

85:                                               ; preds = %62
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = sdiv i32 %86, %87
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %85, %79, %29
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, %struct.device_node*) #1

declare dso_local i32 @of_n_addr_cells(%struct.device_node*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @of_n_size_cells(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
