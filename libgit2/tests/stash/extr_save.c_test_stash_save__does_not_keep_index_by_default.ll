; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stash/extr_save.c_test_stash_save__does_not_keep_index_by_default.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stash/extr_save.c_test_stash_save__does_not_keep_index_by_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stash_tip_oid = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@GIT_STASH_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"when\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"refs/stash:what\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"bc99dc98b3eba0e9157e94769cd4d49cb49de449\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"refs/stash:how\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"e6d64adb2c7f3eb8feb493b556cc8070dca379a3\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"refs/stash:who\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"a0400d4954659306a976567af43125a0b1aa8595\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"refs/stash:when\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"refs/stash:why\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"88c2533e21f098b89c91a431d8075cbdbe422a51\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"refs/stash:where\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"e3d6434ec12eb76af8dfa843a64ba6ab91014a0b\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"refs/stash:.gitignore\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"ac4d88de61733173d9959e4b77c69b9f17a00980\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"refs/stash:just.ignore\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"refs/stash^2:what\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"dd7e1c6f0fefe118f0b63d9f10908c460aa317a6\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"refs/stash^2:how\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"refs/stash^2:who\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"cc628ccd10742baea8241c5924df992b5c019f71\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"refs/stash^2:when\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"refs/stash^2:why\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"refs/stash^2:where\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"e08f7fbb9a42a0c5367cf8b349f1f08c3d56bd72\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"refs/stash^2:.gitignore\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"refs/stash^2:just.ignore\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"refs/stash^3\00", align 1
@GIT_STATUS_WT_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stash_save__does_not_keep_index_by_default() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @repo, align 4
  %3 = load i32, i32* @signature, align 4
  %4 = load i32, i32* @GIT_STASH_DEFAULT, align 4
  %5 = call i32 @git_stash_save(i32* @stash_tip_oid, i32 %2, i32 %3, i32* null, i32 %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @repo, align 4
  %8 = call i32 @git_status_file(i32* %1, i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %13 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* null)
  %14 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %15 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %16 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %17 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* null)
  %18 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  %19 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %20 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0))
  %21 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i8* null)
  %22 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %23 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0))
  %24 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %25 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i8* null)
  %26 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8* null)
  %27 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @cl_assert_equal_i(i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_stash_save(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @git_status_file(i32*, i32, i8*) #1

declare dso_local i32 @assert_blob_oid(i8*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
