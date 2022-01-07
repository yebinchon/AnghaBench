; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_odb__weakptr.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_odb__weakptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_REPOSITORY_ITEM_OBJECTS = common dso_local global i32 0, align 4
@GIT_ODB_CAP_FROM_OWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_repository_odb__weakptr(i32** %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 4
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32**, i32*** %4, align 8
  %13 = icmp ne i32** %12, null
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i1 [ false, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %65

22:                                               ; preds = %14
  %23 = bitcast %struct.TYPE_10__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = load i32, i32* @GIT_REPOSITORY_ITEM_OBJECTS, align 4
  %26 = call i32 @git_repository_item_path(%struct.TYPE_10__* %7, %struct.TYPE_9__* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = call i32 @git_odb_new(i32** %8)
  store i32 %29, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %71

33:                                               ; preds = %28
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = call i32 @GIT_REFCOUNT_OWN(i32* %34, %struct.TYPE_9__* %35)
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* @GIT_ODB_CAP_FROM_OWNER, align 4
  %39 = call i32 @git_odb__set_caps(i32* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @git_odb__add_default_backends(i32* %42, i32 %44, i32 0, i32 0)
  store i32 %45, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41, %33
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @git_odb_free(i32* %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %71

51:                                               ; preds = %41
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32*, i32** %8, align 8
  %55 = call i32* @git__compare_and_swap(i32** %53, i32* null, i32* %54)
  store i32* %55, i32** %8, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @GIT_REFCOUNT_OWN(i32* %59, %struct.TYPE_9__* null)
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @git_odb_free(i32* %61)
  br label %63

63:                                               ; preds = %58, %51
  %64 = call i32 @git_buf_dispose(%struct.TYPE_10__* %7)
  br label %65

65:                                               ; preds = %63, %14
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32**, i32*** %4, align 8
  store i32* %68, i32** %69, align 8
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %47, %31
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @git_repository_item_path(%struct.TYPE_10__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @git_odb_new(i32**) #1

declare dso_local i32 @GIT_REFCOUNT_OWN(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @git_odb__set_caps(i32*, i32) #1

declare dso_local i32 @git_odb__add_default_backends(i32*, i32, i32, i32) #1

declare dso_local i32 @git_odb_free(i32*) #1

declare dso_local i32* @git__compare_and_swap(i32**, i32*, i32*) #1

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
