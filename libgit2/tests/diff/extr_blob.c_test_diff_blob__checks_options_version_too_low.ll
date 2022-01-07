; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_blob.c_test_diff_blob__checks_options_version_too_low.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_blob.c_test_diff_blob__checks_options_version_too_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@opts = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@d = common dso_local global i32 0, align 4
@alien = common dso_local global i32 0, align 4
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@expected = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_blob__checks_options_version_too_low() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @opts, i32 0, i32 0), align 8
  %2 = load i32, i32* @d, align 4
  %3 = load i32, i32* @alien, align 4
  %4 = load i32, i32* @diff_file_cb, align 4
  %5 = load i32, i32* @diff_binary_cb, align 4
  %6 = load i32, i32* @diff_hunk_cb, align 4
  %7 = load i32, i32* @diff_line_cb, align 4
  %8 = call i32 @git_diff_blobs(i32 %2, i32* null, i32 %3, i32* null, %struct.TYPE_6__* @opts, i32 %4, i32 %5, i32 %6, i32 %7, i32* @expected)
  %9 = call i32 @cl_git_fail(i32 %8)
  %10 = call %struct.TYPE_5__* (...) @git_error_last()
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %1, align 8
  %11 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cl_assert_equal_i(i32 %11, i32 %14)
  ret void
}

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_diff_blobs(i32, i32*, i32, i32*, %struct.TYPE_6__*, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @git_error_last(...) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
