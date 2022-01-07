; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_mwindow.c_git_mwindow_open.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_mwindow.c_git_mwindow_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__, i32, i64, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i32, i64 }

@mem_ctl = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@git__mwindow_mutex = common dso_local global i32 0, align 4
@GIT_ERROR_THREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unable to lock mwindow mutex\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @git_mwindow_open(%struct.TYPE_12__* %0, %struct.TYPE_14__** %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_14__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_14__** %1, %struct.TYPE_14__*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_13__* @mem_ctl, %struct.TYPE_13__** %12, align 8
  %14 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %13, align 8
  %16 = call i64 @git_mutex_lock(i32* @git__mwindow_mutex)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @GIT_ERROR_THREAD, align 4
  %20 = call i32 @git_error_set(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %6, align 8
  br label %145

21:                                               ; preds = %5
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %23 = icmp ne %struct.TYPE_14__* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @git_mwindow_contains(%struct.TYPE_14__* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %32, %33
  %35 = trunc i64 %34 to i32
  %36 = call i64 @git_mwindow_contains(%struct.TYPE_14__* %30, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %100, label %38

38:                                               ; preds = %29, %24, %21
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %40 = icmp ne %struct.TYPE_14__* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %41, %38
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %13, align 8
  br label %50

50:                                               ; preds = %69, %46
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %52 = icmp ne %struct.TYPE_14__* %51, null
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @git_mwindow_contains(%struct.TYPE_14__* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = call i64 @git_mwindow_contains(%struct.TYPE_14__* %59, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %73

68:                                               ; preds = %58, %53
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  store %struct.TYPE_14__* %72, %struct.TYPE_14__** %13, align 8
  br label %50

73:                                               ; preds = %67, %50
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %75 = icmp ne %struct.TYPE_14__* %74, null
  br i1 %75, label %99, label %76

76:                                               ; preds = %73
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call %struct.TYPE_14__* @new_window(%struct.TYPE_12__* %77, i32 %80, i32 %83, i32 %84)
  store %struct.TYPE_14__* %85, %struct.TYPE_14__** %13, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %87 = icmp eq %struct.TYPE_14__* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = call i32 @git_mutex_unlock(i32* @git__mwindow_mutex)
  store i8* null, i8** %6, align 8
  br label %145

90:                                               ; preds = %76
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 4
  store %struct.TYPE_14__* %93, %struct.TYPE_14__** %95, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store %struct.TYPE_14__* %96, %struct.TYPE_14__** %98, align 8
  br label %99

99:                                               ; preds = %90, %73
  br label %100

100:                                              ; preds = %99, %29
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %102 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = icmp ne %struct.TYPE_14__* %101, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %100
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = sext i32 %108 to i64
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 3
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %118 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  store %struct.TYPE_14__* %117, %struct.TYPE_14__** %118, align 8
  br label %119

119:                                              ; preds = %105, %100
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %9, align 4
  %125 = load i32*, i32** %11, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %119
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sub nsw i32 %131, %132
  %134 = load i32*, i32** %11, align 8
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %127, %119
  %136 = call i32 @git_mutex_unlock(i32* @git__mwindow_mutex)
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  store i8* %144, i8** %6, align 8
  br label %145

145:                                              ; preds = %135, %88, %18
  %146 = load i8*, i8** %6, align 8
  ret i8* %146
}

declare dso_local i64 @git_mutex_lock(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i64 @git_mwindow_contains(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_14__* @new_window(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @git_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
