; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_insert_stage_data.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_insert_stage_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stage_data = type { i32* }
%struct.repository = type { i32 }
%struct.tree = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.string_list = type { i32 }
%struct.string_list_item = type { %struct.stage_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stage_data* (%struct.repository*, i8*, %struct.tree*, %struct.tree*, %struct.tree*, %struct.string_list*)* @insert_stage_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stage_data* @insert_stage_data(%struct.repository* %0, i8* %1, %struct.tree* %2, %struct.tree* %3, %struct.tree* %4, %struct.string_list* %5) #0 {
  %7 = alloca %struct.repository*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tree*, align 8
  %10 = alloca %struct.tree*, align 8
  %11 = alloca %struct.tree*, align 8
  %12 = alloca %struct.string_list*, align 8
  %13 = alloca %struct.string_list_item*, align 8
  %14 = alloca %struct.stage_data*, align 8
  store %struct.repository* %0, %struct.repository** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.tree* %2, %struct.tree** %9, align 8
  store %struct.tree* %3, %struct.tree** %10, align 8
  store %struct.tree* %4, %struct.tree** %11, align 8
  store %struct.string_list* %5, %struct.string_list** %12, align 8
  %15 = call %struct.stage_data* @xcalloc(i32 1, i32 8)
  store %struct.stage_data* %15, %struct.stage_data** %14, align 8
  %16 = load %struct.repository*, %struct.repository** %7, align 8
  %17 = load %struct.tree*, %struct.tree** %9, align 8
  %18 = getelementptr inbounds %struct.tree, %struct.tree* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.stage_data*, %struct.stage_data** %14, align 8
  %22 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = call i32 @get_tree_entry_if_blob(%struct.repository* %16, i32* %19, i8* %20, i32* %24)
  %26 = load %struct.repository*, %struct.repository** %7, align 8
  %27 = load %struct.tree*, %struct.tree** %10, align 8
  %28 = getelementptr inbounds %struct.tree, %struct.tree* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.stage_data*, %struct.stage_data** %14, align 8
  %32 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = call i32 @get_tree_entry_if_blob(%struct.repository* %26, i32* %29, i8* %30, i32* %34)
  %36 = load %struct.repository*, %struct.repository** %7, align 8
  %37 = load %struct.tree*, %struct.tree** %11, align 8
  %38 = getelementptr inbounds %struct.tree, %struct.tree* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.stage_data*, %struct.stage_data** %14, align 8
  %42 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = call i32 @get_tree_entry_if_blob(%struct.repository* %36, i32* %39, i8* %40, i32* %44)
  %46 = load %struct.string_list*, %struct.string_list** %12, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call %struct.string_list_item* @string_list_insert(%struct.string_list* %46, i8* %47)
  store %struct.string_list_item* %48, %struct.string_list_item** %13, align 8
  %49 = load %struct.stage_data*, %struct.stage_data** %14, align 8
  %50 = load %struct.string_list_item*, %struct.string_list_item** %13, align 8
  %51 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %50, i32 0, i32 0
  store %struct.stage_data* %49, %struct.stage_data** %51, align 8
  %52 = load %struct.stage_data*, %struct.stage_data** %14, align 8
  ret %struct.stage_data* %52
}

declare dso_local %struct.stage_data* @xcalloc(i32, i32) #1

declare dso_local i32 @get_tree_entry_if_blob(%struct.repository*, i32*, i8*, i32*) #1

declare dso_local %struct.string_list_item* @string_list_insert(%struct.string_list*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
