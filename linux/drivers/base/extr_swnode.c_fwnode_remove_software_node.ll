; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_fwnode_remove_software_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_fwnode_remove_software_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.swnode = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@swnode_root_ids = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fwnode_remove_software_node(%struct.fwnode_handle* %0) #0 {
  %2 = alloca %struct.fwnode_handle*, align 8
  %3 = alloca %struct.swnode*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %2, align 8
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %2, align 8
  %5 = call %struct.swnode* @to_swnode(%struct.fwnode_handle* %4)
  store %struct.swnode* %5, %struct.swnode** %3, align 8
  %6 = load %struct.swnode*, %struct.swnode** %3, align 8
  %7 = icmp ne %struct.swnode* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %35

9:                                                ; preds = %1
  %10 = load %struct.swnode*, %struct.swnode** %3, align 8
  %11 = getelementptr inbounds %struct.swnode, %struct.swnode* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load %struct.swnode*, %struct.swnode** %3, align 8
  %16 = getelementptr inbounds %struct.swnode, %struct.swnode* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.swnode*, %struct.swnode** %3, align 8
  %20 = getelementptr inbounds %struct.swnode, %struct.swnode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ida_simple_remove(i32* %18, i32 %21)
  %23 = load %struct.swnode*, %struct.swnode** %3, align 8
  %24 = getelementptr inbounds %struct.swnode, %struct.swnode* %23, i32 0, i32 2
  %25 = call i32 @list_del(i32* %24)
  br label %31

26:                                               ; preds = %9
  %27 = load %struct.swnode*, %struct.swnode** %3, align 8
  %28 = getelementptr inbounds %struct.swnode, %struct.swnode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ida_simple_remove(i32* @swnode_root_ids, i32 %29)
  br label %31

31:                                               ; preds = %26, %14
  %32 = load %struct.swnode*, %struct.swnode** %3, align 8
  %33 = getelementptr inbounds %struct.swnode, %struct.swnode* %32, i32 0, i32 0
  %34 = call i32 @kobject_put(i32* %33)
  br label %35

35:                                               ; preds = %31, %8
  ret void
}

declare dso_local %struct.swnode* @to_swnode(%struct.fwnode_handle*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
