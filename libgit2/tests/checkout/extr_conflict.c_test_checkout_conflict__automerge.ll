; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_conflict.c_test_checkout_conflict__automerge.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_conflict.c_test_checkout_conflict__automerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout_index_entry = type { i32, i32, i8*, i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global i32 0, align 4
@AUTOMERGEABLE_ANCESTOR_OID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"automergeable.txt\00", align 1
@AUTOMERGEABLE_OURS_OID = common dso_local global i32 0, align 4
@AUTOMERGEABLE_THEIRS_OID = common dso_local global i32 0, align 4
@g_index = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@AUTOMERGEABLE_MERGED_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_conflict__automerge() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x %struct.checkout_index_entry], align 16
  %3 = load i32, i32* @GIT_CHECKOUT_OPTIONS_INIT, align 4
  store i32 %3, i32* %1, align 4
  %4 = getelementptr inbounds [3 x %struct.checkout_index_entry], [3 x %struct.checkout_index_entry]* %2, i64 0, i64 0
  %5 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %4, i32 0, i32 0
  store i32 33188, i32* %5, align 8
  %6 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %4, i32 0, i32 1
  %7 = load i32, i32* @AUTOMERGEABLE_ANCESTOR_OID, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %4, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %8, align 8
  %9 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %4, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str to i32), i32* %9, align 8
  %10 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %4, i64 1
  %11 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i32 0, i32 0
  store i32 33188, i32* %11, align 8
  %12 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i32 0, i32 1
  %13 = load i32, i32* @AUTOMERGEABLE_OURS_OID, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i32 0, i32 2
  store i8* inttoptr (i64 2 to i8*), i8** %14, align 8
  %15 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str to i32), i32* %15, align 8
  %16 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i64 1
  %17 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %16, i32 0, i32 0
  store i32 33188, i32* %17, align 8
  %18 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %16, i32 0, i32 1
  %19 = load i32, i32* @AUTOMERGEABLE_THEIRS_OID, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %16, i32 0, i32 2
  store i8* inttoptr (i64 3 to i8*), i8** %20, align 8
  %21 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %16, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str to i32), i32* %21, align 8
  %22 = getelementptr inbounds [3 x %struct.checkout_index_entry], [3 x %struct.checkout_index_entry]* %2, i64 0, i64 0
  %23 = call i32 @create_index(%struct.checkout_index_entry* %22, i32 3)
  %24 = load i32, i32* @g_index, align 4
  %25 = call i32 @git_index_write(i32 %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32, i32* @g_repo, align 4
  %28 = load i32, i32* @g_index, align 4
  %29 = call i32 @git_checkout_index(i32 %27, i32 %28, i32* %1)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32, i32* @AUTOMERGEABLE_MERGED_FILE, align 4
  %32 = call i32 @ensure_workdir_contents(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %31)
  ret void
}

declare dso_local i32 @create_index(%struct.checkout_index_entry*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_write(i32) #1

declare dso_local i32 @git_checkout_index(i32, i32, i32*) #1

declare dso_local i32 @ensure_workdir_contents(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
