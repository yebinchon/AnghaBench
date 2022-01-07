; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_abort.c_ensure_aborted.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_abort.c_ensure_aborted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@GIT_REPOSITORY_STATE_NONE = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"refs/heads/beef\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"rebase: aborting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_5__*)* @ensure_aborted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ensure_aborted(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32* null, i32** %6, align 8
  %10 = load i32, i32* @GIT_REPOSITORY_STATE_NONE, align 4
  %11 = load i32, i32* @repo, align 4
  %12 = call i32 @git_repository_state(i32 %11)
  %13 = call i32 @cl_assert_equal_i(i32 %10, i32 %12)
  %14 = load i32, i32* @repo, align 4
  %15 = call i32 @git_reference_lookup(i32** %5, i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = call i32 @git_annotated_commit_id(%struct.TYPE_5__* %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @git_reference_target(i32* %24)
  %26 = call i32 @cl_assert_equal_oid(i32 %23, i32 %25)
  br label %41

27:                                               ; preds = %2
  %28 = load i32*, i32** %5, align 8
  %29 = call i8* @git_reference_symbolic_target(i32* %28)
  %30 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @repo, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i8* @git_reference_symbolic_target(i32* %32)
  %34 = call i32 @git_reference_lookup(i32** %6, i32 %31, i8* %33)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = call i32 @git_annotated_commit_id(%struct.TYPE_5__* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @git_reference_target(i32* %38)
  %40 = call i32 @cl_assert_equal_oid(i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %27, %21
  %42 = load i32, i32* @repo, align 4
  %43 = call i32 @git_status_list_new(i32** %7, i32 %42, i32* null)
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @git_status_list_entrycount(i32* %44)
  %46 = call i32 @cl_assert_equal_i(i32 0, i32 %45)
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @git_status_list_free(i32* %47)
  %49 = load i32, i32* @repo, align 4
  %50 = call i32 @git_reflog_read(i32** %8, i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32* @git_reflog_entry_byindex(i32* %52, i32 0)
  store i32* %53, i32** %9, align 8
  %54 = call i32 @cl_assert(i32* %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = call i32 @git_annotated_commit_id(%struct.TYPE_5__* %55)
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @git_reflog_entry_id_old(i32* %57)
  %59 = call i32 @cl_assert_equal_oid(i32 %56, i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = call i32 @git_annotated_commit_id(%struct.TYPE_5__* %60)
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @git_reflog_entry_id_new(i32* %62)
  %64 = call i32 @cl_assert_equal_oid(i32 %61, i32 %63)
  %65 = load i32*, i32** %9, align 8
  %66 = call i8* @git_reflog_entry_message(i32* %65)
  %67 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @git_reflog_free(i32* %68)
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @git_reference_free(i32* %70)
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @git_reference_free(i32* %72)
  ret void
}

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_repository_state(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_oid(i32, i32) #1

declare dso_local i32 @git_annotated_commit_id(%struct.TYPE_5__*) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #1

declare dso_local i8* @git_reference_symbolic_target(i32*) #1

declare dso_local i32 @git_status_list_new(i32**, i32, i32*) #1

declare dso_local i32 @git_status_list_entrycount(i32*) #1

declare dso_local i32 @git_status_list_free(i32*) #1

declare dso_local i32 @git_reflog_read(i32**, i32, i8*) #1

declare dso_local i32 @cl_assert(i32*) #1

declare dso_local i32* @git_reflog_entry_byindex(i32*, i32) #1

declare dso_local i32 @git_reflog_entry_id_old(i32*) #1

declare dso_local i32 @git_reflog_entry_id_new(i32*) #1

declare dso_local i8* @git_reflog_entry_message(i32*) #1

declare dso_local i32 @git_reflog_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
