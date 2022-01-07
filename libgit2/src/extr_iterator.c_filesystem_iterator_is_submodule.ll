; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_iterator.c_filesystem_iterator_is_submodule.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_iterator.c_filesystem_iterator_is_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_FILEMODE_COMMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, i8*, i64)* @filesystem_iterator_is_submodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filesystem_iterator_is_submodule(i32* %0, %struct.TYPE_12__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32*, i32** %6, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @git_tree_entry_bypath(%struct.TYPE_10__** %12, i64 %23, i8* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @GIT_ENOTFOUND, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %92

34:                                               ; preds = %28, %20
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @GIT_FILEMODE_COMMIT, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %45 = call i32 @git_tree_entry_free(%struct.TYPE_10__* %44)
  br label %46

46:                                               ; preds = %37, %34
  br label %47

47:                                               ; preds = %46, %4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %89, label %50

50:                                               ; preds = %47
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %50
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @git_index_snapshot_find(i64* %13, i32* %58, i32 %62, i8* %63, i64 %64, i32 0)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %56
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @GIT_ENOTFOUND, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %5, align 4
  br label %92

74:                                               ; preds = %68, %56
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %74
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %13, align 8
  %81 = call %struct.TYPE_11__* @git_vector_get(i32* %79, i64 %80)
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %14, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @GIT_FILEMODE_COMMIT, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %77, %74
  br label %89

89:                                               ; preds = %88, %50, %47
  %90 = load i32, i32* %10, align 4
  %91 = load i32*, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %89, %72, %32
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @git_tree_entry_bypath(%struct.TYPE_10__**, i64, i8*) #1

declare dso_local i32 @git_tree_entry_free(%struct.TYPE_10__*) #1

declare dso_local i32 @git_index_snapshot_find(i64*, i32*, i32, i8*, i64, i32) #1

declare dso_local %struct.TYPE_11__* @git_vector_get(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
