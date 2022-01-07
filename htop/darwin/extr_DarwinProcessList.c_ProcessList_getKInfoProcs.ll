; ModuleID = '/home/carl/AnghaBench/htop/darwin/extr_DarwinProcessList.c_ProcessList_getKInfoProcs.c'
source_filename = "/home/carl/AnghaBench/htop/darwin/extr_DarwinProcessList.c_ProcessList_getKInfoProcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i32 }

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC = common dso_local global i32 0, align 4
@KERN_PROC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to get size of kproc_infos\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Out of memory for kproc_infos\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unable to get kinfo_procs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kinfo_proc* @ProcessList_getKInfoProcs(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca %struct.kinfo_proc*, align 8
  store i64* %0, i64** %2, align 8
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %6 = load i32, i32* @CTL_KERN, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds i32, i32* %5, i64 1
  %8 = load i32, i32* @KERN_PROC, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds i32, i32* %7, i64 1
  %10 = load i32, i32* @KERN_PROC_ALL, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 0, i32* %11, align 4
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %4, align 8
  %12 = load i64*, i64** %2, align 8
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %14 = load i64*, i64** %2, align 8
  %15 = call i64 @sysctl(i32* %13, i32 4, %struct.kinfo_proc* null, i64* %14, i32* null, i32 0)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @CRT_fatalError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %1
  %20 = load i64*, i64** %2, align 8
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.kinfo_proc* @xMalloc(i64 %21)
  store %struct.kinfo_proc* %22, %struct.kinfo_proc** %4, align 8
  %23 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %24 = icmp eq %struct.kinfo_proc* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @CRT_fatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %19
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %29 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %30 = load i64*, i64** %2, align 8
  %31 = call i64 @sysctl(i32* %28, i32 4, %struct.kinfo_proc* %29, i64* %30, i32* null, i32 0)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @CRT_fatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %27
  %36 = load i64*, i64** %2, align 8
  %37 = load i64, i64* %36, align 8
  %38 = udiv i64 %37, 4
  %39 = load i64*, i64** %2, align 8
  store i64 %38, i64* %39, align 8
  %40 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  ret %struct.kinfo_proc* %40
}

declare dso_local i64 @sysctl(i32*, i32, %struct.kinfo_proc*, i64*, i32*, i32) #1

declare dso_local i32 @CRT_fatalError(i8*) #1

declare dso_local %struct.kinfo_proc* @xMalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
