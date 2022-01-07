; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_fwnode_graph_parse_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_fwnode_graph_parse_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type opaque
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"endpoint\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)* @acpi_fwnode_graph_parse_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_fwnode_graph_parse_endpoint(%struct.fwnode_handle* %0, %struct.fwnode_endpoint* %1) #0 {
  %3 = alloca %struct.fwnode_handle*, align 8
  %4 = alloca %struct.fwnode_endpoint*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %3, align 8
  store %struct.fwnode_endpoint* %1, %struct.fwnode_endpoint** %4, align 8
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %7 = call %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle* %6)
  store %struct.fwnode_handle* %7, %struct.fwnode_handle** %5, align 8
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %9 = load %struct.fwnode_endpoint*, %struct.fwnode_endpoint** %4, align 8
  %10 = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %9, i32 0, i32 2
  store %struct.fwnode_handle* %8, %struct.fwnode_handle** %10, align 8
  %11 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %12 = load %struct.fwnode_endpoint*, %struct.fwnode_endpoint** %4, align 8
  %13 = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %12, i32 0, i32 1
  %14 = call i64 @fwnode_property_read_u32(%struct.fwnode_handle* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %18 = load %struct.fwnode_endpoint*, %struct.fwnode_endpoint** %4, align 8
  %19 = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %18, i32 0, i32 1
  %20 = call i64 @fwnode_property_read_u32(%struct.fwnode_handle* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %19)
  br label %21

21:                                               ; preds = %16, %2
  %22 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %23 = load %struct.fwnode_endpoint*, %struct.fwnode_endpoint** %4, align 8
  %24 = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %23, i32 0, i32 0
  %25 = call i64 @fwnode_property_read_u32(%struct.fwnode_handle* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %29 = load %struct.fwnode_endpoint*, %struct.fwnode_endpoint** %4, align 8
  %30 = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %29, i32 0, i32 0
  %31 = call i64 @fwnode_property_read_u32(%struct.fwnode_handle* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %30)
  br label %32

32:                                               ; preds = %27, %21
  ret i32 0
}

declare dso_local %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle*) #1

declare dso_local i64 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
