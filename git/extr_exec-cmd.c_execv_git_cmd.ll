; ModuleID = '/home/carl/AnghaBench/git/extr_exec-cmd.c_execv_git_cmd.c'
source_filename = "/home/carl/AnghaBench/git/extr_exec-cmd.c_execv_git_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i64 }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"trace: exec:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"trace: exec failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @execv_git_cmd(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.argv_array, align 8
  store i8** %0, i8*** %2, align 8
  %4 = bitcast %struct.argv_array* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 8, i1 false)
  %5 = load i8**, i8*** %2, align 8
  %6 = call i32 @prepare_git_cmd(%struct.argv_array* %3, i8** %5)
  %7 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %3, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @trace_argv_printf(i64 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %3, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8**
  %13 = call i32 @sane_execvp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %12)
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @strerror(i32 %14)
  %16 = call i32 @trace_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = call i32 @argv_array_clear(%struct.argv_array* %3)
  ret i32 -1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @prepare_git_cmd(%struct.argv_array*, i8**) #2

declare dso_local i32 @trace_argv_printf(i64, i8*) #2

declare dso_local i32 @sane_execvp(i8*, i8**) #2

declare dso_local i32 @trace_printf(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
