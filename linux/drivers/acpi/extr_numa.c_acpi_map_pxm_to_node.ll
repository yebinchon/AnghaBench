; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_numa.c_acpi_map_pxm_to_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_numa.c_acpi_map_pxm_to_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PXM_DOMAINS = common dso_local global i32 0, align 4
@numa_off = common dso_local global i64 0, align 8
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@pxm_to_node_map = common dso_local global i32* null, align 8
@nodes_found_map = common dso_local global i32 0, align 4
@MAX_NUMNODES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_map_pxm_to_node(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MAX_PXM_DOMAINS, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = load i64, i64* @numa_off, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %7, %1
  %15 = load i32, i32* @NUMA_NO_NODE, align 4
  store i32 %15, i32* %2, align 4
  br label %43

16:                                               ; preds = %11
  %17 = load i32*, i32** @pxm_to_node_map, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @NUMA_NO_NODE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %16
  %26 = load i32, i32* @nodes_found_map, align 4
  %27 = call i64 @nodes_weight(i32 %26)
  %28 = load i64, i64* @MAX_NUMNODES, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @NUMA_NO_NODE, align 4
  store i32 %31, i32* %2, align 4
  br label %43

32:                                               ; preds = %25
  %33 = load i32, i32* @nodes_found_map, align 4
  %34 = call i32 @first_unset_node(i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @__acpi_map_pxm_to_node(i32 %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @nodes_found_map, align 4
  %40 = call i32 @node_set(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %16
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %30, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @nodes_weight(i32) #1

declare dso_local i32 @first_unset_node(i32) #1

declare dso_local i32 @__acpi_map_pxm_to_node(i32, i32) #1

declare dso_local i32 @node_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
