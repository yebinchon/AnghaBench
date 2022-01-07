; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c_domain_add_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c_domain_add_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i64, i64, i32 }
%struct.list_head = type { i32 }
%struct.rdt_domain = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Could't find cache id for cpu %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@rdt_mon_enable_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.rdt_resource*)* @domain_add_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @domain_add_cpu(i32 %0, %struct.rdt_resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdt_resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.rdt_domain*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.rdt_resource* %1, %struct.rdt_resource** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %10 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @get_cache_id(i32 %8, i32 %11)
  store i32 %12, i32* %5, align 4
  store %struct.list_head* null, %struct.list_head** %6, align 8
  %13 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.rdt_domain* @rdt_find_domain(%struct.rdt_resource* %13, i32 %14, %struct.list_head** %6)
  store %struct.rdt_domain* %15, %struct.rdt_domain** %7, align 8
  %16 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %17 = call i64 @IS_ERR(%struct.rdt_domain* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %82

22:                                               ; preds = %2
  %23 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %24 = icmp ne %struct.rdt_domain* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %28 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %27, i32 0, i32 2
  %29 = call i32 @cpumask_set_cpu(i32 %26, i32* %28)
  br label %82

30:                                               ; preds = %22
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @cpu_to_node(i32 %32)
  %34 = call %struct.rdt_domain* @kzalloc_node(i32 12, i32 %31, i32 %33)
  store %struct.rdt_domain* %34, %struct.rdt_domain** %7, align 8
  %35 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %36 = icmp ne %struct.rdt_domain* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %82

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %41 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %44 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %43, i32 0, i32 2
  %45 = call i32 @cpumask_set_cpu(i32 %42, i32* %44)
  %46 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %47 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %38
  %51 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %52 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %53 = call i64 @domain_setup_ctrlval(%struct.rdt_resource* %51, %struct.rdt_domain* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %57 = call i32 @kfree(%struct.rdt_domain* %56)
  br label %82

58:                                               ; preds = %50, %38
  %59 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %60 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %65 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %66 = call i64 @domain_setup_mon_state(%struct.rdt_resource* %64, %struct.rdt_domain* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %70 = call i32 @kfree(%struct.rdt_domain* %69)
  br label %82

71:                                               ; preds = %63, %58
  %72 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %73 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %72, i32 0, i32 1
  %74 = load %struct.list_head*, %struct.list_head** %6, align 8
  %75 = call i32 @list_add_tail(i32* %73, %struct.list_head* %74)
  %76 = call i64 @static_branch_unlikely(i32* @rdt_mon_enable_key)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %80 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %81 = call i32 @mkdir_mondata_subdir_allrdtgrp(%struct.rdt_resource* %79, %struct.rdt_domain* %80)
  br label %82

82:                                               ; preds = %19, %25, %37, %55, %68, %78, %71
  ret void
}

declare dso_local i32 @get_cache_id(i32, i32) #1

declare dso_local %struct.rdt_domain* @rdt_find_domain(%struct.rdt_resource*, i32, %struct.list_head**) #1

declare dso_local i64 @IS_ERR(%struct.rdt_domain*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local %struct.rdt_domain* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i64 @domain_setup_ctrlval(%struct.rdt_resource*, %struct.rdt_domain*) #1

declare dso_local i32 @kfree(%struct.rdt_domain*) #1

declare dso_local i64 @domain_setup_mon_state(%struct.rdt_resource*, %struct.rdt_domain*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i64 @static_branch_unlikely(i32*) #1

declare dso_local i32 @mkdir_mondata_subdir_allrdtgrp(%struct.rdt_resource*, %struct.rdt_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
