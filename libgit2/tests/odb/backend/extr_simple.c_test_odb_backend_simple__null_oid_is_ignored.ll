; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/backend/extr_simple.c_test_odb_backend_simple__null_oid_is_ignored.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/backend/extr_simple.c_test_odb_backend_simple__null_oid_is_ignored.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"0000000000000000000000000000000000000000\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"null oid content\00", align 1
@__const.test_odb_backend_simple__null_oid_is_ignored.objs = private unnamed_addr constant [2 x %struct.TYPE_10__] [%struct.TYPE_10__ { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0) }, %struct.TYPE_10__ zeroinitializer], align 16
@GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION = common dso_local global i32 0, align 4
@_odb = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"null OID\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_backend_simple__null_oid_is_ignored() #0 {
  %1 = alloca [2 x %struct.TYPE_10__], align 16
  %2 = alloca %struct.TYPE_9__, align 4
  %3 = alloca i32*, align 8
  %4 = bitcast [2 x %struct.TYPE_10__]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([2 x %struct.TYPE_10__]* @__const.test_odb_backend_simple__null_oid_is_ignored.objs to i8*), i64 32, i1 false)
  %5 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 4, i1 false)
  %6 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %7 = call i32 @setup_backend(%struct.TYPE_10__* %6)
  %8 = load i32, i32* @GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION, align 4
  %9 = call i32 @git_libgit2_opts(i32 %8, i32 0)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @_odb, align 4
  %12 = call i32 @git_odb_exists(i32 %11, %struct.TYPE_9__* %2)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @cl_assert(i32 %15)
  %17 = load i32, i32* @GIT_ENOTFOUND, align 4
  %18 = load i32, i32* @_odb, align 4
  %19 = call i32 @git_odb_read(i32** %3, i32 %18, %struct.TYPE_9__* %2)
  %20 = call i32 @cl_git_fail_with(i32 %17, i32 %19)
  %21 = call %struct.TYPE_11__* (...) @git_error_last()
  %22 = icmp ne %struct.TYPE_11__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %0
  %24 = call %struct.TYPE_11__* (...) @git_error_last()
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strstr(i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %23, %0
  %30 = phi i1 [ false, %0 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @cl_assert(i32 %31)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @setup_backend(%struct.TYPE_10__*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_libgit2_opts(i32, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_odb_exists(i32, %struct.TYPE_9__*) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_odb_read(i32**, i32, %struct.TYPE_9__*) #2

declare dso_local %struct.TYPE_11__* @git_error_last(...) #2

declare dso_local i64 @strstr(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
