; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_loosen_small_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_loosen_small_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i32 }
%struct.packed_git = type { i32, i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed seeking to start of '%s'\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"unpack-objects\00", align 1
@show_stats = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packed_git*)* @loosen_small_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loosen_small_pack(%struct.packed_git* %0) #0 {
  %2 = alloca %struct.packed_git*, align 8
  %3 = alloca %struct.child_process, align 4
  store %struct.packed_git* %0, %struct.packed_git** %2, align 8
  %4 = bitcast %struct.child_process* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 16, i1 false)
  %5 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %6 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SEEK_SET, align 4
  %9 = call i64 @lseek(i32 %7, i32 0, i32 %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %13 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @die_errno(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %18 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 2
  %24 = call i32 @argv_array_push(i32* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @show_stats, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 2
  %29 = call i32 @argv_array_push(i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %16
  %31 = call i32 @run_command(%struct.child_process* %3)
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i32 @die_errno(i8*, i32) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @run_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
