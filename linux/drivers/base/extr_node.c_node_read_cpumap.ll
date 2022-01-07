; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_node.c_node_read_cpumap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_node.c_node_read_cpumap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NR_CPUS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i8*)* @node_read_cpumap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_read_cpumap(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.node*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.node* @to_node(%struct.device* %11)
  store %struct.node* %12, %struct.node** %10, align 8
  %13 = load i32, i32* @NR_CPUS, align 4
  %14 = sdiv i32 %13, 32
  %15 = mul nsw i32 %14, 9
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp sgt i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUILD_BUG_ON(i32 %19)
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @alloc_cpumask_var(i32* %9, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.node*, %struct.node** %10, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cpumask_of_node(i32 %30)
  %32 = load i32, i32* @cpu_online_mask, align 4
  %33 = call i32 @cpumask_and(i32 %26, i32 %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @cpumap_print_to_pagebuf(i32 %34, i8* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @free_cpumask_var(i32 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %25, %24
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.node* @to_node(%struct.device*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @cpumask_and(i32, i32, i32) #1

declare dso_local i32 @cpumask_of_node(i32) #1

declare dso_local i32 @cpumap_print_to_pagebuf(i32, i8*, i32) #1

declare dso_local i32 @free_cpumask_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
