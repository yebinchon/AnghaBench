; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stash/extr_save.c_test_stash_save__can_stage_normal_then_stage_untracked.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stash/extr_save.c_test_stash_save__can_stage_normal_then_stage_untracked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"what\00", align 1
@GIT_STATUS_WT_MODIFIED = common dso_local global i32 0, align 4
@GIT_STATUS_INDEX_MODIFIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"how\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"who\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"when\00", align 1
@GIT_STATUS_WT_NEW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"just.ignore\00", align 1
@GIT_STATUS_IGNORED = common dso_local global i32 0, align 4
@stash_tip_oid = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@GIT_STASH_DEFAULT = common dso_local global i32 0, align 4
@GIT_STATUS_CURRENT = common dso_local global i32 0, align 4
@GIT_STASH_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"stash@{1}^0:what\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"bc99dc98b3eba0e9157e94769cd4d49cb49de449\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"stash@{1}^0:how\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"e6d64adb2c7f3eb8feb493b556cc8070dca379a3\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"stash@{1}^0:who\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"a0400d4954659306a976567af43125a0b1aa8595\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"stash@{1}^0:when\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"stash@{1}^2:what\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"dd7e1c6f0fefe118f0b63d9f10908c460aa317a6\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"stash@{1}^2:how\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"stash@{1}^2:who\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"cc628ccd10742baea8241c5924df992b5c019f71\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"stash@{1}^2:when\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"stash@{1}^3\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [17 x i8] c"stash@{0}^0:what\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"ce013625030ba8dba906f756967f9e9ca394464a\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"stash@{0}^0:how\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"ac790413e2d7a26c3767e78c57bb28716686eebc\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"stash@{0}^0:who\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"stash@{0}^0:when\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"stash@{0}^2:what\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"stash@{0}^2:how\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"stash@{0}^2:who\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"stash@{0}^2:when\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"stash@{0}^3:when\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"b6ed15e81e2593d7bb6265eb4a991d29dc3e628b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stash_save__can_stage_normal_then_stage_untracked() #0 {
  %1 = load i32, i32* @repo, align 4
  %2 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %3 = load i32, i32* @GIT_STATUS_INDEX_MODIFIED, align 4
  %4 = or i32 %2, %3
  %5 = call i32 @assert_status(i32 %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* @repo, align 4
  %7 = load i32, i32* @GIT_STATUS_INDEX_MODIFIED, align 4
  %8 = call i32 @assert_status(i32 %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @repo, align 4
  %10 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %11 = call i32 @assert_status(i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @repo, align 4
  %13 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  %14 = call i32 @assert_status(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @repo, align 4
  %16 = load i32, i32* @GIT_STATUS_IGNORED, align 4
  %17 = call i32 @assert_status(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @repo, align 4
  %19 = load i32, i32* @signature, align 4
  %20 = load i32, i32* @GIT_STASH_DEFAULT, align 4
  %21 = call i32 @git_stash_save(i32* @stash_tip_oid, i32 %18, i32 %19, i32* null, i32 %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @repo, align 4
  %24 = load i32, i32* @GIT_STATUS_CURRENT, align 4
  %25 = call i32 @assert_status(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @repo, align 4
  %27 = load i32, i32* @GIT_STATUS_CURRENT, align 4
  %28 = call i32 @assert_status(i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @repo, align 4
  %30 = load i32, i32* @GIT_STATUS_CURRENT, align 4
  %31 = call i32 @assert_status(i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @repo, align 4
  %33 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  %34 = call i32 @assert_status(i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @repo, align 4
  %36 = load i32, i32* @GIT_STATUS_IGNORED, align 4
  %37 = call i32 @assert_status(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @repo, align 4
  %39 = load i32, i32* @signature, align 4
  %40 = load i32, i32* @GIT_STASH_INCLUDE_UNTRACKED, align 4
  %41 = call i32 @git_stash_save(i32* @stash_tip_oid, i32 %38, i32 %39, i32* null, i32 %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32, i32* @repo, align 4
  %44 = load i32, i32* @GIT_STATUS_CURRENT, align 4
  %45 = call i32 @assert_status(i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @repo, align 4
  %47 = load i32, i32* @GIT_STATUS_CURRENT, align 4
  %48 = call i32 @assert_status(i32 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @repo, align 4
  %50 = load i32, i32* @GIT_STATUS_CURRENT, align 4
  %51 = call i32 @assert_status(i32 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @repo, align 4
  %53 = load i32, i32* @GIT_ENOTFOUND, align 4
  %54 = call i32 @assert_status(i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @repo, align 4
  %56 = load i32, i32* @GIT_STATUS_IGNORED, align 4
  %57 = call i32 @assert_status(i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %59 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %60 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %61 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* null)
  %62 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %63 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %64 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  %65 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i8* null)
  %66 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %67 = call i32 @assert_object_oid(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32* null, i32 %66)
  %68 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0))
  %69 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0))
  %70 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  %71 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i8* null)
  %72 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0))
  %73 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0))
  %74 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  %75 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i8* null)
  %76 = call i32 @assert_blob_oid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert_status(i32, i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_stash_save(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @assert_blob_oid(i8*, i8*) #1

declare dso_local i32 @assert_object_oid(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
