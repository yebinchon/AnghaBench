; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_fwnode_create_software_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_fwnode_create_software_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property_entry = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.software_node = type { i32* }
%struct.swnode = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fwnode_handle* @fwnode_create_software_node(%struct.property_entry* %0, %struct.fwnode_handle* %1) #0 {
  %3 = alloca %struct.fwnode_handle*, align 8
  %4 = alloca %struct.property_entry*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca %struct.software_node*, align 8
  %7 = alloca %struct.swnode*, align 8
  %8 = alloca i32, align 4
  store %struct.property_entry* %0, %struct.property_entry** %4, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %5, align 8
  store %struct.swnode* null, %struct.swnode** %7, align 8
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %10 = icmp ne %struct.fwnode_handle* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %13 = call i64 @IS_ERR(%struct.fwnode_handle* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %17 = call %struct.fwnode_handle* @ERR_CAST(%struct.fwnode_handle* %16)
  store %struct.fwnode_handle* %17, %struct.fwnode_handle** %3, align 8
  br label %64

18:                                               ; preds = %11
  %19 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %20 = call i32 @is_software_node(%struct.fwnode_handle* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.fwnode_handle* @ERR_PTR(i32 %24)
  store %struct.fwnode_handle* %25, %struct.fwnode_handle** %3, align 8
  br label %64

26:                                               ; preds = %18
  %27 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %28 = call %struct.swnode* @to_swnode(%struct.fwnode_handle* %27)
  store %struct.swnode* %28, %struct.swnode** %7, align 8
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.software_node* @kzalloc(i32 8, i32 %30)
  store %struct.software_node* %31, %struct.software_node** %6, align 8
  %32 = load %struct.software_node*, %struct.software_node** %6, align 8
  %33 = icmp ne %struct.software_node* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.fwnode_handle* @ERR_PTR(i32 %36)
  store %struct.fwnode_handle* %37, %struct.fwnode_handle** %3, align 8
  br label %64

38:                                               ; preds = %29
  %39 = load %struct.software_node*, %struct.software_node** %6, align 8
  %40 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  %41 = call i32 @software_node_register_properties(%struct.software_node* %39, %struct.property_entry* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.software_node*, %struct.software_node** %6, align 8
  %46 = call i32 @kfree(%struct.software_node* %45)
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.fwnode_handle* @ERR_PTR(i32 %47)
  store %struct.fwnode_handle* %48, %struct.fwnode_handle** %3, align 8
  br label %64

49:                                               ; preds = %38
  %50 = load %struct.swnode*, %struct.swnode** %7, align 8
  %51 = icmp ne %struct.swnode* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.swnode*, %struct.swnode** %7, align 8
  %54 = getelementptr inbounds %struct.swnode, %struct.swnode* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  br label %57

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i32* [ %55, %52 ], [ null, %56 ]
  %59 = load %struct.software_node*, %struct.software_node** %6, align 8
  %60 = getelementptr inbounds %struct.software_node, %struct.software_node* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  %61 = load %struct.software_node*, %struct.software_node** %6, align 8
  %62 = load %struct.swnode*, %struct.swnode** %7, align 8
  %63 = call %struct.fwnode_handle* @swnode_register(%struct.software_node* %61, %struct.swnode* %62, i32 1)
  store %struct.fwnode_handle* %63, %struct.fwnode_handle** %3, align 8
  br label %64

64:                                               ; preds = %57, %44, %34, %22, %15
  %65 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  ret %struct.fwnode_handle* %65
}

declare dso_local i64 @IS_ERR(%struct.fwnode_handle*) #1

declare dso_local %struct.fwnode_handle* @ERR_CAST(%struct.fwnode_handle*) #1

declare dso_local i32 @is_software_node(%struct.fwnode_handle*) #1

declare dso_local %struct.fwnode_handle* @ERR_PTR(i32) #1

declare dso_local %struct.swnode* @to_swnode(%struct.fwnode_handle*) #1

declare dso_local %struct.software_node* @kzalloc(i32, i32) #1

declare dso_local i32 @software_node_register_properties(%struct.software_node*, %struct.property_entry*) #1

declare dso_local i32 @kfree(%struct.software_node*) #1

declare dso_local %struct.fwnode_handle* @swnode_register(%struct.software_node*, %struct.swnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
