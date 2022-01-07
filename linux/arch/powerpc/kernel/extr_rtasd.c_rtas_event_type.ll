; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtasd.c_rtas_event_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtasd.c_rtas_event_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtas_type = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"EPOW\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Platform Error\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"I/O Event\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Platform Information Event\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Resource Deallocation Event\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Dump Notification Event\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Platform Resource Reassignment Event\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Hotplug Event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @rtas_event_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rtas_event_type(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 11
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load i8**, i8*** @rtas_type, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %2, align 8
  br label %29

15:                                               ; preds = %6, %1
  %16 = load i32, i32* %3, align 4
  switch i32 %16, label %25 [
    i32 133, label %17
    i32 129, label %18
    i32 130, label %19
    i32 131, label %20
    i32 135, label %21
    i32 134, label %22
    i32 128, label %23
    i32 132, label %24
  ]

17:                                               ; preds = %15
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %29

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %29

19:                                               ; preds = %15
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %29

20:                                               ; preds = %15
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %29

21:                                               ; preds = %15
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %29

22:                                               ; preds = %15
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %29

23:                                               ; preds = %15
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %29

24:                                               ; preds = %15
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %29

25:                                               ; preds = %15
  %26 = load i8**, i8*** @rtas_type, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %2, align 8
  br label %29

29:                                               ; preds = %25, %24, %23, %22, %21, %20, %19, %18, %17, %9
  %30 = load i8*, i8** %2, align 8
  ret i8* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
