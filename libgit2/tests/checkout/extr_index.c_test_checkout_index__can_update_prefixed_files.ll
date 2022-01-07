; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__can_update_prefixed_files.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__can_update_prefixed_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [18 x i8] c"./testrepo/README\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"./testrepo/branch_file.txt\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"./testrepo/new.txt\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"./testrepo/READ\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"content\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"./testrepo/README.after\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"./testrepo/branch_file\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"./testrepo/branch_file/contained_dir\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"./testrepo/branch_file/contained_file\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"./testrepo/branch_file.txt.after\00", align 1
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_RECREATE_MISSING = common dso_local global i32 0, align 4
@GIT_CHECKOUT_REMOVE_UNTRACKED = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"hey there\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"hi\0Abye!\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"my new file\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"testrepo/READ\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"testrepo/README.after\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"testrepo/branch_file\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"testrepo/branch_file.txt.after\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_index__can_update_prefixed_files() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %3 = call i32 @git_path_isfile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @cl_assert_equal_i(i32 0, i32 %3)
  %5 = call i32 @git_path_isfile(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_assert_equal_i(i32 0, i32 %5)
  %7 = call i32 @git_path_isfile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @cl_assert_equal_i(i32 0, i32 %7)
  %9 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %11 = call i32 @p_mkdir(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 511)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @p_mkdir(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 511)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %16 = call i32 @p_mkdir(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 511)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %19 = load i32, i32* @GIT_CHECKOUT_RECREATE_MISSING, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @GIT_CHECKOUT_REMOVE_UNTRACKED, align 4
  %22 = or i32 %20, %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @g_repo, align 4
  %25 = call i32 @git_checkout_index(i32 %24, i32* null, %struct.TYPE_4__* %1)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = call i32 @check_file_contents_nocr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %28 = call i32 @check_file_contents_nocr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %29 = call i32 @check_file_contents_nocr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %30 = call i32 @git_path_exists(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @cl_assert(i32 %33)
  %35 = call i32 @git_path_exists(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @cl_assert(i32 %38)
  %40 = call i32 @git_path_exists(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @cl_assert(i32 %43)
  %45 = call i32 @git_path_exists(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @cl_assert(i32 %48)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_path_isfile(i8*) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @git_checkout_index(i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @check_file_contents_nocr(i8*, i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_exists(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
