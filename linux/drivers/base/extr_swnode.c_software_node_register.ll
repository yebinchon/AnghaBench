; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_software_node_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_software_node_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.software_node = type { %struct.software_node* }
%struct.swnode = type { i32 }

@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @software_node_register(%struct.software_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.software_node*, align 8
  %4 = alloca %struct.swnode*, align 8
  store %struct.software_node* %0, %struct.software_node** %3, align 8
  %5 = load %struct.software_node*, %struct.software_node** %3, align 8
  %6 = getelementptr inbounds %struct.software_node, %struct.software_node* %5, i32 0, i32 0
  %7 = load %struct.software_node*, %struct.software_node** %6, align 8
  %8 = call %struct.swnode* @software_node_to_swnode(%struct.software_node* %7)
  store %struct.swnode* %8, %struct.swnode** %4, align 8
  %9 = load %struct.software_node*, %struct.software_node** %3, align 8
  %10 = call %struct.swnode* @software_node_to_swnode(%struct.software_node* %9)
  %11 = icmp ne %struct.swnode* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EEXIST, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.software_node*, %struct.software_node** %3, align 8
  %17 = load %struct.swnode*, %struct.swnode** %4, align 8
  %18 = call i32 @swnode_register(%struct.software_node* %16, %struct.swnode* %17, i32 0)
  %19 = call i32 @PTR_ERR_OR_ZERO(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %15, %12
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.swnode* @software_node_to_swnode(%struct.software_node*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

declare dso_local i32 @swnode_register(%struct.software_node*, %struct.swnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
