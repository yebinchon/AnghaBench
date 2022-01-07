; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_add_backend_internal.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_add_backend_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__*, i32 }

@GIT_ODB_BACKEND_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"git_odb_backend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, i32)* @add_backend_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_backend_internal(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br label %18

18:                                               ; preds = %15, %5
  %19 = phi i1 [ false, %5 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = load i32, i32* @GIT_ODB_BACKEND_VERSION, align 4
  %24 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_11__* %22, i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %18
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = icmp eq %struct.TYPE_12__* %32, %33
  br label %35

35:                                               ; preds = %29, %18
  %36 = phi i1 [ true, %18 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = call %struct.TYPE_13__* @git__malloc(i32 24)
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %12, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %41 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_13__* %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %57 = call i64 @git_vector_insert(i32* %55, %struct.TYPE_13__* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %35
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %61 = call i32 @git__free(%struct.TYPE_13__* %60)
  store i32 -1, i32* %6, align 4
  br label %71

62:                                               ; preds = %35
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = call i32 @git_vector_sort(i32* %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %70, align 8
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %62, %59
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local %struct.TYPE_13__* @git__malloc(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_13__*) #1

declare dso_local i64 @git_vector_insert(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @git__free(%struct.TYPE_13__*) #1

declare dso_local i32 @git_vector_sort(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
