; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c_domain_remove_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c_domain_remove_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i32 }
%struct.rdt_domain = type { i32, i32, i32, i32, %struct.rdt_domain*, %struct.rdt_domain*, i32, %struct.rdt_domain*, %struct.rdt_domain*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [34 x i8] c"Could't find cache id for cpu %d\0A\00", align 1
@rdt_mon_enable_key = common dso_local global i32 0, align 4
@rdt_resources_all = common dso_local global %struct.rdt_resource* null, align 8
@RDT_RESOURCE_L3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.rdt_resource*)* @domain_remove_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @domain_remove_cpu(i32 %0, %struct.rdt_resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdt_resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rdt_domain*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.rdt_resource* %1, %struct.rdt_resource** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %9 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @get_cache_id(i32 %7, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.rdt_domain* @rdt_find_domain(%struct.rdt_resource* %12, i32 %13, i32* null)
  store %struct.rdt_domain* %14, %struct.rdt_domain** %6, align 8
  %15 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %16 = call i64 @IS_ERR_OR_NULL(%struct.rdt_domain* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %138

21:                                               ; preds = %2
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %24 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %23, i32 0, i32 12
  %25 = call i32 @cpumask_clear_cpu(i32 %22, i32* %24)
  %26 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %27 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %26, i32 0, i32 12
  %28 = call i64 @cpumask_empty(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %96

30:                                               ; preds = %21
  %31 = call i64 @static_branch_unlikely(i32* @rdt_mon_enable_key)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %35 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %36 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rmdir_mondata_subdir_allrdtgrp(%struct.rdt_resource* %34, i32 %37)
  br label %39

39:                                               ; preds = %33, %30
  %40 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %41 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %40, i32 0, i32 10
  %42 = call i32 @list_del(i32* %41)
  %43 = call i64 (...) @is_mbm_enabled()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %47 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %46, i32 0, i32 3
  %48 = call i32 @cancel_delayed_work(i32* %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = call i64 (...) @is_llc_occupancy_enabled()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %54 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %55 = call i64 @has_busy_rmid(%struct.rdt_resource* %53, %struct.rdt_domain* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %59 = call i32 @__check_limbo(%struct.rdt_domain* %58, i32 1)
  %60 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %61 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %60, i32 0, i32 2
  %62 = call i32 @cancel_delayed_work(i32* %61)
  br label %63

63:                                               ; preds = %57, %52, %49
  %64 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %65 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %64, i32 0, i32 9
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = icmp ne %struct.TYPE_2__* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %70 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %69, i32 0, i32 9
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %68, %63
  %74 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %75 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %74, i32 0, i32 8
  %76 = load %struct.rdt_domain*, %struct.rdt_domain** %75, align 8
  %77 = call i32 @kfree(%struct.rdt_domain* %76)
  %78 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %79 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %78, i32 0, i32 7
  %80 = load %struct.rdt_domain*, %struct.rdt_domain** %79, align 8
  %81 = call i32 @kfree(%struct.rdt_domain* %80)
  %82 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %83 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @bitmap_free(i32 %84)
  %86 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %87 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %86, i32 0, i32 5
  %88 = load %struct.rdt_domain*, %struct.rdt_domain** %87, align 8
  %89 = call i32 @kfree(%struct.rdt_domain* %88)
  %90 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %91 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %90, i32 0, i32 4
  %92 = load %struct.rdt_domain*, %struct.rdt_domain** %91, align 8
  %93 = call i32 @kfree(%struct.rdt_domain* %92)
  %94 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %95 = call i32 @kfree(%struct.rdt_domain* %94)
  br label %138

96:                                               ; preds = %21
  %97 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %98 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %99 = load i64, i64* @RDT_RESOURCE_L3, align 8
  %100 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %98, i64 %99
  %101 = icmp eq %struct.rdt_resource* %97, %100
  br i1 %101, label %102, label %138

102:                                              ; preds = %96
  %103 = call i64 (...) @is_mbm_enabled()
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load i32, i32* %3, align 4
  %107 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %108 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %113 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %112, i32 0, i32 3
  %114 = call i32 @cancel_delayed_work(i32* %113)
  %115 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %116 = call i32 @mbm_setup_overflow_handler(%struct.rdt_domain* %115, i32 0)
  br label %117

117:                                              ; preds = %111, %105, %102
  %118 = call i64 (...) @is_llc_occupancy_enabled()
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %117
  %121 = load i32, i32* %3, align 4
  %122 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %123 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %121, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %120
  %127 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %128 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %129 = call i64 @has_busy_rmid(%struct.rdt_resource* %127, %struct.rdt_domain* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %133 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %132, i32 0, i32 2
  %134 = call i32 @cancel_delayed_work(i32* %133)
  %135 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %136 = call i32 @cqm_setup_limbo_handler(%struct.rdt_domain* %135, i32 0)
  br label %137

137:                                              ; preds = %131, %126, %120, %117
  br label %138

138:                                              ; preds = %18, %73, %137, %96
  ret void
}

declare dso_local i32 @get_cache_id(i32, i32) #1

declare dso_local %struct.rdt_domain* @rdt_find_domain(%struct.rdt_resource*, i32, i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.rdt_domain*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32*) #1

declare dso_local i64 @cpumask_empty(i32*) #1

declare dso_local i64 @static_branch_unlikely(i32*) #1

declare dso_local i32 @rmdir_mondata_subdir_allrdtgrp(%struct.rdt_resource*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @is_mbm_enabled(...) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i64 @is_llc_occupancy_enabled(...) #1

declare dso_local i64 @has_busy_rmid(%struct.rdt_resource*, %struct.rdt_domain*) #1

declare dso_local i32 @__check_limbo(%struct.rdt_domain*, i32) #1

declare dso_local i32 @kfree(%struct.rdt_domain*) #1

declare dso_local i32 @bitmap_free(i32) #1

declare dso_local i32 @mbm_setup_overflow_handler(%struct.rdt_domain*, i32) #1

declare dso_local i32 @cqm_setup_limbo_handler(%struct.rdt_domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
