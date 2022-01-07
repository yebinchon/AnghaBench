; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_repo_init_revisions.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_repo_init_revisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.rev_info = type { i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_9__, %struct.repository*, %struct.TYPE_10__, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.rev_info*, i32, i32, %struct.TYPE_6__, %struct.repository* }
%struct.TYPE_6__ = type { i32, i32 }

@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@file_add_remove = common dso_local global i32 0, align 4
@file_change = common dso_local global i32 0, align 4
@REV_SORT_IN_GRAPH_ORDER = common dso_local global i32 0, align 4
@CMIT_FMT_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @repo_init_revisions(%struct.repository* %0, %struct.rev_info* %1, i8* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.rev_info* %1, %struct.rev_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %8 = call i32 @memset(%struct.rev_info* %7, i32 0, i32 136)
  %9 = load %struct.repository*, %struct.repository** %4, align 8
  %10 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %11 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %10, i32 0, i32 13
  store %struct.repository* %9, %struct.repository** %11, align 8
  %12 = load i32, i32* @DEFAULT_ABBREV, align 4
  %13 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %14 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %13, i32 0, i32 18
  store i32 %12, i32* %14, align 8
  %15 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %16 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.repository*, %struct.repository** %4, align 8
  %20 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %21 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %20, i32 0, i32 17
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 4
  store %struct.repository* %19, %struct.repository** %22, align 8
  %23 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %24 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %23, i32 0, i32 17
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %28 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %27, i32 0, i32 17
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* @file_add_remove, align 4
  %32 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %33 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %32, i32 0, i32 17
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @file_change, align 4
  %36 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %37 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %36, i32 0, i32 17
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  %39 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %40 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %41 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %40, i32 0, i32 17
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store %struct.rev_info* %39, %struct.rev_info** %42, align 8
  %43 = load i32, i32* @REV_SORT_IN_GRAPH_ORDER, align 4
  %44 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %45 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %44, i32 0, i32 16
  store i32 %43, i32* %45, align 8
  %46 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %47 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %50 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %52 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %51, i32 0, i32 4
  store i32 -1, i32* %52, align 8
  %53 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %54 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %53, i32 0, i32 5
  store i32 -1, i32* %54, align 4
  %55 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %56 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %55, i32 0, i32 6
  store i32 -1, i32* %56, align 8
  %57 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %58 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %57, i32 0, i32 7
  store i32 -1, i32* %58, align 4
  %59 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %60 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %59, i32 0, i32 8
  store i32 -1, i32* %60, align 8
  %61 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %62 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %61, i32 0, i32 9
  store i32 -1, i32* %62, align 4
  %63 = load i32, i32* @CMIT_FMT_DEFAULT, align 4
  %64 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %65 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %64, i32 0, i32 15
  store i32 %63, i32* %65, align 4
  %66 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %67 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %66, i32 0, i32 10
  store i32 8, i32* %67, align 8
  %68 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %69 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %68, i32 0, i32 13
  %70 = load %struct.repository*, %struct.repository** %69, align 8
  %71 = call i32 @init_grep_defaults(%struct.repository* %70)
  %72 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %73 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %72, i32 0, i32 14
  %74 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %75 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %74, i32 0, i32 13
  %76 = load %struct.repository*, %struct.repository** %75, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @grep_init(%struct.TYPE_10__* %73, %struct.repository* %76, i8* %77)
  %79 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %80 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %79, i32 0, i32 14
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %83 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %82, i32 0, i32 13
  %84 = load %struct.repository*, %struct.repository** %83, align 8
  %85 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %86 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %85, i32 0, i32 12
  %87 = call i32 @repo_diff_setup(%struct.repository* %84, %struct.TYPE_9__* %86)
  %88 = load i8*, i8** %6, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %106

90:                                               ; preds = %3
  %91 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %92 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %91, i32 0, i32 12
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %106, label %96

96:                                               ; preds = %90
  %97 = load i8*, i8** %6, align 8
  %98 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %99 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %98, i32 0, i32 12
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @strlen(i8* %101)
  %103 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %104 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %103, i32 0, i32 12
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 8
  br label %106

106:                                              ; preds = %96, %90, %3
  %107 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %108 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %107, i32 0, i32 11
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i32 -1, i32* %109, align 4
  ret void
}

declare dso_local i32 @memset(%struct.rev_info*, i32, i32) #1

declare dso_local i32 @init_grep_defaults(%struct.repository*) #1

declare dso_local i32 @grep_init(%struct.TYPE_10__*, %struct.repository*, i8*) #1

declare dso_local i32 @repo_diff_setup(%struct.repository*, %struct.TYPE_9__*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
