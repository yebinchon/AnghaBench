; ModuleID = '/home/carl/AnghaBench/git/extr_credential.c_run_credential_helper.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential.c_run_credential_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i8**, i32, i32, i32, i32 }
%struct.credential = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.credential*, i8*, i32)* @run_credential_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_credential_helper(%struct.credential* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.credential*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.child_process, align 8
  %9 = alloca [2 x i8*], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.credential* %0, %struct.credential** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = bitcast %struct.child_process* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  %13 = bitcast [2 x i8*]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 16, i1 false)
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  store i8* %14, i8** %15, align 16
  %16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %17 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 0
  store i8** %16, i8*** %17, align 8
  %18 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 2
  store i32 -1, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 3
  store i32 -1, i32* %23, align 8
  br label %26

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 4
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = call i64 @start_command(%struct.child_process* %8)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %65

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @xfdopen(i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %33, i32** %10, align 8
  %34 = load i32, i32* @SIGPIPE, align 4
  %35 = load i32, i32* @SIG_IGN, align 4
  %36 = call i32 @sigchain_push(i32 %34, i32 %35)
  %37 = load %struct.credential*, %struct.credential** %5, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @credential_write(%struct.credential* %37, i32* %38)
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @fclose(i32* %40)
  %42 = load i32, i32* @SIGPIPE, align 4
  %43 = call i32 @sigchain_pop(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32* @xfdopen(i32 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %49, i32** %10, align 8
  %50 = load %struct.credential*, %struct.credential** %5, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @credential_read(%struct.credential* %50, i32* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @fclose(i32* %53)
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = call i64 @finish_command(%struct.child_process* %8)
  store i32 -1, i32* %4, align 4
  br label %65

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %30
  %61 = call i64 @finish_command(%struct.child_process* %8)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  br label %65

64:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %63, %57, %29
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32* @xfdopen(i32, i8*) #2

declare dso_local i32 @sigchain_push(i32, i32) #2

declare dso_local i32 @credential_write(%struct.credential*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @sigchain_pop(i32) #2

declare dso_local i32 @credential_read(%struct.credential*, i32*) #2

declare dso_local i64 @finish_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
