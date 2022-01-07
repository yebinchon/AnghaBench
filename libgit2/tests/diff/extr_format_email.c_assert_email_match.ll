; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_format_email.c_assert_email_match.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_format_email.c_assert_email_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.TYPE_4__*)* @assert_email_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_email_match(i8* %0, i8* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %11 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @git_oid_fromstr(i32* %7, i8* %12)
  %14 = load i32, i32* @repo, align 4
  %15 = call i32 @git_commit_lookup(i32** %8, i32 %14, i32* %7)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @git_commit_id(i32* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @git_commit_author(i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %3
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @git_commit_summary(i32* %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %3
  %35 = load i32, i32* @repo, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @git_diff__commit(i32** %9, i32 %35, i32* %36, i32* null)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32*, i32** %9, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = call i32 @git_diff_format_email(i32* %10, i32* %39, %struct.TYPE_4__* %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @git_buf_cstr(i32* %10)
  %45 = call i32 @cl_assert_equal_s(i8* %43, i32 %44)
  %46 = call i32 @git_buf_clear(i32* %10)
  %47 = load i32, i32* @repo, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @git_diff_commit_as_email(i32* %10, i32 %47, i32* %48, i32 1, i32 1, i32 %51, i32* null)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @git_buf_cstr(i32* %10)
  %56 = call i32 @cl_assert_equal_s(i8* %54, i32 %55)
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @git_diff_free(i32* %57)
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @git_commit_free(i32* %59)
  %61 = call i32 @git_buf_dispose(i32* %10)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_commit_id(i32*) #1

declare dso_local i32 @git_commit_author(i32*) #1

declare dso_local i32 @git_commit_summary(i32*) #1

declare dso_local i32 @git_diff__commit(i32**, i32, i32*, i32*) #1

declare dso_local i32 @git_diff_format_email(i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_clear(i32*) #1

declare dso_local i32 @git_diff_commit_as_email(i32*, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
