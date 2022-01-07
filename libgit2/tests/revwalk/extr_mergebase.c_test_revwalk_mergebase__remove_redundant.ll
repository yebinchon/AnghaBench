; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revwalk/extr_mergebase.c_test_revwalk_mergebase__remove_redundant.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revwalk/extr_mergebase.c_test_revwalk_mergebase__remove_redundant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"redundant.git\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"d89137c93ba1ee749214ff4ce52ae9137bc833f9\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"91f4b95df4a59504a9813ba66912562931d990e3\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"6cb1f2352d974e1c5a776093017e8772416ac97a\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revwalk_mergebase__remove_redundant() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 24, i1 false)
  %7 = call i32 @cl_fixture(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @git_repository_open(i32** %1, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @git_oid_fromstr(i32* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @git_merge_bases(%struct.TYPE_4__* %5, i32* %16, i32* %2, i32* %3)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @cl_assert_equal_i(i32 1, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = call i32 @cl_assert_equal_oid(i32* %4, i32* %24)
  %26 = call i32 @git_oidarray_free(%struct.TYPE_4__* %5)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_repository_free(i32* %27)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_open(i32**, i32) #2

declare dso_local i32 @cl_fixture(i8*) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_merge_bases(%struct.TYPE_4__*, i32*, i32*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #2

declare dso_local i32 @git_oidarray_free(%struct.TYPE_4__*) #2

declare dso_local i32 @git_repository_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
