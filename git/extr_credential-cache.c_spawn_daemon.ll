; ModuleID = '/home/carl/AnghaBench/git/extr_credential-cache.c_spawn_daemon.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential-cache.c_spawn_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i8**, i32, i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"git-credential-cache--daemon\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to start cache daemon\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"unable to read result code from cache daemon\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"cache daemon did not start: %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @spawn_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spawn_daemon(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.child_process, align 8
  %4 = alloca [3 x i8*], align 16
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = bitcast %struct.child_process* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 16, i1 false)
  %8 = bitcast [3 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 24, i1 false)
  %9 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %9, align 16
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %13 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 0
  store i8** %12, i8*** %13, align 8
  %14 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 1
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 2
  store i32 -1, i32* %15, align 4
  %16 = call i64 @start_command(%struct.child_process* %3)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @die_errno(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %1
  %21 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %24 = call i32 @read_in_full(i32 %22, i8* %23, i32 128)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @die_errno(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %20
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 3
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %34 = call i64 @memcmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %39 = call i32 @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %37, i8* %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @close(i32 %42)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @die_errno(i8*) #2

declare dso_local i32 @read_in_full(i32, i8*, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @die(i8*, i32, i8*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
