; ModuleID = '/home/carl/AnghaBench/libgit2/tests/mailmap/extr_parsing.c_test_mailmap_parsing__windows_string.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/mailmap/extr_parsing.c_test_mailmap_parsing__windows_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@string_mailmap = common dso_local global i32 0, align 4
@g_mailmap = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@resolved = common dso_local global i32 0, align 4
@resolved_untracked = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_mailmap_parsing__windows_string() #0 {
  %1 = alloca %struct.TYPE_7__, align 4
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = bitcast %struct.TYPE_7__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %4 = bitcast %struct.TYPE_7__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %5 = load i32, i32* @string_mailmap, align 4
  %6 = load i32, i32* @string_mailmap, align 4
  %7 = call i32 @strlen(i32 %6)
  %8 = call i32 @git_buf_attach_notowned(%struct.TYPE_7__* %1, i32 %5, i32 %7)
  %9 = call i32 @git_buf_text_lf_to_crlf(%struct.TYPE_7__* %2, %struct.TYPE_7__* %1)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @git_mailmap_from_buffer(i32* @g_mailmap, i32 %12, i32 %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = call i32 @git_buf_dispose(%struct.TYPE_7__* %2)
  %18 = load i32, i32* @g_mailmap, align 4
  %19 = load i32, i32* @entries, align 4
  %20 = load i32, i32* @entries, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call i32 @check_mailmap_entries(i32 %18, i32 %19, i32 %21)
  %23 = load i32, i32* @g_mailmap, align 4
  %24 = load i32, i32* @resolved, align 4
  %25 = load i32, i32* @resolved, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @check_mailmap_resolve(i32 %23, i32 %24, i32 %26)
  %28 = load i32, i32* @g_mailmap, align 4
  %29 = load i32, i32* @resolved_untracked, align 4
  %30 = load i32, i32* @resolved_untracked, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @check_mailmap_resolve(i32 %28, i32 %29, i32 %31)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_attach_notowned(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_text_lf_to_crlf(%struct.TYPE_7__*, %struct.TYPE_7__*) #2

declare dso_local i32 @git_mailmap_from_buffer(i32*, i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

declare dso_local i32 @check_mailmap_entries(i32, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @check_mailmap_resolve(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
