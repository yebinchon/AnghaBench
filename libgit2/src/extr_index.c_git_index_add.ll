; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_add.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }

@GIT_ERROR_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid entry mode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_index_add(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = icmp ne %struct.TYPE_11__* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %10, %2
  %19 = phi i1 [ false, %10 ], [ false, %2 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @valid_filemode(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @GIT_ERROR_INDEX, align 4
  %29 = call i32 @git_error_set(i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %49

30:                                               ; preds = %18
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = call i32 @index_entry_dup(%struct.TYPE_10__** %6, %struct.TYPE_11__* %31, %struct.TYPE_10__* %32)
  store i32 %33, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = call i32 @index_insert(%struct.TYPE_11__* %36, %struct.TYPE_10__** %6, i32 1, i32 1, i32 1, i32 0)
  store i32 %37, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %49

41:                                               ; preds = %35
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @git_tree_cache_invalidate_path(i32 %44, i64 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %41, %39, %27
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @valid_filemode(i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @index_entry_dup(%struct.TYPE_10__**, %struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @index_insert(%struct.TYPE_11__*, %struct.TYPE_10__**, i32, i32, i32, i32) #1

declare dso_local i32 @git_tree_cache_invalidate_path(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
