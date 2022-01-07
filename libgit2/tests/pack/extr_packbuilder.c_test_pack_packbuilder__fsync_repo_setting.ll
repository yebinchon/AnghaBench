; ModuleID = '/home/carl/AnghaBench/libgit2/tests/pack/extr_packbuilder.c_test_pack_packbuilder__fsync_repo_setting.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/pack/extr_packbuilder.c_test_pack_packbuilder__fsync_repo_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"core.fsyncObjectFiles\00", align 1
@p_fsync__cnt = common dso_local global i64 0, align 8
@_packbuilder = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@expected_fsyncs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_pack_packbuilder__fsync_repo_setting() #0 {
  %1 = load i32, i32* @_repo, align 4
  %2 = call i32 @cl_repo_set_bool(i32 %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 1)
  store i64 0, i64* @p_fsync__cnt, align 8
  %3 = call i32 (...) @seed_packbuilder()
  %4 = load i32, i32* @_packbuilder, align 4
  %5 = call i32 @git_packbuilder_write(i32 %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 438, i32* null, i32* null)
  %6 = load i32, i32* @expected_fsyncs, align 4
  %7 = load i64, i64* @p_fsync__cnt, align 8
  %8 = call i32 @cl_assert_equal_sz(i32 %6, i64 %7)
  ret void
}

declare dso_local i32 @cl_repo_set_bool(i32, i8*, i32) #1

declare dso_local i32 @seed_packbuilder(...) #1

declare dso_local i32 @git_packbuilder_write(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
