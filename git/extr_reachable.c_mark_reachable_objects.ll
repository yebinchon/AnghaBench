; ModuleID = '/home/carl/AnghaBench/git/extr_reachable.c_mark_reachable_objects.c'
source_filename = "/home/carl/AnghaBench/git/extr_reachable.c_mark_reachable_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32, i32, i32 }
%struct.progress = type { i32 }
%struct.connectivity_progress = type { i64, %struct.progress* }
%struct.bitmap_index = type { i32 }

@add_one_ref = common dso_local global i32 0, align 4
@mark_object_seen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@mark_commit = common dso_local global i32 0, align 4
@mark_object = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unable to mark recent objects\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_reachable_objects(%struct.rev_info* %0, i32 %1, i64 %2, %struct.progress* %3) #0 {
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.progress*, align 8
  %9 = alloca %struct.connectivity_progress, align 8
  %10 = alloca %struct.bitmap_index*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.progress* %3, %struct.progress** %8, align 8
  %11 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %12 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %14 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %16 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %15, i32 0, i32 2
  store i32 1, i32* %16, align 4
  %17 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %18 = call i32 @add_index_objects_to_pending(%struct.rev_info* %17, i32 0)
  %19 = load i32, i32* @add_one_ref, align 4
  %20 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %21 = call i32 @for_each_ref(i32 %19, %struct.rev_info* %20)
  %22 = load i32, i32* @add_one_ref, align 4
  %23 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %24 = call i32 @head_ref(i32 %22, %struct.rev_info* %23)
  %25 = load i32, i32* @add_one_ref, align 4
  %26 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %27 = call i32 @other_head_refs(i32 %25, %struct.rev_info* %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %32 = call i32 @add_reflogs_to_pending(%struct.rev_info* %31, i32 0)
  br label %33

33:                                               ; preds = %30, %4
  %34 = load %struct.progress*, %struct.progress** %8, align 8
  %35 = getelementptr inbounds %struct.connectivity_progress, %struct.connectivity_progress* %9, i32 0, i32 1
  store %struct.progress* %34, %struct.progress** %35, align 8
  %36 = getelementptr inbounds %struct.connectivity_progress, %struct.connectivity_progress* %9, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %38 = call %struct.bitmap_index* @prepare_bitmap_walk(%struct.rev_info* %37)
  store %struct.bitmap_index* %38, %struct.bitmap_index** %10, align 8
  %39 = load %struct.bitmap_index*, %struct.bitmap_index** %10, align 8
  %40 = icmp ne %struct.bitmap_index* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.bitmap_index*, %struct.bitmap_index** %10, align 8
  %43 = load i32, i32* @mark_object_seen, align 4
  %44 = call i32 @traverse_bitmap_commit_list(%struct.bitmap_index* %42, i32 %43)
  %45 = load %struct.bitmap_index*, %struct.bitmap_index** %10, align 8
  %46 = call i32 @free_bitmap_index(%struct.bitmap_index* %45)
  br label %86

47:                                               ; preds = %33
  %48 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %49 = call i64 @prepare_revision_walk(%struct.rev_info* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %47
  %54 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %55 = load i32, i32* @mark_commit, align 4
  %56 = load i32, i32* @mark_object, align 4
  %57 = call i32 @traverse_commit_list(%struct.rev_info* %54, i32 %55, i32 %56, %struct.connectivity_progress* %9)
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %53
  %61 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %62 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %61, i32 0, i32 3
  store i32 1, i32* %62, align 4
  %63 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @add_unseen_recent_objects_to_traversal(%struct.rev_info* %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = call i32 @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %60
  %70 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %71 = call i64 @prepare_revision_walk(%struct.rev_info* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %69
  %76 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %77 = load i32, i32* @mark_commit, align 4
  %78 = load i32, i32* @mark_object, align 4
  %79 = call i32 @traverse_commit_list(%struct.rev_info* %76, i32 %77, i32 %78, %struct.connectivity_progress* %9)
  br label %80

80:                                               ; preds = %75, %53
  %81 = getelementptr inbounds %struct.connectivity_progress, %struct.connectivity_progress* %9, i32 0, i32 1
  %82 = load %struct.progress*, %struct.progress** %81, align 8
  %83 = getelementptr inbounds %struct.connectivity_progress, %struct.connectivity_progress* %9, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @display_progress(%struct.progress* %82, i64 %84)
  br label %86

86:                                               ; preds = %80, %41
  ret void
}

declare dso_local i32 @add_index_objects_to_pending(%struct.rev_info*, i32) #1

declare dso_local i32 @for_each_ref(i32, %struct.rev_info*) #1

declare dso_local i32 @head_ref(i32, %struct.rev_info*) #1

declare dso_local i32 @other_head_refs(i32, %struct.rev_info*) #1

declare dso_local i32 @add_reflogs_to_pending(%struct.rev_info*, i32) #1

declare dso_local %struct.bitmap_index* @prepare_bitmap_walk(%struct.rev_info*) #1

declare dso_local i32 @traverse_bitmap_commit_list(%struct.bitmap_index*, i32) #1

declare dso_local i32 @free_bitmap_index(%struct.bitmap_index*) #1

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @traverse_commit_list(%struct.rev_info*, i32, i32, %struct.connectivity_progress*) #1

declare dso_local i64 @add_unseen_recent_objects_to_traversal(%struct.rev_info*, i64) #1

declare dso_local i32 @display_progress(%struct.progress*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
