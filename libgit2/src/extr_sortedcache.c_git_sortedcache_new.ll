; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_sortedcache.c_git_sortedcache_new.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_sortedcache.c_git_sortedcache_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i8*, i32, i32 }

@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to initialize lock\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_sortedcache_new(%struct.TYPE_7__** %0, i64 %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i8*, i8** %13, align 8
  %21 = call i64 @strlen(i8* %20)
  br label %23

22:                                               ; preds = %6
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i64 [ %21, %19 ], [ 0, %22 ]
  store i64 %24, i64* %15, align 8
  %25 = load i64, i64* %15, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %16, i64 40, i32 %26)
  %28 = load i64, i64* %16, align 8
  %29 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %16, i64 %28, i32 1)
  %30 = load i64, i64* %16, align 8
  %31 = call %struct.TYPE_7__* @git__calloc(i32 1, i64 %30)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %14, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %33 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = call i32 @git_pool_init(i32* %35, i32 1)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32, i32* %12, align 4
  %40 = call i64 @git_vector_init(i32* %38, i32 4, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %23
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = call i64 @git_strmap_new(i32* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %23
  br label %80

48:                                               ; preds = %42
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 7
  %51 = call i64 @git_rwlock_init(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @GIT_ERROR_OS, align 4
  %55 = call i32 @git_error_set(i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %80

56:                                               ; preds = %48
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %67 = call i32 @GIT_REFCOUNT_INC(%struct.TYPE_7__* %66)
  %68 = load i64, i64* %15, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %56
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %13, align 8
  %75 = load i64, i64* %15, align 8
  %76 = call i32 @memcpy(i32 %73, i8* %74, i64 %75)
  br label %77

77:                                               ; preds = %70, %56
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %79 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  store %struct.TYPE_7__* %78, %struct.TYPE_7__** %79, align 8
  store i32 0, i32* %7, align 4
  br label %93

80:                                               ; preds = %53, %47
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @git_strmap_free(i32 %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = call i32 @git_vector_free(i32* %86)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = call i32 @git_pool_clear(i32* %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %92 = call i32 @git__free(%struct.TYPE_7__* %91)
  store i32 -1, i32* %7, align 4
  br label %93

93:                                               ; preds = %80, %77
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local %struct.TYPE_7__* @git__calloc(i32, i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__*) #1

declare dso_local i32 @git_pool_init(i32*, i32) #1

declare dso_local i64 @git_vector_init(i32*, i32, i32) #1

declare dso_local i64 @git_strmap_new(i32*) #1

declare dso_local i64 @git_rwlock_init(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @GIT_REFCOUNT_INC(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @git_strmap_free(i32) #1

declare dso_local i32 @git_vector_free(i32*) #1

declare dso_local i32 @git_pool_clear(i32*) #1

declare dso_local i32 @git__free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
