; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_notify.c_test_diff_notify__notify_multiple_pathspec.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_notify.c_test_diff_notify__notify_multiple_pathspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [28 x i8] c"staged_changes_cant_find_me\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"subdir/modified_cant_find_me\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"subdir/*\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"staged*\00", align 1
@__const.test_diff_notify__notify_multiple_pathspec.searched_pathspecs = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [28 x i8] c"staged_changes_file_deleted\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"staged_changes_modified_file\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"staged_delete_modified_file\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"staged_new_file_deleted_file\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"staged_new_file_modified_file\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"subdir/deleted_file\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"subdir/modified_file\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"subdir/new_file\00", align 1
@__const.test_diff_notify__notify_multiple_pathspec.expected_matched_pathspecs = private unnamed_addr constant [9 x %struct.TYPE_3__] [%struct.TYPE_3__ { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0) }, %struct.TYPE_3__ { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0) }, %struct.TYPE_3__ { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0) }, %struct.TYPE_3__ { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0) }, %struct.TYPE_3__ { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0) }, %struct.TYPE_3__ { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0) }, %struct.TYPE_3__ { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0) }, %struct.TYPE_3__ { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0) }, %struct.TYPE_3__ zeroinitializer], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_notify__notify_multiple_pathspec() #0 {
  %1 = alloca [4 x i8*], align 16
  %2 = alloca [9 x %struct.TYPE_3__], align 16
  %3 = bitcast [4 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([4 x i8*]* @__const.test_diff_notify__notify_multiple_pathspec.searched_pathspecs to i8*), i64 32, i1 false)
  %4 = bitcast [9 x %struct.TYPE_3__]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([9 x %struct.TYPE_3__]* @__const.test_diff_notify__notify_multiple_pathspec.expected_matched_pathspecs to i8*), i64 144, i1 false)
  %5 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %6 = getelementptr inbounds [9 x %struct.TYPE_3__], [9 x %struct.TYPE_3__]* %2, i64 0, i64 0
  %7 = call i32 @test_notify(i8** %5, i32 4, %struct.TYPE_3__* %6, i32 8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @test_notify(i8**, i32, %struct.TYPE_3__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
