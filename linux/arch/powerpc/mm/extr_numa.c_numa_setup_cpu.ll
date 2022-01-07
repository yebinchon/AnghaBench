; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_numa.c_numa_setup_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_numa.c_numa_setup_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@numa_cpu_lookup_table = common dso_local global i32* null, align 8
@first_online_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @numa_setup_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @numa_setup_cpu(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @NUMA_NO_NODE, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32*, i32** @numa_cpu_lookup_table, align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @map_cpu_to_node(i64 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %1
  %18 = load i64, i64* %3, align 8
  %19 = call %struct.device_node* @of_get_cpu_node(i64 %18, i32* null)
  store %struct.device_node* %19, %struct.device_node** %5, align 8
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = call i32 @WARN_ON(i32 1)
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @cpu_present(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %32

28:                                               ; preds = %22
  br label %47

29:                                               ; preds = %17
  %30 = load %struct.device_node*, %struct.device_node** %5, align 8
  %31 = call i32 @of_node_to_nid_single(%struct.device_node* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %27
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @node_possible(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* @first_online_node, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i64, i64* %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @map_cpu_to_node(i64 %42, i32 %43)
  %45 = load %struct.device_node*, %struct.device_node** %5, align 8
  %46 = call i32 @of_node_put(%struct.device_node* %45)
  br label %47

47:                                               ; preds = %41, %28
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @map_cpu_to_node(i64, i32) #1

declare dso_local %struct.device_node* @of_get_cpu_node(i64, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @cpu_present(i64) #1

declare dso_local i32 @of_node_to_nid_single(%struct.device_node*) #1

declare dso_local i32 @node_possible(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
