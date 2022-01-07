; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_reflog.c_assert_appends.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_reflog.c_assert_appends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@new_ref = common dso_local global i32 0, align 4
@GIT_OID_HEX_ZERO = common dso_local global i32 0, align 4
@commit_msg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @assert_appends to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_appends(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = call i32 @git_repository_open(i32** %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @new_ref, align 4
  %13 = call i32 @git_reference_lookup(i32** %6, i32* %11, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @new_ref, align 4
  %17 = call i32 @git_reflog_read(i32** %7, i32* %15, i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @git_reflog_entrycount(i32* %19)
  %21 = trunc i64 %20 to i32
  %22 = call i32 @cl_assert_equal_i(i32 3, i32 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = call %struct.TYPE_3__* @git_reflog_entry_byindex(i32* %23, i32 2)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %8, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* @GIT_OID_HEX_ZERO, align 4
  %28 = call i64 @git_oid_streq(i32* %26, i32 %27)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @cl_assert(i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = call %struct.TYPE_3__* @git_reflog_entry_byindex(i32* %32, i32 1)
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %8, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @assert_signature(i32* %34, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = call i64 @git_oid_cmp(i32* %39, i32* %41)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @cl_assert(i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = call i64 @git_oid_cmp(i32* %46, i32* %48)
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @cl_assert(i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @cl_assert(i32 %57)
  %59 = load i32*, i32** %7, align 8
  %60 = call %struct.TYPE_3__* @git_reflog_entry_byindex(i32* %59, i32 0)
  store %struct.TYPE_3__* %60, %struct.TYPE_3__** %8, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @assert_signature(i32* %61, i32 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = call i64 @git_oid_cmp(i32* %66, i32* %68)
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @cl_assert(i32 %71)
  %73 = load i32, i32* @commit_msg, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @cl_assert_equal_s(i32 %73, i32* %76)
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @git_reflog_free(i32* %78)
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @git_repository_free(i32* %80)
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @git_reference_free(i32* %82)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32**, i8*) #1

declare dso_local i32 @git_reference_lookup(i32**, i32*, i32) #1

declare dso_local i32 @git_reflog_read(i32**, i32*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i64 @git_reflog_entrycount(i32*) #1

declare dso_local %struct.TYPE_3__* @git_reflog_entry_byindex(i32*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_oid_streq(i32*, i32) #1

declare dso_local i32 @assert_signature(i32*, i32) #1

declare dso_local i64 @git_oid_cmp(i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32*) #1

declare dso_local i32 @git_reflog_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
