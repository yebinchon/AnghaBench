; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_rename_normal.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_rename_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i64, i64 }
%struct.diff_filespec = type { i32 }
%struct.rename_conflict_info = type { %struct.rename* }
%struct.rename = type { i64, i64 }
%struct.merge_file_info = type { i32 }

@MERGE_DIRECTORY_RENAMES_CONFLICT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, i8*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.rename_conflict_info*)* @handle_rename_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_rename_normal(%struct.merge_options* %0, i8* %1, %struct.diff_filespec* %2, %struct.diff_filespec* %3, %struct.diff_filespec* %4, %struct.rename_conflict_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.merge_options*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.diff_filespec*, align 8
  %11 = alloca %struct.diff_filespec*, align 8
  %12 = alloca %struct.diff_filespec*, align 8
  %13 = alloca %struct.rename_conflict_info*, align 8
  %14 = alloca %struct.rename*, align 8
  %15 = alloca %struct.merge_file_info, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.merge_options* %0, %struct.merge_options** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %10, align 8
  store %struct.diff_filespec* %3, %struct.diff_filespec** %11, align 8
  store %struct.diff_filespec* %4, %struct.diff_filespec** %12, align 8
  store %struct.rename_conflict_info* %5, %struct.rename_conflict_info** %13, align 8
  %18 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %13, align 8
  %19 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %18, i32 0, i32 0
  %20 = load %struct.rename*, %struct.rename** %19, align 8
  store %struct.rename* %20, %struct.rename** %14, align 8
  %21 = load %struct.rename*, %struct.rename** %14, align 8
  %22 = getelementptr inbounds %struct.rename, %struct.rename* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %25 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 2, i32 3
  store i32 %29, i32* %17, align 4
  %30 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @was_dirty(%struct.merge_options* %32, i8* %33)
  %35 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %36 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %37 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %38 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %13, align 8
  %39 = call i32 @handle_content_merge(%struct.merge_file_info* %15, %struct.merge_options* %30, i8* %31, i32 %34, %struct.diff_filespec* %35, %struct.diff_filespec* %36, %struct.diff_filespec* %37, %struct.rename_conflict_info* %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %6
  %43 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %44 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MERGE_DIRECTORY_RENAMES_CONFLICT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %42
  %49 = load %struct.rename*, %struct.rename** %14, align 8
  %50 = getelementptr inbounds %struct.rename, %struct.rename* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %48
  %54 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %17, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %15, i32 0, i32 0
  br label %61

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32* [ %59, %58 ], [ null, %60 ]
  %63 = load i32, i32* %17, align 4
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %68

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %15, i32 0, i32 0
  br label %68

68:                                               ; preds = %66, %65
  %69 = phi i32* [ null, %65 ], [ %67, %66 ]
  %70 = call i64 @update_stages(%struct.merge_options* %54, i8* %55, i32* null, i32* %62, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 -1, i32* %7, align 4
  br label %76

73:                                               ; preds = %68
  store i32 0, i32* %16, align 4
  br label %74

74:                                               ; preds = %73, %48, %42, %6
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @handle_content_merge(%struct.merge_file_info*, %struct.merge_options*, i8*, i32, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.rename_conflict_info*) #1

declare dso_local i32 @was_dirty(%struct.merge_options*, i8*) #1

declare dso_local i64 @update_stages(%struct.merge_options*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
