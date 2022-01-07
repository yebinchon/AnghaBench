; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config_add_backend.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config_add_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, i32, i32*)* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }

@GIT_CONFIG_BACKEND_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"git_config_backend\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config_add_backend(i32* %0, %struct.TYPE_11__* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br label %19

19:                                               ; preds = %16, %5
  %20 = phi i1 [ false, %5 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = load i32, i32* @GIT_CONFIG_BACKEND_VERSION, align 4
  %25 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_11__* %23, i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_11__*, i32, i32*)*, i32 (%struct.TYPE_11__*, i32, i32*)** %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 %28(%struct.TYPE_11__* %29, i32 %30, i32* %31)
  store i32 %32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %59

36:                                               ; preds = %19
  %37 = call %struct.TYPE_12__* @git__malloc(i32 16)
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %12, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %39 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_12__* %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %41 = call i32 @memset(%struct.TYPE_12__* %40, i32 0, i32 16)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @git_config__add_internal(i32* %48, %struct.TYPE_12__* %49, i32 %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %36
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %56 = call i32 @git__free(%struct.TYPE_12__* %55)
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %6, align 4
  br label %59

58:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %54, %34
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local %struct.TYPE_12__* @git__malloc(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_12__*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @git_config__add_internal(i32*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @git__free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
