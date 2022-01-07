; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_sortedcache.c_sortedcache_test_reload.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_sortedcache.c_sortedcache_test_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32, i8 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @sortedcache_test_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sortedcache_test_reload(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = bitcast %struct.TYPE_7__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @git_sortedcache_lockandload(i32* %10, %struct.TYPE_7__* %4)
  %12 = icmp sgt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @git_sortedcache_clear(i32* %15, i32 0)
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %75, %1
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %78

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strtol(i8* %24, i8** %6, i32 0)
  store i32 %25, i32* %8, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ugt i8* %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @cl_assert(i32 %29)
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %5, align 8
  br label %33

33:                                               ; preds = %39, %23
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @git__isspace(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  br label %33

42:                                               ; preds = %33
  %43 = load i8*, i8** %5, align 8
  store i8* %43, i8** %6, align 8
  br label %44

44:                                               ; preds = %57, %42
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 10
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi i1 [ false, %44 ], [ %53, %49 ]
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  br label %44

60:                                               ; preds = %54
  %61 = load i8*, i8** %6, align 8
  store i8 0, i8* %61, align 1
  %62 = bitcast %struct.TYPE_6__** %7 to i8**
  %63 = load i32*, i32** %2, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @git_sortedcache_upsert(i8** %62, i32* %63, i8* %64)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  %72 = trunc i32 %70 to i8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i8 %72, i8* %74, align 4
  br label %75

75:                                               ; preds = %60
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  store i8* %77, i8** %5, align 8
  br label %19

78:                                               ; preds = %19
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @git_sortedcache_wunlock(i32* %79)
  %81 = call i32 @git_buf_dispose(%struct.TYPE_7__* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i64 @git_sortedcache_lockandload(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @git_sortedcache_clear(i32*, i32) #2

declare dso_local i32 @strtol(i8*, i8**, i32) #2

declare dso_local i64 @git__isspace(i8 signext) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_sortedcache_upsert(i8**, i32*, i8*) #2

declare dso_local i32 @git_sortedcache_wunlock(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
