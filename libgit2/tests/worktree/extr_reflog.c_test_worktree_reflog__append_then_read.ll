; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_reflog.c_test_worktree_reflog__append_then_read.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_reflog.c_test_worktree_reflog__append_then_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@fixture = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"foo@bar\00", align 1
@REFLOG = common dso_local global i32 0, align 4
@REFLOG_MESSAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_reflog__append_then_read() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fixture, i32 0, i32 1), align 4
  %8 = call i32 @git_repository_head(i32** %4, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @git_reference_target(i32* %10)
  store i32* %11, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  %15 = call i32 @git_signature_now(i32** %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fixture, i32 0, i32 1), align 4
  %18 = load i32, i32* @REFLOG, align 4
  %19 = call i32 @git_reflog_read(i32** %1, i32 %17, i32 %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @REFLOG_MESSAGE, align 4
  %25 = call i32 @git_reflog_append(i32* %21, i32* %22, i32* %23, i32 %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_reflog_write(i32* %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fixture, i32 0, i32 0), align 4
  %30 = load i32, i32* @REFLOG, align 4
  %31 = call i32 @git_reflog_read(i32** %2, i32 %29, i32 %30)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call %struct.TYPE_4__* @git_reflog_entry_byindex(i32* %33, i32 0)
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %3, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = call i64 @git_oid_cmp(i32* %35, i32* %37)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @cl_assert(i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i64 @git_oid_cmp(i32* %42, i32* %44)
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @cl_assert(i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @git_reference_free(i32* %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @git_signature_free(i32* %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @git_reflog_free(i32* %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @git_reflog_free(i32* %55)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_head(i32**, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @git_reference_target(i32*) #1

declare dso_local i32 @git_signature_now(i32**, i8*, i8*) #1

declare dso_local i32 @git_reflog_read(i32**, i32, i32) #1

declare dso_local i32 @git_reflog_append(i32*, i32*, i32*, i32) #1

declare dso_local i32 @git_reflog_write(i32*) #1

declare dso_local %struct.TYPE_4__* @git_reflog_entry_byindex(i32*, i32) #1

declare dso_local i64 @git_oid_cmp(i32*, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_signature_free(i32*) #1

declare dso_local i32 @git_reflog_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
