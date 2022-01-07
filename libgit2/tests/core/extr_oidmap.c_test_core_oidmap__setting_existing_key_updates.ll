; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_oidmap.c_test_core_oidmap__setting_existing_key_updates.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_oidmap.c_test_core_oidmap__setting_existing_key_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@__const.test_core_oidmap__setting_existing_key_updates.oids = private unnamed_addr constant [3 x %struct.TYPE_6__] [%struct.TYPE_6__ { %struct.TYPE_5__ { i32 1 } }, %struct.TYPE_6__ { %struct.TYPE_5__ { i32 2 } }, %struct.TYPE_6__ { %struct.TYPE_5__ { i32 3 } }], align 4
@g_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"other\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_oidmap__setting_existing_key_updates() #0 {
  %1 = alloca [3 x %struct.TYPE_6__], align 4
  %2 = bitcast [3 x %struct.TYPE_6__]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast ([3 x %struct.TYPE_6__]* @__const.test_core_oidmap__setting_existing_key_updates.oids to i8*), i64 12, i1 false)
  %3 = load i32, i32* @g_map, align 4
  %4 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %1, i64 0, i64 0
  %5 = call i32 @git_oidmap_set(i32 %3, %struct.TYPE_6__* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @g_map, align 4
  %8 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %1, i64 0, i64 1
  %9 = call i32 @git_oidmap_set(i32 %7, %struct.TYPE_6__* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @g_map, align 4
  %12 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %1, i64 0, i64 2
  %13 = call i32 @git_oidmap_set(i32 %11, %struct.TYPE_6__* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @g_map, align 4
  %16 = call i32 @git_oidmap_size(i32 %15)
  %17 = call i32 @cl_assert_equal_i(i32 %16, i32 3)
  %18 = load i32, i32* @g_map, align 4
  %19 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %1, i64 0, i64 1
  %20 = call i32 @git_oidmap_set(i32 %18, %struct.TYPE_6__* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @g_map, align 4
  %23 = call i32 @git_oidmap_size(i32 %22)
  %24 = call i32 @cl_assert_equal_i(i32 %23, i32 3)
  %25 = load i32, i32* @g_map, align 4
  %26 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %1, i64 0, i64 1
  %27 = call i32 @git_oidmap_get(i32 %25, %struct.TYPE_6__* %26)
  %28 = call i32 @cl_assert_equal_s(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oidmap_set(i32, %struct.TYPE_6__*, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_oidmap_size(i32) #2

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #2

declare dso_local i32 @git_oidmap_get(i32, %struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
