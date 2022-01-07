; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_trees_depth__init.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_trees_depth__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_objects_filter_options = type { i32 }
%struct.filter = type { i32, i32, %struct.filter_trees_depth_data* }
%struct.filter_trees_depth_data = type { i64, i32, i32 }

@filter_trees_depth = common dso_local global i32 0, align 4
@filter_trees_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_objects_filter_options*, %struct.filter*)* @filter_trees_depth__init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_trees_depth__init(%struct.list_objects_filter_options* %0, %struct.filter* %1) #0 {
  %3 = alloca %struct.list_objects_filter_options*, align 8
  %4 = alloca %struct.filter*, align 8
  %5 = alloca %struct.filter_trees_depth_data*, align 8
  store %struct.list_objects_filter_options* %0, %struct.list_objects_filter_options** %3, align 8
  store %struct.filter* %1, %struct.filter** %4, align 8
  %6 = call %struct.filter_trees_depth_data* @xcalloc(i32 1, i32 16)
  store %struct.filter_trees_depth_data* %6, %struct.filter_trees_depth_data** %5, align 8
  %7 = load %struct.filter_trees_depth_data*, %struct.filter_trees_depth_data** %5, align 8
  %8 = getelementptr inbounds %struct.filter_trees_depth_data, %struct.filter_trees_depth_data* %7, i32 0, i32 2
  %9 = call i32 @oidmap_init(i32* %8, i32 0)
  %10 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %3, align 8
  %11 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.filter_trees_depth_data*, %struct.filter_trees_depth_data** %5, align 8
  %14 = getelementptr inbounds %struct.filter_trees_depth_data, %struct.filter_trees_depth_data* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.filter_trees_depth_data*, %struct.filter_trees_depth_data** %5, align 8
  %16 = getelementptr inbounds %struct.filter_trees_depth_data, %struct.filter_trees_depth_data* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.filter_trees_depth_data*, %struct.filter_trees_depth_data** %5, align 8
  %18 = load %struct.filter*, %struct.filter** %4, align 8
  %19 = getelementptr inbounds %struct.filter, %struct.filter* %18, i32 0, i32 2
  store %struct.filter_trees_depth_data* %17, %struct.filter_trees_depth_data** %19, align 8
  %20 = load i32, i32* @filter_trees_depth, align 4
  %21 = load %struct.filter*, %struct.filter** %4, align 8
  %22 = getelementptr inbounds %struct.filter, %struct.filter* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @filter_trees_free, align 4
  %24 = load %struct.filter*, %struct.filter** %4, align 8
  %25 = getelementptr inbounds %struct.filter, %struct.filter* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  ret void
}

declare dso_local %struct.filter_trees_depth_data* @xcalloc(i32, i32) #1

declare dso_local i32 @oidmap_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
