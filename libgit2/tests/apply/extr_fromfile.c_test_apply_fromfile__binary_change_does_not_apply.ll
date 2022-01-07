; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_fromfile.c_test_apply_fromfile__binary_change_does_not_apply.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_fromfile.c_test_apply_fromfile__binary_change_does_not_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_BINARY_DELTA_MODIFIED = common dso_local global i32 0, align 4
@FILE_BINARY_DELTA_MODIFIED_LEN = common dso_local global i32 0, align 4
@FILE_BINARY_DELTA_ORIGINAL = common dso_local global i32 0, align 4
@FILE_BINARY_DELTA_ORIGINAL_LEN = common dso_local global i32 0, align 4
@PATCH_BINARY_DELTA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"binary.bin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_apply_fromfile__binary_change_does_not_apply() #0 {
  %1 = load i32, i32* @FILE_BINARY_DELTA_MODIFIED, align 4
  %2 = load i32, i32* @FILE_BINARY_DELTA_MODIFIED_LEN, align 4
  %3 = load i32, i32* @FILE_BINARY_DELTA_ORIGINAL, align 4
  %4 = load i32, i32* @FILE_BINARY_DELTA_ORIGINAL_LEN, align 4
  %5 = load i32, i32* @PATCH_BINARY_DELTA, align 4
  %6 = call i32 @apply_patchfile(i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 33188)
  %7 = call i32 @cl_git_fail(i32 %6)
  ret void
}

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @apply_patchfile(i32, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
