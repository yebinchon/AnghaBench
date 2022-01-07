; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_reuc.c_test_index_reuc__write.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_reuc.c_test_index_reuc__write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@repo_index = common dso_local global i32 0, align 4
@TWO_ANCESTOR_OID = common dso_local global i32 0, align 4
@TWO_OUR_OID = common dso_local global i32 0, align 4
@TWO_THEIR_OID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"two.txt\00", align 1
@ONE_ANCESTOR_OID = common dso_local global i32 0, align 4
@ONE_OUR_OID = common dso_local global i32 0, align 4
@ONE_THEIR_OID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"one.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_reuc__write() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = load i32, i32* @repo_index, align 4
  %6 = call i32 @git_index_clear(i32 %5)
  %7 = load i32, i32* @TWO_ANCESTOR_OID, align 4
  %8 = call i32 @git_oid_fromstr(i32* %1, i32 %7)
  %9 = load i32, i32* @TWO_OUR_OID, align 4
  %10 = call i32 @git_oid_fromstr(i32* %2, i32 %9)
  %11 = load i32, i32* @TWO_THEIR_OID, align 4
  %12 = call i32 @git_oid_fromstr(i32* %3, i32 %11)
  %13 = load i32, i32* @repo_index, align 4
  %14 = call i32 @git_index_reuc_add(i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 33188, i32* %1, i32 33188, i32* %2, i32 33188, i32* %3)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @ONE_ANCESTOR_OID, align 4
  %17 = call i32 @git_oid_fromstr(i32* %1, i32 %16)
  %18 = load i32, i32* @ONE_OUR_OID, align 4
  %19 = call i32 @git_oid_fromstr(i32* %2, i32 %18)
  %20 = load i32, i32* @ONE_THEIR_OID, align 4
  %21 = call i32 @git_oid_fromstr(i32* %3, i32 %20)
  %22 = load i32, i32* @repo_index, align 4
  %23 = call i32 @git_index_reuc_add(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 33188, i32* %1, i32 33188, i32* %2, i32 33188, i32* %3)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* @repo_index, align 4
  %26 = call i32 @git_index_write(i32 %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @repo_index, align 4
  %29 = call i32 @git_index_reuc_entrycount(i32 %28)
  %30 = call i32 @cl_assert_equal_i(i32 2, i32 %29)
  %31 = load i32, i32* @repo_index, align 4
  %32 = call %struct.TYPE_4__* @git_index_reuc_get_byindex(i32 %31, i32 0)
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %4, align 8
  %33 = call i32 @cl_assert(%struct.TYPE_4__* %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @repo_index, align 4
  %39 = call %struct.TYPE_4__* @git_index_reuc_get_byindex(i32 %38, i32 1)
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %4, align 8
  %40 = call i32 @cl_assert(%struct.TYPE_4__* %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %43)
  ret void
}

declare dso_local i32 @git_index_clear(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_reuc_add(i32, i8*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @git_index_write(i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_index_reuc_entrycount(i32) #1

declare dso_local i32 @cl_assert(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @git_index_reuc_get_byindex(i32, i32) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
