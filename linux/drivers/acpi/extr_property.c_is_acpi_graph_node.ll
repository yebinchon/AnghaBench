; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_is_acpi_graph_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_is_acpi_graph_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwnode_handle*, i8*)* @is_acpi_graph_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_acpi_graph_node(%struct.fwnode_handle* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @strlen(i8* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %14 = call i32 @is_acpi_data_node(%struct.fwnode_handle* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %47

17:                                               ; preds = %12
  %18 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %19 = call %struct.TYPE_2__* @to_acpi_data_node(%struct.fwnode_handle* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %23 = call i64 @fwnode_property_present(%struct.fwnode_handle* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @strncmp(i8* %26, i8* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 64
  br i1 %38, label %44, label %39

39:                                               ; preds = %31, %25, %17
  %40 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @fwnode_property_present(%struct.fwnode_handle* %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %31
  %45 = phi i1 [ true, %31 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @is_acpi_data_node(%struct.fwnode_handle*) #1

declare dso_local %struct.TYPE_2__* @to_acpi_data_node(%struct.fwnode_handle*) #1

declare dso_local i64 @fwnode_property_present(%struct.fwnode_handle*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
