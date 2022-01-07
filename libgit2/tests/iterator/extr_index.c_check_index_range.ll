; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_check_index_range.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_check_index_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i64 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GIT_INDEX_CAPABILITY_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i32, i32)* @check_index_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_index_range(i32* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = bitcast %struct.TYPE_4__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_4__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 24, i1 false)
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @git_repository_index(i32** %11, i32* %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @git_index_caps(i32* %22)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = load i32, i32* @GIT_INDEX_CAPABILITY_IGNORE_CASE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %5
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @GIT_INDEX_CAPABILITY_IGNORE_CASE, align 4
  %36 = xor i32 %34, %35
  %37 = call i32 @git_index_set_caps(i32* %33, i32 %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  br label %39

39:                                               ; preds = %32, %5
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @git_iterator_for_index(i32** %12, i32* %45, i32* %46, %struct.TYPE_4__* %13)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @git_iterator_ignore_case(i32* %49)
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @cl_assert(i32 %53)
  store i32 0, i32* %15, align 4
  br label %55

55:                                               ; preds = %61, %39
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @git_iterator_advance(i32* null, i32* %56)
  store i32 %57, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %15, align 4
  br label %55

64:                                               ; preds = %55
  %65 = load i32, i32* @GIT_ITEROVER, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @cl_assert_equal_i(i32 %65, i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @cl_assert_equal_i(i32 %68, i32 %69)
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @git_iterator_free(i32* %71)
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @git_index_free(i32* %73)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32 @git_index_caps(i32*) #2

declare dso_local i32 @git_index_set_caps(i32*, i32) #2

declare dso_local i32 @git_iterator_for_index(i32**, i32*, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_iterator_ignore_case(i32*) #2

declare dso_local i32 @git_iterator_advance(i32*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
