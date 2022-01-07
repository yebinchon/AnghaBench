; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/extr_cred.c_test_network_cred__stock_userpass_properly_handles_username_in_url.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/extr_cred.c_test_network_cred__stock_userpass_properly_handles_username_in_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"alice\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@__const.test_network_cred__stock_userpass_properly_handles_username_in_url.payload = private unnamed_addr constant %struct.TYPE_3__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32* null }, align 8
@GIT_CREDTYPE_USERPASS_PLAINTEXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"bob\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_cred__stock_userpass_properly_handles_username_in_url() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = bitcast %struct.TYPE_3__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.TYPE_3__* @__const.test_network_cred__stock_userpass_properly_handles_username_in_url.payload to i8*), i64 24, i1 false)
  %4 = load i32, i32* @GIT_CREDTYPE_USERPASS_PLAINTEXT, align 4
  %5 = call i32 @git_cred_userpass(i32** %1, i32* null, i8* null, i32 %4, %struct.TYPE_3__* %2)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_cred_get_username(i32* %7)
  %9 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_cred_free(i32* %10)
  %12 = load i32, i32* @GIT_CREDTYPE_USERPASS_PLAINTEXT, align 4
  %13 = call i32 @git_cred_userpass(i32** %1, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %12, %struct.TYPE_3__* %2)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_cred_get_username(i32* %15)
  %17 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_cred_free(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @GIT_CREDTYPE_USERPASS_PLAINTEXT, align 4
  %22 = call i32 @git_cred_userpass(i32** %1, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %21, %struct.TYPE_3__* %2)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @git_cred_get_username(i32* %24)
  %26 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_cred_free(i32* %27)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_cred_userpass(i32**, i32*, i8*, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_cred_get_username(i32*) #2

declare dso_local i32 @git_cred_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
