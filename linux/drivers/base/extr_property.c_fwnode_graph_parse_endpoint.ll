; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_property.c_fwnode_graph_parse_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_property.c_fwnode_graph_parse_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.fwnode_endpoint = type { i32 }

@graph_parse_endpoint = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fwnode_graph_parse_endpoint(%struct.fwnode_handle* %0, %struct.fwnode_endpoint* %1) #0 {
  %3 = alloca %struct.fwnode_handle*, align 8
  %4 = alloca %struct.fwnode_endpoint*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %3, align 8
  store %struct.fwnode_endpoint* %1, %struct.fwnode_endpoint** %4, align 8
  %5 = load %struct.fwnode_endpoint*, %struct.fwnode_endpoint** %4, align 8
  %6 = call i32 @memset(%struct.fwnode_endpoint* %5, i32 0, i32 4)
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %8 = load i32, i32* @graph_parse_endpoint, align 4
  %9 = load %struct.fwnode_endpoint*, %struct.fwnode_endpoint** %4, align 8
  %10 = call i32 @fwnode_call_int_op(%struct.fwnode_handle* %7, i32 %8, %struct.fwnode_endpoint* %9)
  ret i32 %10
}

declare dso_local i32 @memset(%struct.fwnode_endpoint*, i32, i32) #1

declare dso_local i32 @fwnode_call_int_op(%struct.fwnode_handle*, i32, %struct.fwnode_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
