; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_binaryunicode.c_execute_test.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_binaryunicode.c_execute_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"refs/heads/branch1\00", align 1
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"8ab005d890fe53f65eda14b23672f60d9f4ec5a1\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"binaryunicode/lenna.jpg\00", align 1
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"965b223880dd4249e2c66a0cc0b4cffe1dc40f5a\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"binaryunicode/utf16_withbom_noeol_crlf.txt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @execute_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execute_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @git_reference_name_to_id(i32* %1, i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @g_repo, align 4
  %11 = call i32 @git_commit_lookup(i32** %3, i32 %10, i32* %1)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @git_commit_tree(i32** %4, i32* %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @g_repo, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @git_checkout_tree(i32 %18, i32* %19, %struct.TYPE_4__* %5)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @git_tree_free(i32* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @git_commit_free(i32* %24)
  %26 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %29 = call i32 @git_odb_hashfile(i32* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = call i32 @cl_assert_equal_oid(i32* %1, i32* %2)
  %32 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %35 = call i32 @git_odb_hashfile(i32* %1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = call i32 @cl_assert_equal_oid(i32* %1, i32* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_name_to_id(i32*, i32, i8*) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_commit_tree(i32**, i32*) #2

declare dso_local i32 @git_checkout_tree(i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_odb_hashfile(i32*, i8*, i32) #2

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
