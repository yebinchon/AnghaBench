; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_dirent.c_test_core_dirent__length_limits.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_dirent.c_test_core_dirent__length_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILENAME_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_dirent__length_limits() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @FILENAME_MAX, align 4
  %3 = add nsw i32 %2, 1
  %4 = call i64 @git__malloc(i32 %3)
  %5 = inttoptr i64 %4 to i8*
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = load i32, i32* @FILENAME_MAX, align 4
  %8 = add nsw i32 %7, 1
  %9 = call i32 @memset(i8* %6, i8 signext 97, i32 %8)
  %10 = load i8*, i8** %1, align 8
  %11 = load i32, i32* @FILENAME_MAX, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  store i8 0, i8* %13, align 1
  %14 = load i8*, i8** %1, align 8
  %15 = call i32 @p_creat(i8* %14, i32 438)
  %16 = call i32 @cl_must_fail(i32 %15)
  %17 = load i8*, i8** %1, align 8
  %18 = call i32 @git__free(i8* %17)
  ret void
}

declare dso_local i64 @git__malloc(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @cl_must_fail(i32) #1

declare dso_local i32 @p_creat(i8*, i32) #1

declare dso_local i32 @git__free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
