; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_remotes.c_test_network_remote_remotes__pushurl.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_remotes.c_test_network_remote_remotes__pushurl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_remote = common dso_local global i32 0, align 4
@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"git://github.com/libgit2/notlibgit2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_remotes__pushurl() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @_remote, align 4
  %4 = call i8* @git_remote_name(i32 %3)
  store i8* %4, i8** %1, align 8
  %5 = load i32, i32* @_repo, align 4
  %6 = load i8*, i8** %1, align 8
  %7 = call i32 @git_remote_set_pushurl(i32 %5, i8* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @_repo, align 4
  %10 = load i8*, i8** %1, align 8
  %11 = call i32 @git_remote_lookup(i32** %2, i32 %9, i8* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32* @git_remote_pushurl(i32* %13)
  %15 = call i32 @cl_assert_equal_s(i32* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @git_remote_free(i32* %16)
  %18 = load i32, i32* @_repo, align 4
  %19 = load i8*, i8** %1, align 8
  %20 = call i32 @git_remote_set_pushurl(i32 %18, i8* %19, i8* null)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @_repo, align 4
  %23 = load i8*, i8** %1, align 8
  %24 = call i32 @git_remote_lookup(i32** %2, i32 %22, i8* %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32* @git_remote_pushurl(i32* %26)
  %28 = icmp eq i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @cl_assert(i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @git_remote_free(i32* %31)
  ret void
}

declare dso_local i8* @git_remote_name(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_remote_set_pushurl(i32, i8*, i8*) #1

declare dso_local i32 @git_remote_lookup(i32**, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i32*, i8*) #1

declare dso_local i32* @git_remote_pushurl(i32*) #1

declare dso_local i32 @git_remote_free(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
