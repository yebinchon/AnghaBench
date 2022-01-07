; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__honor_coresymlinks_default_true.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__honor_coresymlinks_default_true.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"symlink/test\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"./symlink/link_to_new.txt\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"new.txt\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"my new file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_index__honor_coresymlinks_default_true() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GIT_PATH_MAX, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = load i32, i32* @GIT_PATH_MAX, align 4
  store i32 %8, i32* %3, align 4
  %9 = call i32 @p_mkdir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 511)
  %10 = call i32 @cl_must_pass(i32 %9)
  %11 = call i32 @git_path_supports_symlinks(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = call i32 (...) @cl_skip()
  br label %15

15:                                               ; preds = %13, %0
  %16 = call i32 (...) @populate_symlink_workdir()
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @p_readlink(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %7, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sge i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @cl_assert(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %7, i64 %24
  store i8 0, i8* %25, align 1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i32 @cl_assert_equal_i(i32 %26, i32 %27)
  %29 = call i32 @cl_assert_equal_s(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i32 @check_file_contents(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %31)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @git_path_supports_symlinks(i8*) #2

declare dso_local i32 @cl_skip(...) #2

declare dso_local i32 @populate_symlink_workdir(...) #2

declare dso_local i32 @p_readlink(i8*, i8*, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i32 @check_file_contents(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
