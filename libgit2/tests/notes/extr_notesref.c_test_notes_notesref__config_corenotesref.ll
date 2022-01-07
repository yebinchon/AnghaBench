; ModuleID = '/home/carl/AnghaBench/libgit2/tests/notes/extr_notesref.c_test_notes_notesref__config_corenotesref.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/notes/extr_notesref.c_test_notes_notesref__config_corenotesref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@_sig = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"alice\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"alice@example.com\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"8496071c1b46c854b31185ea97743be6a8774479\00", align 1
@_cfg = common dso_local global i32 0, align 4
@_repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"core.notesRef\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"refs/notes/mydefaultnotesref\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"test123test\0A\00", align 1
@_note = common dso_local global i32 0, align 4
@GIT_NOTES_DEFAULT_REF = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_notes_notesref__config_corenotesref() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = bitcast %struct.TYPE_6__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %5 = call i32 @git_signature_now(i32* @_sig, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @_repo, align 4
  %10 = call i32 @git_repository_config(i32* @_cfg, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @_cfg, align 4
  %13 = call i32 @git_config_set_string(i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @_repo, align 4
  %16 = load i32, i32* @_sig, align 4
  %17 = load i32, i32* @_sig, align 4
  %18 = call i32 @git_note_create(i32* %2, i32 %15, i32* null, i32 %16, i32 %17, i32* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @_repo, align 4
  %21 = call i32 @git_note_read(i32* @_note, i32 %20, i8* null, i32* %1)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @_note, align 4
  %24 = call i32 @git_note_message(i32 %23)
  %25 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @_note, align 4
  %27 = call i32 @git_note_id(i32 %26)
  %28 = call i32 @cl_assert_equal_oid(i32 %27, i32* %2)
  %29 = load i32, i32* @_note, align 4
  %30 = call i32 @git_note_free(i32 %29)
  %31 = load i32, i32* @_repo, align 4
  %32 = call i32 @git_note_read(i32* @_note, i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32* %1)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32, i32* @_note, align 4
  %35 = call i32 @git_note_message(i32 %34)
  %36 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @_note, align 4
  %38 = call i32 @git_note_id(i32 %37)
  %39 = call i32 @cl_assert_equal_oid(i32 %38, i32* %2)
  %40 = load i32, i32* @_repo, align 4
  %41 = call i32 @git_note_default_ref(%struct.TYPE_6__* %3, i32 %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = call i32 @git_buf_clear(%struct.TYPE_6__* %3)
  %47 = load i32, i32* @_cfg, align 4
  %48 = call i32 @git_config_delete_entry(i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = load i32, i32* @_repo, align 4
  %51 = call i32 @git_note_default_ref(%struct.TYPE_6__* %3, i32 %50)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i8*, i8** @GIT_NOTES_DEFAULT_REF, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cl_assert_equal_s(i8* %53, i32 %55)
  %57 = call i32 @git_buf_dispose(%struct.TYPE_6__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_signature_now(i32*, i8*, i8*) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_repository_config(i32*, i32) #2

declare dso_local i32 @git_config_set_string(i32, i8*, i8*) #2

declare dso_local i32 @git_note_create(i32*, i32, i32*, i32, i32, i32*, i8*, i32) #2

declare dso_local i32 @git_note_read(i32*, i32, i8*, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_note_message(i32) #2

declare dso_local i32 @cl_assert_equal_oid(i32, i32*) #2

declare dso_local i32 @git_note_id(i32) #2

declare dso_local i32 @git_note_free(i32) #2

declare dso_local i32 @git_note_default_ref(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_6__*) #2

declare dso_local i32 @git_config_delete_entry(i32, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
