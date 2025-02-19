; ModuleID = '/home/carl/AnghaBench/libgit2/tests/clone/extr_nonetwork.c_test_clone_nonetwork__bad_urls.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/clone/extr_nonetwork.c_test_clone_nonetwork__bad_urls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"not_a_repo\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"./foo\00", align 1
@g_options = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"git://example.com:asdf\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"https://example.com:asdf/foo\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"git://github.com/git://github.com/foo/bar.git.git\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"arrbee:my/bad:password@github.com:1111/strange:words.git\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_clone_nonetwork__bad_urls() #0 {
  %1 = call i32 @git_clone(i32* @g_repo, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* @g_options)
  %2 = call i32 @cl_git_fail(i32 %1)
  %3 = call i32 @git_path_exists(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @cl_assert(i32 %6)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_options, i32 0, i32 0), align 4
  %8 = call i32 @git_clone(i32* @g_repo, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* @g_options)
  %9 = call i32 @cl_git_fail(i32 %8)
  %10 = call i32 @git_path_exists(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  %15 = call i32 @git_clone(i32* @g_repo, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* @g_options)
  %16 = call i32 @cl_git_fail(i32 %15)
  %17 = call i32 @git_clone(i32* @g_repo, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* @g_options)
  %18 = call i32 @cl_git_fail(i32 %17)
  %19 = call i32 @git_clone(i32* @g_repo, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* @g_options)
  %20 = call i32 @cl_git_fail(i32 %19)
  %21 = call i32 @git_clone(i32* @g_repo, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* @g_options)
  %22 = call i32 @cl_git_fail(i32 %21)
  ret void
}

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_clone(i32*, i8*, i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_exists(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
