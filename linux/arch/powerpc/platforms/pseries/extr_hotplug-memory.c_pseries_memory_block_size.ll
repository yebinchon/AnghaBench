; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_pseries_memory_block_size.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_pseries_memory_block_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@MIN_MEMORY_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"/ibm,dynamic-reconfiguration-memory\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ibm,lmb-size\00", align 1
@pseries = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"/memory@0\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"/memory@%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pseries_memory_block_size() #0 {
  %1 = alloca %struct.device_node*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.resource, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  %7 = load i32, i32* @MIN_MEMORY_BLOCK_SIZE, align 4
  store i32 %7, i32* %2, align 4
  %8 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %8, %struct.device_node** %1, align 8
  %9 = load %struct.device_node*, %struct.device_node** %1, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %0
  %12 = load %struct.device_node*, %struct.device_node** %1, align 8
  %13 = call i32* @of_get_property(%struct.device_node* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @be64_to_cpup(i32* %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %11
  %20 = load %struct.device_node*, %struct.device_node** %1, align 8
  %21 = call i32 @of_node_put(%struct.device_node* %20)
  br label %62

22:                                               ; preds = %0
  %23 = load i32, i32* @pseries, align 4
  %24 = call i64 @machine_is(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  %27 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store %struct.device_node* %27, %struct.device_node** %1, align 8
  %28 = load %struct.device_node*, %struct.device_node** %1, align 8
  %29 = icmp ne %struct.device_node* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.device_node*, %struct.device_node** %1, align 8
  %32 = call i32 @of_address_to_resource(%struct.device_node* %31, i32 0, %struct.resource* %3)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = call i32 @resource_size(%struct.resource* %3)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = load %struct.device_node*, %struct.device_node** %1, align 8
  %38 = call i32 @of_node_put(%struct.device_node* %37)
  br label %39

39:                                               ; preds = %36, %26
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %47 = call %struct.device_node* @of_find_node_by_path(i8* %46)
  store %struct.device_node* %47, %struct.device_node** %1, align 8
  %48 = load %struct.device_node*, %struct.device_node** %1, align 8
  %49 = icmp ne %struct.device_node* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.device_node*, %struct.device_node** %1, align 8
  %52 = call i32 @of_address_to_resource(%struct.device_node* %51, i32 0, %struct.resource* %3)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = call i32 @resource_size(%struct.resource* %3)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = load %struct.device_node*, %struct.device_node** %1, align 8
  %58 = call i32 @of_node_put(%struct.device_node* %57)
  br label %59

59:                                               ; preds = %56, %42
  br label %60

60:                                               ; preds = %59, %39
  br label %61

61:                                               ; preds = %60, %22
  br label %62

62:                                               ; preds = %61, %19
  %63 = load i32, i32* %2, align 4
  %64 = zext i32 %63 to i64
  ret i64 %64
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be64_to_cpup(i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @machine_is(i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
