; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_nosubs.c_test_submodule_nosubs__add_and_delete.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_nosubs.c_test_submodule_nosubs__add_and_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"libgit2\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"submodules/libgit2\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"https://github.com/libgit2/libgit2.git\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"status/.gitmodules\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"[submodule \22submodules/libgit2\22]\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"path = submodules/libgit2\00", align 1
@.str.7 = private unnamed_addr constant [98 x i8] c"[submodule \22libgit2\22]\0A  path = submodules/libgit2\0A  url = https://github.com/libgit2/libgit2.git\0A\00", align 1
@.str.8 = private unnamed_addr constant [109 x i8] c"[submodule \22submodules/libgit2\22]\0A  path = submodules/libgit2\0A  url = https://github.com/libgit2/libgit2.git\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_nosubs__add_and_delete() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %1, align 8
  %5 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @git_submodule_lookup(i32** null, i32* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @cl_git_fail(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @git_submodule_lookup(i32** null, i32* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @cl_git_fail(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @git_submodule_add_setup(i32** %2, i32* %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @git_submodule_name(i32* %15)
  %17 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @git_submodule_path(i32* %18)
  %20 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @git_submodule_free(i32* %21)
  %23 = call i32 @git_futils_readbuffer(%struct.TYPE_5__* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @strstr(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @cl_assert(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @strstr(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @cl_assert(i32 %35)
  %37 = call i32 @git_buf_dispose(%struct.TYPE_5__* %3)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @git_submodule_lookup(i32** %2, i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @cl_git_fail(i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @git_submodule_lookup(i32** %2, i32* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @git_submodule_name(i32* %44)
  %46 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @git_submodule_path(i32* %47)
  %49 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @git_submodule_free(i32* %50)
  %52 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.7, i64 0, i64 0))
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @git_submodule_lookup(i32** %2, i32* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @git_submodule_name(i32* %56)
  %58 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @git_submodule_path(i32* %59)
  %61 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @git_submodule_free(i32* %62)
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @git_submodule_lookup(i32** %2, i32* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @git_submodule_free(i32* %67)
  %69 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.8, i64 0, i64 0))
  %70 = load i32*, i32** %1, align 8
  %71 = call i32 @git_submodule_lookup(i32** %2, i32* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %72 = call i32 @cl_git_fail(i32 %71)
  %73 = load i32*, i32** %1, align 8
  %74 = call i32 @git_submodule_lookup(i32** %2, i32* %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i32 @cl_git_pass(i32 %74)
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @git_submodule_free(i32* %76)
  %78 = call i32 @p_unlink(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %79 = call i32 @cl_must_pass(i32 %78)
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @git_submodule_lookup(i32** %2, i32* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %82 = call i32 @cl_git_fail(i32 %81)
  %83 = load i32*, i32** %1, align 8
  %84 = call i32 @git_submodule_lookup(i32** %2, i32* %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %85 = call i32 @cl_git_fail(i32 %84)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_submodule_lookup(i32**, i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_submodule_add_setup(i32**, i32*, i8*, i8*, i32) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_submodule_name(i32*) #1

declare dso_local i32 @git_submodule_path(i32*) #1

declare dso_local i32 @git_submodule_free(i32*) #1

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @strstr(i32, i8*) #1

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
