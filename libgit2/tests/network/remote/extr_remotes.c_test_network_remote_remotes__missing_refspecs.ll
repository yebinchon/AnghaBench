; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_remotes.c_test_network_remote_remotes__missing_refspecs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_remotes.c_test_network_remote_remotes__missing_refspecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_remote = common dso_local global i32* null, align 8
@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"remote.specless.url\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"http://example.com\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"specless\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_remotes__missing_refspecs() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @_remote, align 8
  %3 = call i32 @git_remote_free(i32* %2)
  store i32* null, i32** @_remote, align 8
  %4 = load i32, i32* @_repo, align 4
  %5 = call i32 @git_repository_config(i32** %1, i32 %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_config_set_string(i32* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @_repo, align 4
  %11 = call i32 @git_remote_lookup(i32** @_remote, i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_config_free(i32* %13)
  ret void
}

declare dso_local i32 @git_remote_free(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_config(i32**, i32) #1

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_remote_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
