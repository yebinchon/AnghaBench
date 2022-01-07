; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_status.c_workdir_delta2status.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_status.c_workdir_delta2status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@GIT_STATUS_CURRENT = common dso_local global i32 0, align 4
@GIT_STATUS_WT_NEW = common dso_local global i32 0, align 4
@GIT_STATUS_WT_UNREADABLE = common dso_local global i32 0, align 4
@GIT_STATUS_WT_DELETED = common dso_local global i32 0, align 4
@GIT_STATUS_WT_MODIFIED = common dso_local global i32 0, align 4
@GIT_STATUS_IGNORED = common dso_local global i32 0, align 4
@GIT_STATUS_WT_RENAMED = common dso_local global i32 0, align 4
@GIT_ITERATOR_TYPE_WORKDIR = common dso_local global i32 0, align 4
@GIT_DIFF_FLAG_VALID_ID = common dso_local global i32 0, align 4
@GIT_STATUS_WT_TYPECHANGE = common dso_local global i32 0, align 4
@GIT_STATUS_CONFLICTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @workdir_delta2status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @workdir_delta2status(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %6 = load i32, i32* @GIT_STATUS_CURRENT, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %125 [
    i32 137, label %10
    i32 135, label %10
    i32 128, label %10
    i32 129, label %12
    i32 134, label %14
    i32 132, label %16
    i32 133, label %18
    i32 131, label %20
    i32 130, label %121
    i32 136, label %123
  ]

10:                                               ; preds = %2, %2, %2
  %11 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  store i32 %11, i32* %5, align 4
  br label %126

12:                                               ; preds = %2
  %13 = load i32, i32* @GIT_STATUS_WT_UNREADABLE, align 4
  store i32 %13, i32* %5, align 4
  br label %126

14:                                               ; preds = %2
  %15 = load i32, i32* @GIT_STATUS_WT_DELETED, align 4
  store i32 %15, i32* %5, align 4
  br label %126

16:                                               ; preds = %2
  %17 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  store i32 %17, i32* %5, align 4
  br label %126

18:                                               ; preds = %2
  %19 = load i32, i32* @GIT_STATUS_IGNORED, align 4
  store i32 %19, i32* %5, align 4
  br label %126

20:                                               ; preds = %2
  %21 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = call i32 @git_oid_equal(i32* %24, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %120, label %30

30:                                               ; preds = %20
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i32 @git_oid_is_zero(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %30
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @GIT_ITERATOR_TYPE_WORKDIR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @git_diff__oid_for_file(i32* %45, %struct.TYPE_11__* %46, i32 %50, i32 %54, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %42
  %62 = load i32, i32* @GIT_DIFF_FLAG_VALID_ID, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %61, %42, %36, %30
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = call i32 @git_oid_is_zero(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %106

74:                                               ; preds = %68
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @GIT_ITERATOR_TYPE_WORKDIR, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %106

80:                                               ; preds = %74
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @git_diff__oid_for_file(i32* %83, %struct.TYPE_11__* %84, i32 %88, i32 %92, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %80
  %100 = load i32, i32* @GIT_DIFF_FLAG_VALID_ID, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %100
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %99, %80, %74, %68
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = call i32 @git_oid_equal(i32* %109, i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %106
  %116 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %115, %106
  br label %120

120:                                              ; preds = %119, %20
  br label %126

121:                                              ; preds = %2
  %122 = load i32, i32* @GIT_STATUS_WT_TYPECHANGE, align 4
  store i32 %122, i32* %5, align 4
  br label %126

123:                                              ; preds = %2
  %124 = load i32, i32* @GIT_STATUS_CONFLICTED, align 4
  store i32 %124, i32* %5, align 4
  br label %126

125:                                              ; preds = %2
  br label %126

126:                                              ; preds = %125, %123, %121, %120, %18, %16, %14, %12, %10
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @git_oid_equal(i32*, i32*) #1

declare dso_local i32 @git_oid_is_zero(i32*) #1

declare dso_local i32 @git_diff__oid_for_file(i32*, %struct.TYPE_11__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
