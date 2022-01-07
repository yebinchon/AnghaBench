; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_binary.c_test_diff_binary__modify_normal.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_binary.c_test_diff_binary__modify_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_DIFF_OPTIONS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [118 x i8] c"diff --git a/binary.bin b/binary.bin\0Aindex bd474b2..9ac35ff 100644\0ABinary files a/binary.bin and b/binary.bin differ\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"diff_format_email\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"897d3af16ca9e420cd071b1c4541bd2b91d04c8c\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"8d7523f6fcb2404257889abe0d96f093d9f524f9\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_binary__modify_normal() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @GIT_DIFF_OPTIONS_INIT, align 4
  store i32 %3, i32* %1, align 4
  store i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %4 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %4, i32* @repo, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @test_patch(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32* %1, i8* %5)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @test_patch(i8*, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
