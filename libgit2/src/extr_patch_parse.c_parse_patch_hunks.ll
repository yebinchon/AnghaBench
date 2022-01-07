; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_patch_parse.c_parse_patch_hunks.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_patch_parse.c_parse_patch_hunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"@@ -\00", align 1
@GIT_DIFF_FLAG_NOT_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)* @parse_patch_hunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_patch_hunks(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %42, %2
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %10 = call i64 @git_parse_ctx_contains_s(i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %7
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_20__* @git_array_alloc(i32 %16)
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %5, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %19 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_20__* %18)
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %21 = call i32 @memset(%struct.TYPE_20__* %20, i32 0, i32 16)
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @git_array_size(i32 %25)
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = call i32 @parse_hunk_header(%struct.TYPE_20__* %31, %struct.TYPE_19__* %32)
  store i32 %33, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %12
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %39 = call i32 @parse_hunk_body(%struct.TYPE_18__* %36, %struct.TYPE_20__* %37, %struct.TYPE_19__* %38)
  store i32 %39, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %12
  br label %52

42:                                               ; preds = %35
  br label %7

43:                                               ; preds = %7
  %44 = load i32, i32* @GIT_DIFF_FLAG_NOT_BINARY, align 4
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %44
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %43, %41
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i64 @git_parse_ctx_contains_s(i32*, i8*) #1

declare dso_local %struct.TYPE_20__* @git_array_alloc(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_20__*) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @git_array_size(i32) #1

declare dso_local i32 @parse_hunk_header(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @parse_hunk_body(%struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
