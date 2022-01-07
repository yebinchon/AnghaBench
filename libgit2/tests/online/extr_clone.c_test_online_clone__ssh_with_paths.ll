; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__ssh_with_paths.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__ssh_with_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i8**, i32, i8** }

@.str = private unnamed_addr constant [9 x i8] c"/bin/yes\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"/bin/false\00", align 1
@__const.test_online_clone__ssh_with_paths.bad_paths = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [25 x i8] c"/usr/bin/git-upload-pack\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"/usr/bin/git-receive-pack\00", align 1
@__const.test_online_clone__ssh_with_paths.good_paths = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0)], align 16
@_remote_url = common dso_local global i32 0, align 4
@_remote_user = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"ssh://\00", align 1
@custom_remote_ssh_with_paths = common dso_local global i32 0, align 4
@g_options = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@git_transport_ssh_with_paths = common dso_local global i32 0, align 4
@cred_cb = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"./foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_online_clone__ssh_with_paths() #0 {
  %1 = alloca [2 x i8*], align 16
  %2 = alloca [2 x i8*], align 16
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = bitcast [2 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([2 x i8*]* @__const.test_online_clone__ssh_with_paths.bad_paths to i8*), i64 16, i1 false)
  %5 = bitcast [2 x i8*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([2 x i8*]* @__const.test_online_clone__ssh_with_paths.good_paths to i8*), i64 16, i1 false)
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %7 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  store i8** %7, i8*** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  store i32 2, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  store i8** null, i8*** %9, align 8
  %10 = call i32 (...) @clar__skip()
  %11 = load i32, i32* @_remote_url, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %0
  %14 = load i32, i32* @_remote_user, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @_remote_url, align 4
  %18 = call i64 @strncmp(i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %13, %0
  %21 = call i32 (...) @clar__skip()
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* @custom_remote_ssh_with_paths, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_options, i32 0, i32 1), align 8
  %24 = load i32, i32* @git_transport_ssh_with_paths, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_options, i32 0, i32 0, i32 0, i32 3), align 4
  %25 = load i32, i32* @cred_cb, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_options, i32 0, i32 0, i32 0, i32 2), align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_options, i32 0, i32 0, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_options, i32 0, i32 0, i32 0, i32 0), align 8
  %26 = load i32, i32* @_remote_url, align 4
  %27 = call i32 @git_clone(i32* @g_repo, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_9__* @g_options)
  %28 = call i32 @cl_git_fail(i32 %27)
  %29 = getelementptr inbounds [2 x i8*], [2 x i8*]* %2, i64 0, i64 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  store i8** %29, i8*** %30, align 8
  %31 = load i32, i32* @_remote_url, align 4
  %32 = call i32 @git_clone(i32* @g_repo, i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_9__* @g_options)
  %33 = call i32 @cl_git_pass(i32 %32)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @clar__skip(...) #2

declare dso_local i64 @strncmp(i32, i8*, i32) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_clone(i32*, i32, i8*, %struct.TYPE_9__*) #2

declare dso_local i32 @cl_git_pass(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
