; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_tform.c_git_diff__merge_like_cgit.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_tform.c_git_diff__merge_like_cgit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@GIT_DELTA_CONFLICTED = common dso_local global i64 0, align 8
@GIT_DELTA_UNMODIFIED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_UNTRACKED = common dso_local global i64 0, align 8
@GIT_DELTA_UNREADABLE = common dso_local global i64 0, align 8
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @git_diff__merge_like_cgit(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GIT_DELTA_CONFLICTED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call %struct.TYPE_9__* @git_diff__delta_dup(%struct.TYPE_9__* %15, i32* %16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %4, align 8
  br label %137

18:                                               ; preds = %3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GIT_DELTA_CONFLICTED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call %struct.TYPE_9__* @git_diff__delta_dup(%struct.TYPE_9__* %25, i32* %26)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %4, align 8
  br label %137

28:                                               ; preds = %18
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34, %28
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call %struct.TYPE_9__* @git_diff__delta_dup(%struct.TYPE_9__* %41, i32* %42)
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %4, align 8
  br label %137

44:                                               ; preds = %34
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call %struct.TYPE_9__* @git_diff__delta_dup(%struct.TYPE_9__* %45, i32* %46)
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %8, align 8
  %48 = icmp eq %struct.TYPE_9__* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %137

50:                                               ; preds = %44
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @GIT_DELTA_UNREADABLE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62, %56, %50
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %4, align 8
  br label %137

70:                                               ; preds = %62
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %75 = icmp ne i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %70
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  store i32 2, i32* %94, align 8
  br label %95

95:                                               ; preds = %89, %83
  br label %107

96:                                               ; preds = %70
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %96, %95
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  %114 = call i32 @git_oid_cpy(i32* %110, i32* %113)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 4
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %136, %struct.TYPE_9__** %4, align 8
  br label %137

137:                                              ; preds = %107, %68, %49, %40, %24, %14
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %138
}

declare dso_local %struct.TYPE_9__* @git_diff__delta_dup(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
