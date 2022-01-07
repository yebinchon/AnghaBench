; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_software_node_fwnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_software_node_fwnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.software_node = type { i32 }
%struct.swnode = type { %struct.fwnode_handle }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fwnode_handle* @software_node_fwnode(%struct.software_node* %0) #0 {
  %2 = alloca %struct.software_node*, align 8
  %3 = alloca %struct.swnode*, align 8
  store %struct.software_node* %0, %struct.software_node** %2, align 8
  %4 = load %struct.software_node*, %struct.software_node** %2, align 8
  %5 = call %struct.swnode* @software_node_to_swnode(%struct.software_node* %4)
  store %struct.swnode* %5, %struct.swnode** %3, align 8
  %6 = load %struct.swnode*, %struct.swnode** %3, align 8
  %7 = icmp ne %struct.swnode* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.swnode*, %struct.swnode** %3, align 8
  %10 = getelementptr inbounds %struct.swnode, %struct.swnode* %9, i32 0, i32 0
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi %struct.fwnode_handle* [ %10, %8 ], [ null, %11 ]
  ret %struct.fwnode_handle* %13
}

declare dso_local %struct.swnode* @software_node_to_swnode(%struct.software_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
