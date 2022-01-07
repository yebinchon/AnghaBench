; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_conflict.c_test_checkout_conflict__links.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_conflict.c_test_checkout_conflict__links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.checkout_index_entry = type { i32, i32, i8*, i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@LINK_ANCESTOR_OID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"link-1\00", align 1
@LINK_OURS_OID = common dso_local global i32 0, align 4
@LINK_THEIRS_OID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"link-2\00", align 1
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@g_index = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@LINK_OURS_TARGET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_conflict__links() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca [5 x %struct.checkout_index_entry], align 16
  %3 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %4 = getelementptr inbounds [5 x %struct.checkout_index_entry], [5 x %struct.checkout_index_entry]* %2, i64 0, i64 0
  %5 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %4, i32 0, i32 0
  store i32 40960, i32* %5, align 8
  %6 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %4, i32 0, i32 1
  %7 = load i32, i32* @LINK_ANCESTOR_OID, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %4, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %8, align 8
  %9 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %4, i32 0, i32 3
  store i32 ptrtoint ([7 x i8]* @.str to i32), i32* %9, align 8
  %10 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %4, i64 1
  %11 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i32 0, i32 0
  store i32 40960, i32* %11, align 8
  %12 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i32 0, i32 1
  %13 = load i32, i32* @LINK_OURS_OID, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i32 0, i32 2
  store i8* inttoptr (i64 2 to i8*), i8** %14, align 8
  %15 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i32 0, i32 3
  store i32 ptrtoint ([7 x i8]* @.str to i32), i32* %15, align 8
  %16 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i64 1
  %17 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %16, i32 0, i32 0
  store i32 40960, i32* %17, align 8
  %18 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %16, i32 0, i32 1
  %19 = load i32, i32* @LINK_THEIRS_OID, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %16, i32 0, i32 2
  store i8* inttoptr (i64 3 to i8*), i8** %20, align 8
  %21 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %16, i32 0, i32 3
  store i32 ptrtoint ([7 x i8]* @.str to i32), i32* %21, align 8
  %22 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %16, i64 1
  %23 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %22, i32 0, i32 0
  store i32 40960, i32* %23, align 8
  %24 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %22, i32 0, i32 1
  %25 = load i32, i32* @LINK_OURS_OID, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %22, i32 0, i32 2
  store i8* inttoptr (i64 2 to i8*), i8** %26, align 8
  %27 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %22, i32 0, i32 3
  store i32 ptrtoint ([7 x i8]* @.str.1 to i32), i32* %27, align 8
  %28 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %22, i64 1
  %29 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %28, i32 0, i32 0
  store i32 40960, i32* %29, align 8
  %30 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %28, i32 0, i32 1
  %31 = load i32, i32* @LINK_THEIRS_OID, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %28, i32 0, i32 2
  store i8* inttoptr (i64 3 to i8*), i8** %32, align 8
  %33 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %28, i32 0, i32 3
  store i32 ptrtoint ([7 x i8]* @.str.1 to i32), i32* %33, align 8
  %34 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = getelementptr inbounds [5 x %struct.checkout_index_entry], [5 x %struct.checkout_index_entry]* %2, i64 0, i64 0
  %39 = call i32 @create_index(%struct.checkout_index_entry* %38, i32 5)
  %40 = load i32, i32* @g_index, align 4
  %41 = call i32 @git_index_write(i32 %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32, i32* @g_repo, align 4
  %44 = load i32, i32* @g_index, align 4
  %45 = call i32 @git_checkout_index(i32 %43, i32 %44, %struct.TYPE_4__* %1)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32, i32* @g_repo, align 4
  %48 = load i32, i32* @LINK_OURS_TARGET, align 4
  %49 = call i32 @ensure_workdir_link(i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @g_repo, align 4
  %51 = load i32, i32* @LINK_OURS_TARGET, align 4
  %52 = call i32 @ensure_workdir_link(i32 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @create_index(%struct.checkout_index_entry*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_index_write(i32) #2

declare dso_local i32 @git_checkout_index(i32, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @ensure_workdir_link(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
