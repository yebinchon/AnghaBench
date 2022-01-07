; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_binary.c_test_diff_binary__delta_append.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_binary.c_test_diff_binary__delta_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [248 x i8] c"diff --git a/untimely.txt b/untimely.txt\0Aindex 9a69d960ae94b060f56c2a8702545e2bb1abb935..1111d4f11f4b35bf6759e0fb714fe09731ef0840 100644\0AGIT binary patch\0Adelta 32\0Anc%1vf+QYWt3zLL@hC)e3Vu?a>QDRl4f_G*?PG(-ZA}<#J$+QbW\0A\0Adelta 7\0AOc%18D`@*{63ljhg(E~C7\0A\0A\00", align 1
@GIT_DIFF_SHOW_BINARY = common dso_local global i32 0, align 4
@GIT_DIFF_FORCE_BINARY = common dso_local global i32 0, align 4
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"renames\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"renames/untimely.txt\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Oh that crazy Kipling!\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"untimely.txt\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"19dd32dfb1520a64e5bbaae8dce6ef423dfa2f13\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_binary__delta_append() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca i8*, align 8
  %4 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 8, i1 false)
  store i8* getelementptr inbounds ([248 x i8], [248 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %5 = load i32, i32* @GIT_DIFF_SHOW_BINARY, align 4
  %6 = load i32, i32* @GIT_DIFF_FORCE_BINARY, align 4
  %7 = or i32 %5, %6
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %11, i32* @repo, align 4
  %12 = load i32, i32* @repo, align 4
  %13 = call i32 @git_repository_index(i32** %1, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @cl_git_append2file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @git_index_add_bypath(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @git_index_write(i32* %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @test_patch(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32* null, %struct.TYPE_4__* %2, i8* %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @git_index_free(i32* %24)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @cl_git_append2file(i8*, i8*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @test_patch(i8*, i32*, %struct.TYPE_4__*, i8*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
