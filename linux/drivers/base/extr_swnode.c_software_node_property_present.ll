; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_software_node_property_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_software_node_property_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.swnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwnode_handle*, i8*)* @software_node_property_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @software_node_property_present(%struct.fwnode_handle* %0, i8* %1) #0 {
  %3 = alloca %struct.fwnode_handle*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.swnode*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %7 = call %struct.swnode* @to_swnode(%struct.fwnode_handle* %6)
  store %struct.swnode* %7, %struct.swnode** %5, align 8
  %8 = load %struct.swnode*, %struct.swnode** %5, align 8
  %9 = getelementptr inbounds %struct.swnode, %struct.swnode* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @property_entry_get(i32 %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local %struct.swnode* @to_swnode(%struct.fwnode_handle*) #1

declare dso_local i32 @property_entry_get(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
