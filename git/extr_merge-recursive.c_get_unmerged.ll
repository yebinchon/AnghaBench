; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_get_unmerged.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_get_unmerged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32, i32 }
%struct.string_list_item = type { %struct.stage_data* }
%struct.stage_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.string_list* (%struct.index_state*)* @get_unmerged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.string_list* @get_unmerged(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.string_list_item*, align 8
  %6 = alloca %struct.stage_data*, align 8
  %7 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %8 = call i8* @xcalloc(i32 1, i32 4)
  %9 = bitcast i8* %8 to %struct.string_list*
  store %struct.string_list* %9, %struct.string_list** %3, align 8
  %10 = load %struct.string_list*, %struct.string_list** %3, align 8
  %11 = getelementptr inbounds %struct.string_list, %struct.string_list* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %72, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.index_state*, %struct.index_state** %2, align 8
  %15 = getelementptr inbounds %struct.index_state, %struct.index_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %75

18:                                               ; preds = %12
  %19 = load %struct.index_state*, %struct.index_state** %2, align 8
  %20 = getelementptr inbounds %struct.index_state, %struct.index_state* %19, i32 0, i32 1
  %21 = load %struct.cache_entry**, %struct.cache_entry*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %21, i64 %23
  %25 = load %struct.cache_entry*, %struct.cache_entry** %24, align 8
  store %struct.cache_entry* %25, %struct.cache_entry** %7, align 8
  %26 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %27 = call i64 @ce_stage(%struct.cache_entry* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  br label %72

30:                                               ; preds = %18
  %31 = load %struct.string_list*, %struct.string_list** %3, align 8
  %32 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %33 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.string_list_item* @string_list_lookup(%struct.string_list* %31, i32 %34)
  store %struct.string_list_item* %35, %struct.string_list_item** %5, align 8
  %36 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %37 = icmp ne %struct.string_list_item* %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %30
  %39 = load %struct.string_list*, %struct.string_list** %3, align 8
  %40 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %41 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.string_list_item* @string_list_insert(%struct.string_list* %39, i32 %42)
  store %struct.string_list_item* %43, %struct.string_list_item** %5, align 8
  %44 = call i8* @xcalloc(i32 1, i32 8)
  %45 = bitcast i8* %44 to %struct.stage_data*
  %46 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %47 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %46, i32 0, i32 0
  store %struct.stage_data* %45, %struct.stage_data** %47, align 8
  br label %48

48:                                               ; preds = %38, %30
  %49 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %50 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %49, i32 0, i32 0
  %51 = load %struct.stage_data*, %struct.stage_data** %50, align 8
  store %struct.stage_data* %51, %struct.stage_data** %6, align 8
  %52 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %53 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.stage_data*, %struct.stage_data** %6, align 8
  %56 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %59 = call i64 @ce_stage(%struct.cache_entry* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %54, i32* %61, align 4
  %62 = load %struct.stage_data*, %struct.stage_data** %6, align 8
  %63 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %66 = call i64 @ce_stage(%struct.cache_entry* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %70 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %69, i32 0, i32 0
  %71 = call i32 @oidcpy(i32* %68, i32* %70)
  br label %72

72:                                               ; preds = %48, %29
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %12

75:                                               ; preds = %12
  %76 = load %struct.string_list*, %struct.string_list** %3, align 8
  ret %struct.string_list* %76
}

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i64 @ce_stage(%struct.cache_entry*) #1

declare dso_local %struct.string_list_item* @string_list_lookup(%struct.string_list*, i32) #1

declare dso_local %struct.string_list_item* @string_list_insert(%struct.string_list*, i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
