; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_submodule_has_dirty_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_submodule_has_dirty_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i32, i32, i32 }
%struct.submodule = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"diff-index\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"--cached\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"could not recurse into submodule '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.submodule*)* @submodule_has_dirty_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submodule_has_dirty_index(%struct.submodule* %0) #0 {
  %2 = alloca %struct.submodule*, align 8
  %3 = alloca %struct.child_process, align 4
  store %struct.submodule* %0, %struct.submodule** %2, align 8
  %4 = bitcast %struct.child_process* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  %5 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 5
  %6 = call i32 @prepare_submodule_repo_env(i32* %5)
  %7 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 4
  %9 = call i32 @argv_array_pushl(i32* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %10 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 2
  store i32 1, i32* %11, align 4
  %12 = load %struct.submodule*, %struct.submodule** %2, align 8
  %13 = getelementptr inbounds %struct.submodule, %struct.submodule* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = call i64 @start_command(%struct.child_process* %3)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.submodule*, %struct.submodule** %2, align 8
  %20 = getelementptr inbounds %struct.submodule, %struct.submodule* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = call i32 @finish_command(%struct.child_process* %3)
  ret i32 %24
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @prepare_submodule_repo_env(i32*) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, i8*, i32*) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @die(i8*, i32) #2

declare dso_local i32 @finish_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
