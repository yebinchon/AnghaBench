; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_swnode_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_swnode_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32* }
%struct.software_node = type { i32, i32 }
%struct.swnode = type { i32, i32, %struct.fwnode_handle, %struct.TYPE_5__, i32, i32, i32, %struct.swnode*, %struct.software_node* }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@swnode_root_ids = common dso_local global i32 0, align 4
@swnode_kset = common dso_local global i32 0, align 4
@software_node_ops = common dso_local global i32 0, align 4
@software_node_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"node%d\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fwnode_handle* (%struct.software_node*, %struct.swnode*, i32)* @swnode_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fwnode_handle* @swnode_register(%struct.software_node* %0, %struct.swnode* %1, i32 %2) #0 {
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.software_node*, align 8
  %6 = alloca %struct.swnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.swnode*, align 8
  %9 = alloca i32, align 4
  store %struct.software_node* %0, %struct.software_node** %5, align 8
  store %struct.swnode* %1, %struct.swnode** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.swnode* @kzalloc(i32 48, i32 %10)
  store %struct.swnode* %11, %struct.swnode** %8, align 8
  %12 = load %struct.swnode*, %struct.swnode** %8, align 8
  %13 = icmp ne %struct.swnode* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  br label %121

17:                                               ; preds = %3
  %18 = load %struct.swnode*, %struct.swnode** %6, align 8
  %19 = icmp ne %struct.swnode* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.swnode*, %struct.swnode** %6, align 8
  %22 = getelementptr inbounds %struct.swnode, %struct.swnode* %21, i32 0, i32 6
  br label %24

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32* [ %22, %20 ], [ @swnode_root_ids, %23 ]
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @ida_simple_get(i32* %25, i32 0, i32 0, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.swnode*, %struct.swnode** %8, align 8
  %32 = call i32 @kfree(%struct.swnode* %31)
  br label %121

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.swnode*, %struct.swnode** %8, align 8
  %36 = getelementptr inbounds %struct.swnode, %struct.swnode* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.software_node*, %struct.software_node** %5, align 8
  %38 = load %struct.swnode*, %struct.swnode** %8, align 8
  %39 = getelementptr inbounds %struct.swnode, %struct.swnode* %38, i32 0, i32 8
  store %struct.software_node* %37, %struct.software_node** %39, align 8
  %40 = load %struct.swnode*, %struct.swnode** %6, align 8
  %41 = load %struct.swnode*, %struct.swnode** %8, align 8
  %42 = getelementptr inbounds %struct.swnode, %struct.swnode* %41, i32 0, i32 7
  store %struct.swnode* %40, %struct.swnode** %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.swnode*, %struct.swnode** %8, align 8
  %45 = getelementptr inbounds %struct.swnode, %struct.swnode* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @swnode_kset, align 4
  %47 = load %struct.swnode*, %struct.swnode** %8, align 8
  %48 = getelementptr inbounds %struct.swnode, %struct.swnode* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.swnode*, %struct.swnode** %8, align 8
  %51 = getelementptr inbounds %struct.swnode, %struct.swnode* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %51, i32 0, i32 0
  store i32* @software_node_ops, i32** %52, align 8
  %53 = load %struct.swnode*, %struct.swnode** %8, align 8
  %54 = getelementptr inbounds %struct.swnode, %struct.swnode* %53, i32 0, i32 6
  %55 = call i32 @ida_init(i32* %54)
  %56 = load %struct.swnode*, %struct.swnode** %8, align 8
  %57 = getelementptr inbounds %struct.swnode, %struct.swnode* %56, i32 0, i32 5
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.swnode*, %struct.swnode** %8, align 8
  %60 = getelementptr inbounds %struct.swnode, %struct.swnode* %59, i32 0, i32 4
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.software_node*, %struct.software_node** %5, align 8
  %63 = getelementptr inbounds %struct.software_node, %struct.software_node* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %33
  %67 = load %struct.swnode*, %struct.swnode** %8, align 8
  %68 = getelementptr inbounds %struct.swnode, %struct.swnode* %67, i32 0, i32 3
  %69 = load %struct.swnode*, %struct.swnode** %6, align 8
  %70 = icmp ne %struct.swnode* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.swnode*, %struct.swnode** %6, align 8
  %73 = getelementptr inbounds %struct.swnode, %struct.swnode* %72, i32 0, i32 3
  br label %75

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi %struct.TYPE_5__* [ %73, %71 ], [ null, %74 ]
  %77 = load %struct.software_node*, %struct.software_node** %5, align 8
  %78 = getelementptr inbounds %struct.software_node, %struct.software_node* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @kobject_init_and_add(%struct.TYPE_5__* %68, i32* @software_node_type, %struct.TYPE_5__* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %79)
  store i32 %80, i32* %9, align 4
  br label %96

81:                                               ; preds = %33
  %82 = load %struct.swnode*, %struct.swnode** %8, align 8
  %83 = getelementptr inbounds %struct.swnode, %struct.swnode* %82, i32 0, i32 3
  %84 = load %struct.swnode*, %struct.swnode** %6, align 8
  %85 = icmp ne %struct.swnode* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.swnode*, %struct.swnode** %6, align 8
  %88 = getelementptr inbounds %struct.swnode, %struct.swnode* %87, i32 0, i32 3
  br label %90

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi %struct.TYPE_5__* [ %88, %86 ], [ null, %89 ]
  %92 = load %struct.swnode*, %struct.swnode** %8, align 8
  %93 = getelementptr inbounds %struct.swnode, %struct.swnode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @kobject_init_and_add(%struct.TYPE_5__* %83, i32* @software_node_type, %struct.TYPE_5__* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %90, %75
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load %struct.swnode*, %struct.swnode** %8, align 8
  %101 = getelementptr inbounds %struct.swnode, %struct.swnode* %100, i32 0, i32 3
  %102 = call i32 @kobject_put(%struct.TYPE_5__* %101)
  %103 = load i32, i32* %9, align 4
  %104 = call %struct.fwnode_handle* @ERR_PTR(i32 %103)
  store %struct.fwnode_handle* %104, %struct.fwnode_handle** %4, align 8
  br label %132

105:                                              ; preds = %96
  %106 = load %struct.swnode*, %struct.swnode** %6, align 8
  %107 = icmp ne %struct.swnode* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load %struct.swnode*, %struct.swnode** %8, align 8
  %110 = getelementptr inbounds %struct.swnode, %struct.swnode* %109, i32 0, i32 5
  %111 = load %struct.swnode*, %struct.swnode** %6, align 8
  %112 = getelementptr inbounds %struct.swnode, %struct.swnode* %111, i32 0, i32 4
  %113 = call i32 @list_add_tail(i32* %110, i32* %112)
  br label %114

114:                                              ; preds = %108, %105
  %115 = load %struct.swnode*, %struct.swnode** %8, align 8
  %116 = getelementptr inbounds %struct.swnode, %struct.swnode* %115, i32 0, i32 3
  %117 = load i32, i32* @KOBJ_ADD, align 4
  %118 = call i32 @kobject_uevent(%struct.TYPE_5__* %116, i32 %117)
  %119 = load %struct.swnode*, %struct.swnode** %8, align 8
  %120 = getelementptr inbounds %struct.swnode, %struct.swnode* %119, i32 0, i32 2
  store %struct.fwnode_handle* %120, %struct.fwnode_handle** %4, align 8
  br label %132

121:                                              ; preds = %30, %14
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load %struct.software_node*, %struct.software_node** %5, align 8
  %126 = getelementptr inbounds %struct.software_node, %struct.software_node* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @property_entries_free(i32 %127)
  br label %129

129:                                              ; preds = %124, %121
  %130 = load i32, i32* %9, align 4
  %131 = call %struct.fwnode_handle* @ERR_PTR(i32 %130)
  store %struct.fwnode_handle* %131, %struct.fwnode_handle** %4, align 8
  br label %132

132:                                              ; preds = %129, %114, %99
  %133 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  ret %struct.fwnode_handle* %133
}

declare dso_local %struct.swnode* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.swnode*) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kobject_init_and_add(%struct.TYPE_5__*, i32*, %struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @kobject_put(%struct.TYPE_5__*) #1

declare dso_local %struct.fwnode_handle* @ERR_PTR(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kobject_uevent(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @property_entries_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
