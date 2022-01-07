; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_rename_via_dir.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_rename_via_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rename_conflict_info = type { %struct.rename* }
%struct.rename = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.diff_filespec* }
%struct.diff_filespec = type { i8* }

@MERGE_DIRECTORY_RENAMES_CONFLICT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"Error: Refusing to lose untracked file at %s; writing to %s instead.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, %struct.rename_conflict_info*)* @handle_rename_via_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_rename_via_dir(%struct.merge_options* %0, %struct.rename_conflict_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.merge_options*, align 8
  %5 = alloca %struct.rename_conflict_info*, align 8
  %6 = alloca %struct.rename*, align 8
  %7 = alloca %struct.diff_filespec*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.merge_options* %0, %struct.merge_options** %4, align 8
  store %struct.rename_conflict_info* %1, %struct.rename_conflict_info** %5, align 8
  %10 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %11 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %10, i32 0, i32 0
  %12 = load %struct.rename*, %struct.rename** %11, align 8
  store %struct.rename* %12, %struct.rename** %6, align 8
  %13 = load %struct.rename*, %struct.rename** %6, align 8
  %14 = getelementptr inbounds %struct.rename, %struct.rename* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  store %struct.diff_filespec* %17, %struct.diff_filespec** %7, align 8
  %18 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %19 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %22 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MERGE_DIRECTORY_RENAMES_CONFLICT, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load %struct.rename*, %struct.rename** %6, align 8
  %28 = getelementptr inbounds %struct.rename, %struct.rename* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %32 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %60, label %37

37:                                               ; preds = %2
  %38 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %39 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %40 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @would_lose_untracked(%struct.merge_options* %38, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %37
  store i32 1, i32* %9, align 4
  %45 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %46 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %47 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.rename*, %struct.rename** %6, align 8
  %50 = getelementptr inbounds %struct.rename, %struct.rename* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @unique_path(%struct.merge_options* %45, i8* %48, i64 %51)
  store i8* %52, i8** %8, align 8
  %53 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %54 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %56 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @output(%struct.merge_options* %53, i32 1, i32 %54, i8* %57, i8* %58)
  br label %60

60:                                               ; preds = %44, %37, %2
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %112

63:                                               ; preds = %60
  %64 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %65 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i64 @update_file(%struct.merge_options* %64, i32 0, %struct.diff_filespec* %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 -1, i32* %3, align 4
  br label %122

70:                                               ; preds = %63
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %73 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @free(i8* %77)
  br label %79

79:                                               ; preds = %76, %70
  %80 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %81 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %82 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.rename*, %struct.rename** %6, align 8
  %85 = getelementptr inbounds %struct.rename, %struct.rename* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %88 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  br label %94

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93, %91
  %95 = phi %struct.diff_filespec* [ %92, %91 ], [ null, %93 ]
  %96 = load %struct.rename*, %struct.rename** %6, align 8
  %97 = getelementptr inbounds %struct.rename, %struct.rename* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %100 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %106

104:                                              ; preds = %94
  %105 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  br label %106

106:                                              ; preds = %104, %103
  %107 = phi %struct.diff_filespec* [ null, %103 ], [ %105, %104 ]
  %108 = call i64 @update_stages(%struct.merge_options* %80, i8* %83, i32* null, %struct.diff_filespec* %95, %struct.diff_filespec* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 -1, i32* %3, align 4
  br label %122

111:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %122

112:                                              ; preds = %60
  %113 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %114 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %115 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %116 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @update_file(%struct.merge_options* %113, i32 1, %struct.diff_filespec* %114, i8* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  store i32 -1, i32* %3, align 4
  br label %122

121:                                              ; preds = %112
  store i32 1, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %120, %111, %110, %69
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @would_lose_untracked(%struct.merge_options*, i8*) #1

declare dso_local i8* @unique_path(%struct.merge_options*, i8*, i64) #1

declare dso_local i32 @output(%struct.merge_options*, i32, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @update_file(%struct.merge_options*, i32, %struct.diff_filespec*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @update_stages(%struct.merge_options*, i8*, i32*, %struct.diff_filespec*, %struct.diff_filespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
