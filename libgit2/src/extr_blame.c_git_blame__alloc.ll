; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_blame.c_git_blame__alloc.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_blame.c_git_blame__alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32*, i32, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32 }

@hunk_cmp = common dso_local global i32 0, align 4
@paths_cmp = common dso_local global i32 0, align 4
@GIT_BLAME_USE_MAILMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @git_blame__alloc(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store i32* %0, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = call %struct.TYPE_8__* @git__calloc(i32 1, i32 32)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %8, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %66

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 5
  store i32* %15, i32** %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  %20 = bitcast %struct.TYPE_7__* %19 to i8*
  %21 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i32, i32* @hunk_cmp, align 4
  %25 = call i64 @git_vector_init(i32* %23, i32 8, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %14
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* @paths_cmp, align 4
  %31 = call i64 @git_vector_init(i32* %29, i32 8, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = call i32* @git__strdup(i8* %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = icmp eq i32* %35, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i8*, i8** %7, align 8
  %43 = call i32* @git__strdup(i8* %42)
  %44 = call i64 @git_vector_insert(i32* %41, i32* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39, %33, %27, %14
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = call i32 @git_blame_free(%struct.TYPE_8__* %47)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %66

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GIT_BLAME_USE_MAILMAP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32*, i32** %6, align 8
  %59 = call i64 @git_mailmap_from_repository(i32* %57, i32* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = call i32 @git_blame_free(%struct.TYPE_8__* %62)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %66

64:                                               ; preds = %55, %49
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %4, align 8
  br label %66

66:                                               ; preds = %64, %61, %46, %13
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %67
}

declare dso_local %struct.TYPE_8__* @git__calloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @git_vector_init(i32*, i32, i32) #1

declare dso_local i32* @git__strdup(i8*) #1

declare dso_local i64 @git_vector_insert(i32*, i32*) #1

declare dso_local i32 @git_blame_free(%struct.TYPE_8__*) #1

declare dso_local i64 @git_mailmap_from_repository(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
