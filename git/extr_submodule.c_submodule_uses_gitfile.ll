; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_submodule_uses_gitfile.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_submodule_uses_gitfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i8**, i32, i32, i32, i32, i8*, i32 }
%struct.strbuf = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"submodule\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"foreach\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"--recursive\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"test -f .git\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"%s/.git\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @submodule_uses_gitfile(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.child_process, align 8
  %5 = alloca [6 x i8*], align 16
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = bitcast %struct.child_process* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 40, i1 false)
  %9 = bitcast [6 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 48, i1 false)
  %10 = bitcast i8* %9 to [6 x i8*]*
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8** %12, align 8
  %13 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8** %13, align 16
  %14 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i32 0, i32 3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8** %14, align 8
  %15 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i32 0, i32 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8** %15, align 16
  %16 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strbuf_addf(%struct.strbuf* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %17)
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @read_gitfile(i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = call i32 @strbuf_release(%struct.strbuf* %6)
  store i32 0, i32* %2, align 4
  br label %42

26:                                               ; preds = %1
  %27 = call i32 @strbuf_release(%struct.strbuf* %6)
  %28 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i64 0, i64 0
  %29 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 0
  store i8** %28, i8*** %29, align 8
  %30 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 6
  %31 = call i32 @prepare_submodule_repo_env(i32* %30)
  %32 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 1
  store i32 1, i32* %32, align 8
  %33 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 2
  store i32 1, i32* %33, align 4
  %34 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  store i32 1, i32* %34, align 8
  %35 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 4
  store i32 1, i32* %35, align 4
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 5
  store i8* %36, i8** %37, align 8
  %38 = call i64 @run_command(%struct.child_process* %4)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %42

41:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %40, %24
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i8* @read_gitfile(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @prepare_submodule_repo_env(i32*) #2

declare dso_local i64 @run_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
