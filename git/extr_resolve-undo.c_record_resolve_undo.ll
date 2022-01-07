; ModuleID = '/home/carl/AnghaBench/git/extr_resolve-undo.c_record_resolve_undo.c'
source_filename = "/home/carl/AnghaBench/git/extr_resolve-undo.c_record_resolve_undo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { %struct.string_list* }
%struct.string_list = type { i32 }
%struct.cache_entry = type { i32, i32, i32 }
%struct.string_list_item = type { %struct.resolve_undo_info* }
%struct.resolve_undo_info = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @record_resolve_undo(%struct.index_state* %0, %struct.cache_entry* %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca %struct.cache_entry*, align 8
  %5 = alloca %struct.string_list_item*, align 8
  %6 = alloca %struct.resolve_undo_info*, align 8
  %7 = alloca %struct.string_list*, align 8
  %8 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %4, align 8
  %9 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %10 = call i32 @ce_stage(%struct.cache_entry* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %69

14:                                               ; preds = %2
  %15 = load %struct.index_state*, %struct.index_state** %3, align 8
  %16 = getelementptr inbounds %struct.index_state, %struct.index_state* %15, i32 0, i32 0
  %17 = load %struct.string_list*, %struct.string_list** %16, align 8
  %18 = icmp ne %struct.string_list* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = call i8* @xcalloc(i32 1, i32 4)
  %21 = bitcast i8* %20 to %struct.string_list*
  store %struct.string_list* %21, %struct.string_list** %7, align 8
  %22 = load %struct.string_list*, %struct.string_list** %7, align 8
  %23 = getelementptr inbounds %struct.string_list, %struct.string_list* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.string_list*, %struct.string_list** %7, align 8
  %25 = load %struct.index_state*, %struct.index_state** %3, align 8
  %26 = getelementptr inbounds %struct.index_state, %struct.index_state* %25, i32 0, i32 0
  store %struct.string_list* %24, %struct.string_list** %26, align 8
  br label %27

27:                                               ; preds = %19, %14
  %28 = load %struct.index_state*, %struct.index_state** %3, align 8
  %29 = getelementptr inbounds %struct.index_state, %struct.index_state* %28, i32 0, i32 0
  %30 = load %struct.string_list*, %struct.string_list** %29, align 8
  store %struct.string_list* %30, %struct.string_list** %7, align 8
  %31 = load %struct.string_list*, %struct.string_list** %7, align 8
  %32 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %33 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.string_list_item* @string_list_insert(%struct.string_list* %31, i32 %34)
  store %struct.string_list_item* %35, %struct.string_list_item** %5, align 8
  %36 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %37 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %36, i32 0, i32 0
  %38 = load %struct.resolve_undo_info*, %struct.resolve_undo_info** %37, align 8
  %39 = icmp ne %struct.resolve_undo_info* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %27
  %41 = call i8* @xcalloc(i32 1, i32 16)
  %42 = bitcast i8* %41 to %struct.resolve_undo_info*
  %43 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %44 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %43, i32 0, i32 0
  store %struct.resolve_undo_info* %42, %struct.resolve_undo_info** %44, align 8
  br label %45

45:                                               ; preds = %40, %27
  %46 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %47 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %46, i32 0, i32 0
  %48 = load %struct.resolve_undo_info*, %struct.resolve_undo_info** %47, align 8
  store %struct.resolve_undo_info* %48, %struct.resolve_undo_info** %6, align 8
  %49 = load %struct.resolve_undo_info*, %struct.resolve_undo_info** %6, align 8
  %50 = getelementptr inbounds %struct.resolve_undo_info, %struct.resolve_undo_info* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %57 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %56, i32 0, i32 1
  %58 = call i32 @oidcpy(i32* %55, i32* %57)
  %59 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %60 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.resolve_undo_info*, %struct.resolve_undo_info** %6, align 8
  %63 = getelementptr inbounds %struct.resolve_undo_info, %struct.resolve_undo_info* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %61, i32* %68, align 4
  br label %69

69:                                               ; preds = %45, %13
  ret void
}

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local %struct.string_list_item* @string_list_insert(%struct.string_list*, i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
