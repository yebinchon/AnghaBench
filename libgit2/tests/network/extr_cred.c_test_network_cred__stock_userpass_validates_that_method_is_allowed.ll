; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/extr_cred.c_test_network_cred__stock_userpass_validates_that_method_is_allowed.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/extr_cred.c_test_network_cred__stock_userpass_validates_that_method_is_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@__const.test_network_cred__stock_userpass_validates_that_method_is_allowed.payload = private unnamed_addr constant %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0) }, align 8
@GIT_CREDTYPE_USERPASS_PLAINTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_cred__stock_userpass_validates_that_method_is_allowed() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = bitcast %struct.TYPE_3__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.TYPE_3__* @__const.test_network_cred__stock_userpass_validates_that_method_is_allowed.payload to i8*), i64 16, i1 false)
  %4 = call i32 @git_cred_userpass(i32** %1, i32* null, i32* null, i32 0, %struct.TYPE_3__* %2)
  %5 = call i32 @cl_git_fail(i32 %4)
  %6 = load i32, i32* @GIT_CREDTYPE_USERPASS_PLAINTEXT, align 4
  %7 = call i32 @git_cred_userpass(i32** %1, i32* null, i32* null, i32 %6, %struct.TYPE_3__* %2)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @git_cred_free(i32* %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_cred_userpass(i32**, i32*, i32*, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_cred_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
