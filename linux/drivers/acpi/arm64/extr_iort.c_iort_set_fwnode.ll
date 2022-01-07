; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/arm64/extr_iort.c_iort_set_fwnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/arm64/extr_iort.c_iort_set_fwnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_iort_node = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.iort_fwnode = type { i32, %struct.fwnode_handle*, %struct.acpi_iort_node* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iort_fwnode_lock = common dso_local global i32 0, align 4
@iort_fwnode_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_iort_node*, %struct.fwnode_handle*)* @iort_set_fwnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iort_set_fwnode(%struct.acpi_iort_node* %0, %struct.fwnode_handle* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_iort_node*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca %struct.iort_fwnode*, align 8
  store %struct.acpi_iort_node* %0, %struct.acpi_iort_node** %4, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %5, align 8
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.iort_fwnode* @kzalloc(i32 24, i32 %7)
  store %struct.iort_fwnode* %8, %struct.iort_fwnode** %6, align 8
  %9 = load %struct.iort_fwnode*, %struct.iort_fwnode** %6, align 8
  %10 = icmp ne %struct.iort_fwnode* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.iort_fwnode*, %struct.iort_fwnode** %6, align 8
  %20 = getelementptr inbounds %struct.iort_fwnode, %struct.iort_fwnode* %19, i32 0, i32 0
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.acpi_iort_node*, %struct.acpi_iort_node** %4, align 8
  %23 = load %struct.iort_fwnode*, %struct.iort_fwnode** %6, align 8
  %24 = getelementptr inbounds %struct.iort_fwnode, %struct.iort_fwnode* %23, i32 0, i32 2
  store %struct.acpi_iort_node* %22, %struct.acpi_iort_node** %24, align 8
  %25 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %26 = load %struct.iort_fwnode*, %struct.iort_fwnode** %6, align 8
  %27 = getelementptr inbounds %struct.iort_fwnode, %struct.iort_fwnode* %26, i32 0, i32 1
  store %struct.fwnode_handle* %25, %struct.fwnode_handle** %27, align 8
  %28 = call i32 @spin_lock(i32* @iort_fwnode_lock)
  %29 = load %struct.iort_fwnode*, %struct.iort_fwnode** %6, align 8
  %30 = getelementptr inbounds %struct.iort_fwnode, %struct.iort_fwnode* %29, i32 0, i32 0
  %31 = call i32 @list_add_tail(i32* %30, i32* @iort_fwnode_list)
  %32 = call i32 @spin_unlock(i32* @iort_fwnode_lock)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %18, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.iort_fwnode* @kzalloc(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
