; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_software_node_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_software_node_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fwnode_handle = type { %struct.fwnode_handle* }
%struct.swnode = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"software_node\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @software_node_notify(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca %struct.swnode*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.fwnode_handle* @dev_fwnode(%struct.device* %9)
  store %struct.fwnode_handle* %10, %struct.fwnode_handle** %6, align 8
  %11 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %12 = icmp ne %struct.fwnode_handle* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

14:                                               ; preds = %2
  %15 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %16 = call i32 @is_software_node(%struct.fwnode_handle* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %20 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %19, i32 0, i32 0
  %21 = load %struct.fwnode_handle*, %struct.fwnode_handle** %20, align 8
  store %struct.fwnode_handle* %21, %struct.fwnode_handle** %6, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %24 = call i32 @is_software_node(%struct.fwnode_handle* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %72

27:                                               ; preds = %22
  %28 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %29 = call %struct.swnode* @to_swnode(%struct.fwnode_handle* %28)
  store %struct.swnode* %29, %struct.swnode** %7, align 8
  %30 = load i64, i64* %5, align 8
  switch i64 %30, label %70 [
    i64 129, label %31
    i64 128, label %58
  ]

31:                                               ; preds = %27
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  %34 = load %struct.swnode*, %struct.swnode** %7, align 8
  %35 = getelementptr inbounds %struct.swnode, %struct.swnode* %34, i32 0, i32 0
  %36 = call i32 @sysfs_create_link(i32* %33, i32* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %71

40:                                               ; preds = %31
  %41 = load %struct.swnode*, %struct.swnode** %7, align 8
  %42 = getelementptr inbounds %struct.swnode, %struct.swnode* %41, i32 0, i32 0
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i8* @dev_name(%struct.device* %45)
  %47 = call i32 @sysfs_create_link(i32* %42, i32* %44, i8* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 0
  %53 = call i32 @sysfs_remove_link(i32* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %71

54:                                               ; preds = %40
  %55 = load %struct.swnode*, %struct.swnode** %7, align 8
  %56 = getelementptr inbounds %struct.swnode, %struct.swnode* %55, i32 0, i32 0
  %57 = call i32 @kobject_get(i32* %56)
  br label %71

58:                                               ; preds = %27
  %59 = load %struct.swnode*, %struct.swnode** %7, align 8
  %60 = getelementptr inbounds %struct.swnode, %struct.swnode* %59, i32 0, i32 0
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i8* @dev_name(%struct.device* %61)
  %63 = call i32 @sysfs_remove_link(i32* %60, i8* %62)
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = getelementptr inbounds %struct.device, %struct.device* %64, i32 0, i32 0
  %66 = call i32 @sysfs_remove_link(i32* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.swnode*, %struct.swnode** %7, align 8
  %68 = getelementptr inbounds %struct.swnode, %struct.swnode* %67, i32 0, i32 0
  %69 = call i32 @kobject_put(i32* %68)
  br label %71

70:                                               ; preds = %27
  br label %71

71:                                               ; preds = %70, %58, %54, %50, %39
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %26, %13
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.fwnode_handle* @dev_fwnode(%struct.device*) #1

declare dso_local i32 @is_software_node(%struct.fwnode_handle*) #1

declare dso_local %struct.swnode* @to_swnode(%struct.fwnode_handle*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @kobject_get(i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
