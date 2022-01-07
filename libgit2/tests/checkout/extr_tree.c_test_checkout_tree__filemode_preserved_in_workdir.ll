; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__filemode_preserved_in_workdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__filemode_preserved_in_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"afe4393b2b2a965f06acf2ca9658eaa01e0cd6b6\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"executable.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"cf80f8de9f1185bf3a05f993f6121880dd0cfbc9\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"a/b.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"144344043ba4d4a405da03de3844aa829ae8be0e\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_tree__filemode_preserved_in_workdir() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %5 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @g_repo, align 4
  %10 = call i32 @git_commit_lookup(i32** %2, i32 %9, i32* %1)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @g_repo, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @git_checkout_tree(i32 %12, i32* %13, %struct.TYPE_4__* %3)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @read_filemode(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @GIT_PERMS_IS_EXEC(i32 %16)
  %18 = call i32 @cl_assert(i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @git_commit_free(i32* %19)
  %21 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @g_repo, align 4
  %24 = call i32 @git_commit_lookup(i32** %2, i32 %23, i32* %1)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @g_repo, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_checkout_tree(i32 %26, i32* %27, %struct.TYPE_4__* %3)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = call i32 @read_filemode(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 @GIT_PERMS_IS_EXEC(i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @cl_assert(i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @git_commit_free(i32* %36)
  %38 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32, i32* @g_repo, align 4
  %41 = call i32 @git_commit_lookup(i32** %2, i32 %40, i32* %1)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32, i32* @g_repo, align 4
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @git_checkout_tree(i32 %43, i32* %44, %struct.TYPE_4__* %3)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = call i32 @read_filemode(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %48 = call i32 @GIT_PERMS_IS_EXEC(i32 %47)
  %49 = call i32 @cl_assert(i32 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @git_commit_free(i32* %50)
  %52 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i32, i32* @g_repo, align 4
  %55 = call i32 @git_commit_lookup(i32** %2, i32 %54, i32* %1)
  %56 = call i32 @cl_git_pass(i32 %55)
  %57 = load i32, i32* @g_repo, align 4
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @git_checkout_tree(i32 %57, i32* %58, %struct.TYPE_4__* %3)
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = call i32 @read_filemode(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %62 = call i32 @GIT_PERMS_IS_EXEC(i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @cl_assert(i32 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @git_commit_free(i32* %67)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_checkout_tree(i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @GIT_PERMS_IS_EXEC(i32) #2

declare dso_local i32 @read_filemode(i8*) #2

declare dso_local i32 @git_commit_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
