; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_partial.c_test_apply_partial__prepend_and_change_nocontext_abort_change.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_partial.c_test_apply_partial__prepend_and_change_nocontext_abort_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FILE_ORIGINAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"file.txt\00", align 1
@FILE_PREPEND_AND_CHANGE = common dso_local global i32 0, align 4
@FILE_PREPEND = common dso_local global i32 0, align 4
@abort_change = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_apply_partial__prepend_and_change_nocontext_abort_change() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.TYPE_4__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 8, i1 false)
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i64 0, i64* %3, align 8
  %4 = load i32, i32* @FILE_ORIGINAL, align 4
  %5 = load i32, i32* @FILE_PREPEND_AND_CHANGE, align 4
  %6 = load i32, i32* @FILE_PREPEND, align 4
  %7 = load i32, i32* @abort_change, align 4
  %8 = call i32 @apply_buf(i32 %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %6, %struct.TYPE_4__* %1, i32 %7, i32* null)
  %9 = call i32 @cl_git_fail(i32 %8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @apply_buf(i32, i8*, i32, i8*, i32, %struct.TYPE_4__*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
