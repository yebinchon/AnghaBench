; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_patchid.c_test_diff_patchid__same_diff_with_differing_whitespace_has_same_id.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_patchid.c_test_diff_patchid__same_diff_with_differing_whitespace_has_same_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [128 x i8] c"diff --git a/file.txt b/file.txt\0Aindex 8fecc09..1d43a92 100644\0A--- a/file.txt\0A+++ b/file.txt\0A@@ -1 +1 @@\0A-old text\0A+\09\09new text\0A\00", align 1
@.str.1 = private unnamed_addr constant [134 x i8] c"diff --git a/file.txt b/file.txt\0Aindex 8fecc09..1d43a92 100644\0A--- a/file.txt\0A+++ b/file.txt\0A@@ -1 +1 @@\0A-old text\0A+        new text\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"11efdd13c30f7a1056eac2ae2fb952da475e2c23\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_patchid__same_diff_with_differing_whitespace_has_same_id() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @verify_patch_id(i8* %4, i8* %5)
  %7 = load i8*, i8** %2, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @verify_patch_id(i8* %7, i8* %8)
  ret void
}

declare dso_local i32 @verify_patch_id(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
