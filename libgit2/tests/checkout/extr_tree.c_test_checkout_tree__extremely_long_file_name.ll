; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__extremely_long_file_name.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__extremely_long_file_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [250 x i8] c"\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\E5\8F\97\00", align 1
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@g_opts = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@g_object = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"long-file-name\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"testrepo/%s.txt\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"master\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_tree__extremely_long_file_name() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [1024 x i8], align 16
  store i8* getelementptr inbounds ([250 x i8], [250 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %3 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_opts, i32 0, i32 0), align 4
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i32 @git_revparse_single(i32* @g_object, i32 %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @g_repo, align 4
  %8 = load i32, i32* @g_object, align 4
  %9 = call i32 @git_checkout_tree(i32 %7, i32 %8, %struct.TYPE_3__* @g_opts)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %12 = load i8*, i8** %1, align 8
  %13 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %15 = call i32 @git_path_exists(i8* %14)
  %16 = call i32 @cl_assert(i32 %15)
  %17 = load i32, i32* @g_object, align 4
  %18 = call i32 @git_object_free(i32 %17)
  %19 = load i32, i32* @g_repo, align 4
  %20 = call i32 @git_revparse_single(i32* @g_object, i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @g_repo, align 4
  %23 = load i32, i32* @g_object, align 4
  %24 = call i32 @git_checkout_tree(i32 %22, i32 %23, %struct.TYPE_3__* @g_opts)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %27 = call i32 @git_path_exists(i8* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @cl_assert(i32 %30)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_revparse_single(i32*, i32, i8*) #1

declare dso_local i32 @git_checkout_tree(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_exists(i8*) #1

declare dso_local i32 @git_object_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
