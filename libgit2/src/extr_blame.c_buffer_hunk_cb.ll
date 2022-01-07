; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_blame.c_buffer_hunk_cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_blame.c_buffer_hunk_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32, i32, i64 }
%struct.TYPE_13__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, i8*)* @buffer_hunk_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_hunk_cb(i32* %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %7, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @GIT_UNUSED(i32* %11)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i64 [ %20, %17 ], [ %24, %21 ]
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @git_blame_get_hunk_byline(%struct.TYPE_14__* %30, i64 %31)
  %33 = inttoptr i64 %32 to %struct.TYPE_13__*
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %35, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = icmp ne %struct.TYPE_13__* %38, null
  br i1 %39, label %59, label %40

40:                                               ; preds = %25
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.TYPE_13__* @new_hunk(i64 %41, i32 0, i64 %42, i32 %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_13__* %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = call i32 @git_vector_insert(i32* %54, %struct.TYPE_13__* %57)
  br label %87

59:                                               ; preds = %25
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @hunk_starts_at_or_after_line(%struct.TYPE_13__* %62, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %59
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %72, %77
  %79 = call %struct.TYPE_13__* @split_hunk_in_vector(i32* %68, %struct.TYPE_13__* %71, i64 %78, i32 1)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  store %struct.TYPE_13__* %79, %struct.TYPE_13__** %81, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_13__* %84)
  br label %86

86:                                               ; preds = %66, %59
  br label %87

87:                                               ; preds = %86, %40
  ret i32 0
}

declare dso_local i32 @GIT_UNUSED(i32*) #1

declare dso_local i64 @git_blame_get_hunk_byline(%struct.TYPE_14__*, i64) #1

declare dso_local %struct.TYPE_13__* @new_hunk(i64, i32, i64, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_13__*) #1

declare dso_local i32 @git_vector_insert(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @hunk_starts_at_or_after_line(%struct.TYPE_13__*, i64) #1

declare dso_local %struct.TYPE_13__* @split_hunk_in_vector(i32*, %struct.TYPE_13__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
