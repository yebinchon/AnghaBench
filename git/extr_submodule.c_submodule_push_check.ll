; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_submodule_push_check.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_submodule_push_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i8*, i32, i32 }
%struct.remote = type { i8* }
%struct.refspec = type { i32, i8** }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str = private unnamed_addr constant [18 x i8] c"submodule--helper\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"push-check\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"process for submodule '%s' failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.remote*, %struct.refspec*)* @submodule_push_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submodule_push_check(i8* %0, i8* %1, %struct.remote* %2, %struct.refspec* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.remote*, align 8
  %8 = alloca %struct.refspec*, align 8
  %9 = alloca %struct.child_process, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.remote* %2, %struct.remote** %7, align 8
  store %struct.refspec* %3, %struct.refspec** %8, align 8
  %11 = bitcast %struct.child_process* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 32, i1 false)
  %12 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 5
  %13 = call i32 @argv_array_push(i32* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 5
  %15 = call i32 @argv_array_push(i32* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %16 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 5
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @argv_array_push(i32* %16, i8* %17)
  %19 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 5
  %20 = load %struct.remote*, %struct.remote** %7, align 8
  %21 = getelementptr inbounds %struct.remote, %struct.remote* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @argv_array_push(i32* %19, i8* %22)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %40, %4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.refspec*, %struct.refspec** %8, align 8
  %27 = getelementptr inbounds %struct.refspec, %struct.refspec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 5
  %32 = load %struct.refspec*, %struct.refspec** %8, align 8
  %33 = getelementptr inbounds %struct.refspec, %struct.refspec* %32, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @argv_array_push(i32* %31, i8* %38)
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %24

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 4
  %45 = call i32 @prepare_submodule_repo_env(i32* %44)
  %46 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 2
  store i32 1, i32* %48, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 3
  store i8* %49, i8** %50, align 8
  %51 = call i64 @run_command(%struct.child_process* %9)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %53, %43
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @prepare_submodule_repo_env(i32*) #2

declare dso_local i64 @run_command(%struct.child_process*) #2

declare dso_local i32 @die(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
