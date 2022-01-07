; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_is_acpi_data_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_is_acpi_data_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32* }

@acpi_data_fwnode_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_acpi_data_node(%struct.fwnode_handle* %0) #0 {
  %2 = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %2, align 8
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %2, align 8
  %4 = call i32 @IS_ERR_OR_NULL(%struct.fwnode_handle* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %2, align 8
  %8 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, @acpi_data_fwnode_ops
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i1 [ false, %1 ], [ %10, %6 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare dso_local i32 @IS_ERR_OR_NULL(%struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
