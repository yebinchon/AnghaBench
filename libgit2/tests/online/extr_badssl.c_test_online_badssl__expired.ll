; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_badssl.c_test_online_badssl__expired.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_badssl.c_test_online_badssl__expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@GIT_CLONE_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@cert_check_assert_invalid = common dso_local global i32 0, align 4
@g_has_ssl = common dso_local global i32 0, align 4
@GIT_ECERTIFICATE = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"https://expired.badssl.com/fake.git\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"./fake\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_online_badssl__expired() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = bitcast %struct.TYPE_8__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_CLONE_OPTIONS_INIT to i8*), i64 4, i1 false)
  %3 = load i32, i32* @cert_check_assert_invalid, align 4
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 %3, i32* %6, align 4
  %7 = load i32, i32* @g_has_ssl, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 (...) @cl_skip()
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i32, i32* @GIT_ECERTIFICATE, align 4
  %13 = call i32 @git_clone(i32* @g_repo, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* null)
  %14 = call i32 @cl_git_fail_with(i32 %12, i32 %13)
  %15 = load i32, i32* @GIT_ECERTIFICATE, align 4
  %16 = call i32 @git_clone(i32* @g_repo, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %1)
  %17 = call i32 @cl_git_fail_with(i32 %15, i32 %16)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_skip(...) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_clone(i32*, i8*, i8*, %struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
