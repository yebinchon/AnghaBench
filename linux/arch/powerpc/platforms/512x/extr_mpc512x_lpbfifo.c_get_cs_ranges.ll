; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_mpc512x_lpbfifo.c_get_cs_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_mpc512x_lpbfifo.c_get_cs_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"fsl,mpc5121-localbus\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@lpbfifo = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @get_cs_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cs_ranges(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %4, align 4
  %12 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %87

17:                                               ; preds = %1
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = call i32* @of_get_property(%struct.device_node* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %19, i32** %6, align 8
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call i32* @of_get_property(%struct.device_node* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %17
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %28, %24, %17
  br label %83

36:                                               ; preds = %31
  %37 = load %struct.device_node*, %struct.device_node** %5, align 8
  %38 = call i32 @of_property_count_u32_elems(%struct.device_node* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = srem i32 %42, 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %36
  br label %83

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = sdiv i32 %47, 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpbfifo, i32 0, i32 0), align 8
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpbfifo, i32 0, i32 0), align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.TYPE_4__* @devm_kcalloc(%struct.device* %49, i32 %50, i32 4, i32 %51)
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpbfifo, i32 0, i32 1), align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpbfifo, i32 0, i32 1), align 8
  %54 = icmp ne %struct.TYPE_4__* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  br label %83

56:                                               ; preds = %46
  %57 = load %struct.device_node*, %struct.device_node** %5, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpbfifo, i32 0, i32 1), align 8
  %59 = bitcast %struct.TYPE_4__* %58 to i32*
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @of_property_read_u32_array(%struct.device_node* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %83

64:                                               ; preds = %56
  store i64 0, i64* %9, align 8
  br label %65

65:                                               ; preds = %79, %64
  %66 = load i64, i64* %9, align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpbfifo, i32 0, i32 0), align 8
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %66, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpbfifo, i32 0, i32 1), align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %83

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %9, align 8
  br label %65

82:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %77, %63, %55, %45, %35
  %84 = load %struct.device_node*, %struct.device_node** %5, align 8
  %85 = call i32 @of_node_put(%struct.device_node* %84)
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %15
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_count_u32_elems(%struct.device_node*, i8*) #1

declare dso_local %struct.TYPE_4__* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
