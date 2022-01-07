; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tree.c_create_popped_tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tree.c_create_popped_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { i32 }

@GIT_OBJECT_TREE = common dso_local global i64 0, align 8
@GIT_ERROR_TREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"D/F conflict when updating tree\00", align 1
@GIT_FILEMODE_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_9__*)* @create_popped_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_popped_tree(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @git_tree_free(i64 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @git_treebuilder_entrycount(i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @git_treebuilder_free(i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @git_treebuilder_remove(i32 %27, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @git__free(i32 %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %102

37:                                               ; preds = %3
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @git_treebuilder_write(i32* %9, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @git_treebuilder_free(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @git__free(i32 %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %102

54:                                               ; preds = %37
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = call i32 @git_buf_clear(%struct.TYPE_9__* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @git_buf_puts(%struct.TYPE_9__* %57, i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @git__free(i32 %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @GIT_ERROR_CHECK_ALLOC(i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %54
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32* @git_tree_entry_byname(i64 %77, i32 %80)
  store i32* %81, i32** %10, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %74
  %85 = load i32*, i32** %10, align 8
  %86 = call i64 @git_tree_entry_type(i32* %85)
  %87 = load i64, i64* @GIT_OBJECT_TREE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @GIT_ERROR_TREE, align 4
  %91 = call i32 @git_error_set(i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %102

92:                                               ; preds = %84, %74
  br label %93

93:                                               ; preds = %92, %54
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @GIT_FILEMODE_TREE, align 4
  %101 = call i32 @git_treebuilder_insert(i32* null, i32 %96, i32 %99, i32* %9, i32 %100)
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %93, %89, %48, %20
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @git_tree_free(i64) #1

declare dso_local i64 @git_treebuilder_entrycount(i32) #1

declare dso_local i32 @git_treebuilder_free(i32) #1

declare dso_local i32 @git_treebuilder_remove(i32, i32) #1

declare dso_local i32 @git__free(i32) #1

declare dso_local i32 @git_treebuilder_write(i32*, i32) #1

declare dso_local i32 @git_buf_clear(%struct.TYPE_9__*) #1

declare dso_local i32 @git_buf_puts(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i32) #1

declare dso_local i32* @git_tree_entry_byname(i64, i32) #1

declare dso_local i64 @git_tree_entry_type(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_treebuilder_insert(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
