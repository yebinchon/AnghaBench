; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_submodule_summary.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_submodule_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i32 }
%struct.strbuf = type { i32, i64 }
%struct.wt_status = type { i32, i64, i64, i32, i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [18 x i8] c"GIT_INDEX_FILE=%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"submodule\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"summary\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"--files\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"--cached\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"--for-status\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"--summary-limit\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"HEAD^\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Submodules changed but not updated:\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Submodule changes to be committed:\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*, i32)* @wt_longstatus_print_submodule_summary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_longstatus_print_submodule_summary(%struct.wt_status* %0, i32 %1) #0 {
  %3 = alloca %struct.wt_status*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.child_process, align 4
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.wt_status* %0, %struct.wt_status** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = bitcast %struct.child_process* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 16, i1 false)
  %11 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %12 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %13 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 3
  %14 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %15 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @argv_array_pushf(i32* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 2
  %19 = call i32 @argv_array_push(i32* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %20 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 2
  %21 = call i32 @argv_array_push(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %22 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %27 = call i32 @argv_array_push(i32* %22, i8* %26)
  %28 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 2
  %29 = call i32 @argv_array_push(i32* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 2
  %31 = call i32 @argv_array_push(i32* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %32 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 2
  %33 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %34 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @argv_array_pushf(i32* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 2
  %41 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %42 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)
  %47 = call i32 @argv_array_push(i32* %40, i8* %46)
  br label %48

48:                                               ; preds = %39, %2
  %49 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = call i32 @capture_command(%struct.child_process* %5, %struct.strbuf* %6, i32 1024)
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %60 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* %59)
  br label %64

61:                                               ; preds = %55
  %62 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %63 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %48
  %67 = call i32 @strbuf_addbuf(%struct.strbuf* %7, %struct.strbuf* %6)
  %68 = call i32 @strbuf_release(%struct.strbuf* %6)
  %69 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %70 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = call i8* @strbuf_detach(%struct.strbuf* %7, i64* %9)
  store i8* %74, i8** %8, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @strbuf_add_commented_lines(%struct.strbuf* %7, i8* %75, i64 %76)
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @free(i8* %78)
  br label %80

80:                                               ; preds = %73, %66
  %81 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %84 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @fputs(i32 %82, i32 %85)
  %87 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @argv_array_pushf(i32*, i8*, i32) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @capture_command(%struct.child_process*, %struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i64*) #2

declare dso_local i32 @strbuf_add_commented_lines(%struct.strbuf*, i8*, i64) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @fputs(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
