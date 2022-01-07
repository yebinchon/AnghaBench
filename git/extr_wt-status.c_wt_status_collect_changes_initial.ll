; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_collect_changes_initial.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_collect_changes_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.index_state* }
%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32, i32 }
%struct.string_list_item = type { %struct.wt_status_change_data* }
%struct.wt_status_change_data = type { i32, i32, i32, i32 }

@DIFF_STATUS_UNMERGED = common dso_local global i32 0, align 4
@DIFF_STATUS_ADDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*)* @wt_status_collect_changes_initial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_status_collect_changes_initial(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.string_list_item*, align 8
  %6 = alloca %struct.wt_status_change_data*, align 8
  %7 = alloca %struct.cache_entry*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  %8 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %9 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.index_state*, %struct.index_state** %11, align 8
  store %struct.index_state* %12, %struct.index_state** %3, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %91, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.index_state*, %struct.index_state** %3, align 8
  %16 = getelementptr inbounds %struct.index_state, %struct.index_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %94

19:                                               ; preds = %13
  %20 = load %struct.index_state*, %struct.index_state** %3, align 8
  %21 = getelementptr inbounds %struct.index_state, %struct.index_state* %20, i32 0, i32 1
  %22 = load %struct.cache_entry**, %struct.cache_entry*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %22, i64 %24
  %26 = load %struct.cache_entry*, %struct.cache_entry** %25, align 8
  store %struct.cache_entry* %26, %struct.cache_entry** %7, align 8
  %27 = load %struct.index_state*, %struct.index_state** %3, align 8
  %28 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %29 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %30 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %29, i32 0, i32 2
  %31 = call i32 @ce_path_match(%struct.index_state* %27, %struct.cache_entry* %28, i32* %30, i32* null)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %19
  br label %91

34:                                               ; preds = %19
  %35 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %36 = call i64 @ce_intent_to_add(%struct.cache_entry* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %91

39:                                               ; preds = %34
  %40 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %41 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %40, i32 0, i32 1
  %42 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %43 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.string_list_item* @string_list_insert(i32* %41, i32 %44)
  store %struct.string_list_item* %45, %struct.string_list_item** %5, align 8
  %46 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %47 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %46, i32 0, i32 0
  %48 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %47, align 8
  store %struct.wt_status_change_data* %48, %struct.wt_status_change_data** %6, align 8
  %49 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %6, align 8
  %50 = icmp ne %struct.wt_status_change_data* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %39
  %52 = call %struct.wt_status_change_data* @xcalloc(i32 1, i32 16)
  store %struct.wt_status_change_data* %52, %struct.wt_status_change_data** %6, align 8
  %53 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %6, align 8
  %54 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %55 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %54, i32 0, i32 0
  store %struct.wt_status_change_data* %53, %struct.wt_status_change_data** %55, align 8
  br label %56

56:                                               ; preds = %51, %39
  %57 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %58 = call i32 @ce_stage(%struct.cache_entry* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i32, i32* @DIFF_STATUS_UNMERGED, align 4
  %62 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %6, align 8
  %63 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %65 = call i32 @ce_stage(%struct.cache_entry* %64)
  %66 = sub nsw i32 %65, 1
  %67 = shl i32 1, %66
  %68 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %6, align 8
  %69 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %73 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %90

74:                                               ; preds = %56
  %75 = load i32, i32* @DIFF_STATUS_ADDED, align 4
  %76 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %6, align 8
  %77 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %79 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %6, align 8
  %82 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %6, align 8
  %84 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %83, i32 0, i32 1
  %85 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %86 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %85, i32 0, i32 0
  %87 = call i32 @oidcpy(i32* %84, i32* %86)
  %88 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %89 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  br label %90

90:                                               ; preds = %74, %60
  br label %91

91:                                               ; preds = %90, %38, %33
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %13

94:                                               ; preds = %13
  ret void
}

declare dso_local i32 @ce_path_match(%struct.index_state*, %struct.cache_entry*, i32*, i32*) #1

declare dso_local i64 @ce_intent_to_add(%struct.cache_entry*) #1

declare dso_local %struct.string_list_item* @string_list_insert(i32*, i32) #1

declare dso_local %struct.wt_status_change_data* @xcalloc(i32, i32) #1

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
