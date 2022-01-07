; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_apply_command.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_apply_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.child_process = type { i8**, i32, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@TRAILER_ARG_STRING = common dso_local global i32 0, align 4
@local_repo_env = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"running trailer command '%s' failed\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @apply_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @apply_command(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca %struct.child_process, align 8
  %8 = alloca [2 x i8*], align 16
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %11 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = bitcast %struct.child_process* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  %13 = bitcast [2 x i8*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 16, i1 false)
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strbuf_addstr(%struct.strbuf* %5, i8* %14)
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @TRAILER_ARG_STRING, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strbuf_replace(%struct.strbuf* %5, i32 %19, i8* %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  store i8* %24, i8** %25, align 16
  %26 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %27 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 0
  store i8** %26, i8*** %27, align 8
  %28 = load i32, i32* @local_repo_env, align 4
  %29 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 1
  store i32 1, i32* %30, align 8
  %31 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 2
  store i32 1, i32* %31, align 4
  %32 = call i64 @capture_command(%struct.child_process* %7, %struct.strbuf* %6, i32 1024)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @error(i32 %35, i8* %37)
  %39 = call i32 @strbuf_release(%struct.strbuf* %6)
  %40 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** %9, align 8
  br label %44

41:                                               ; preds = %22
  %42 = call i32 @strbuf_trim(%struct.strbuf* %6)
  %43 = call i8* @strbuf_detach(%struct.strbuf* %6, i32* null)
  store i8* %43, i8** %9, align 8
  br label %44

44:                                               ; preds = %41, %34
  %45 = call i32 @strbuf_release(%struct.strbuf* %5)
  %46 = load i8*, i8** %9, align 8
  ret i8* %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_replace(%struct.strbuf*, i32, i8*) #2

declare dso_local i64 @capture_command(%struct.child_process*, %struct.strbuf*, i32) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @strbuf_trim(%struct.strbuf*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
