; ModuleID = '/home/carl/AnghaBench/libgit2/tests/fetchhead/extr_nonetwork.c_test_fetchhead_nonetwork__name_missing.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/fetchhead/extr_nonetwork.c_test_fetchhead_nonetwork__name_missing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cleanup_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"./test1\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"./test1/.git/FETCH_HEAD\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"49322bb17d3acc9146f98c97d078513228bbf3c0\09not-for-merge\09remote_url\0A\00", align 1
@read_name_missing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fetchhead_nonetwork__name_missing() #0 {
  %1 = call i32 @cl_set_cleanup(i32* @cleanup_repository, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @git_repository_init(i32* @g_repo, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %3 = call i32 @cl_git_pass(i32 %2)
  %4 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  %5 = load i32, i32* @g_repo, align 4
  %6 = load i32, i32* @read_name_missing, align 4
  %7 = call i32 @git_repository_fetchhead_foreach(i32 %5, i32 %6, i32* null)
  %8 = call i32 @cl_git_pass(i32 %7)
  ret void
}

declare dso_local i32 @cl_set_cleanup(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32*, i8*, i32) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @git_repository_fetchhead_foreach(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
