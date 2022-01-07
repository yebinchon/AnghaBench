; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_iterator.c_test_iterator.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_iterator.c_test_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_REBASE_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"refs/heads/beef\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@GIT_REBASE_NO_OPERATION = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"776e4c48922799f903f03f5f6e51da8b01e4cce0\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"ba1f9b4fd5cf8151f7818be2111cc0869f1eb95a\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"948b12fe18b84f756223a61bece4c307787cd5d4\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"d9d5d59d72c9968687f9462578d79878cd80e781\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"9cf383c0a125d89e742c5dec58ed277dd07588b3\00", align 1
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = bitcast %struct.TYPE_4__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_REBASE_OPTIONS_INIT to i8*), i64 4, i1 false)
  %14 = load i32, i32* %2, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @repo, align 4
  %17 = call i32 @git_reference_lookup(i32** %5, i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @repo, align 4
  %20 = call i32 @git_reference_lookup(i32** %6, i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @repo, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @git_annotated_commit_from_ref(i32** %7, i32 %22, i32* %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @repo, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @git_annotated_commit_from_ref(i32** %8, i32 %26, i32* %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32, i32* @repo, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @git_rebase_init(i32** %3, i32 %30, i32* %31, i32* %32, i32* null, %struct.TYPE_4__* %4)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @GIT_REBASE_NO_OPERATION, align 4
  %37 = call i32 @test_operations(i32* %35, i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %1
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @git_rebase_free(i32* %41)
  %43 = load i32, i32* @repo, align 4
  %44 = call i32 @git_rebase_open(i32** %3, i32 %43, i32* null)
  %45 = call i32 @cl_git_pass(i32 %44)
  br label %46

46:                                               ; preds = %40, %1
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @git_rebase_next(i32** %9, i32* %47)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @signature, align 4
  %52 = call i32 @git_rebase_commit(i32* %10, i32* %50, i32* null, i32 %51, i32* null, i32* null)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @test_operations(i32* %54, i32 0)
  %56 = call i32 @git_oid_fromstr(i32* %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @cl_assert_equal_oid(i32* %11, i32* %10)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @git_rebase_next(i32** %9, i32* %58)
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* @signature, align 4
  %63 = call i32 @git_rebase_commit(i32* %10, i32* %61, i32* null, i32 %62, i32* null, i32* null)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @test_operations(i32* %65, i32 1)
  %67 = call i32 @git_oid_fromstr(i32* %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %68 = call i32 @cl_assert_equal_oid(i32* %11, i32* %10)
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @git_rebase_next(i32** %9, i32* %69)
  %71 = call i32 @cl_git_pass(i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* @signature, align 4
  %74 = call i32 @git_rebase_commit(i32* %10, i32* %72, i32* null, i32 %73, i32* null, i32* null)
  %75 = call i32 @cl_git_pass(i32 %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @test_operations(i32* %76, i32 2)
  %78 = call i32 @git_oid_fromstr(i32* %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %79 = call i32 @cl_assert_equal_oid(i32* %11, i32* %10)
  %80 = load i32, i32* %2, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %46
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @git_rebase_free(i32* %83)
  %85 = load i32, i32* @repo, align 4
  %86 = call i32 @git_rebase_open(i32** %3, i32 %85, i32* null)
  %87 = call i32 @cl_git_pass(i32 %86)
  br label %88

88:                                               ; preds = %82, %46
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @git_rebase_next(i32** %9, i32* %89)
  %91 = call i32 @cl_git_pass(i32 %90)
  %92 = load i32*, i32** %3, align 8
  %93 = load i32, i32* @signature, align 4
  %94 = call i32 @git_rebase_commit(i32* %10, i32* %92, i32* null, i32 %93, i32* null, i32* null)
  %95 = call i32 @cl_git_pass(i32 %94)
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @test_operations(i32* %96, i32 3)
  %98 = call i32 @git_oid_fromstr(i32* %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %99 = call i32 @cl_assert_equal_oid(i32* %11, i32* %10)
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @git_rebase_next(i32** %9, i32* %100)
  %102 = call i32 @cl_git_pass(i32 %101)
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* @signature, align 4
  %105 = call i32 @git_rebase_commit(i32* %10, i32* %103, i32* null, i32 %104, i32* null, i32* null)
  %106 = call i32 @cl_git_pass(i32 %105)
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @test_operations(i32* %107, i32 4)
  %109 = call i32 @git_oid_fromstr(i32* %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %110 = call i32 @cl_assert_equal_oid(i32* %11, i32* %10)
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @git_rebase_next(i32** %9, i32* %111)
  store i32 %112, i32* %12, align 4
  %113 = call i32 @cl_git_fail(i32 %112)
  %114 = load i32, i32* @GIT_ITEROVER, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @cl_assert_equal_i(i32 %114, i32 %115)
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @test_operations(i32* %117, i32 4)
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @git_annotated_commit_free(i32* %119)
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @git_annotated_commit_free(i32* %121)
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @git_reference_free(i32* %123)
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @git_reference_free(i32* %125)
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 @git_rebase_free(i32* %127)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32, i32*) #2

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @test_operations(i32*, i32) #2

declare dso_local i32 @git_rebase_free(i32*) #2

declare dso_local i32 @git_rebase_open(i32**, i32, i32*) #2

declare dso_local i32 @git_rebase_next(i32**, i32*) #2

declare dso_local i32 @git_rebase_commit(i32*, i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_annotated_commit_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
