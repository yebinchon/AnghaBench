; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-sysfs.c_queue_wc_store.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-sysfs.c_queue_wc_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"write back\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"write through\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@QUEUE_FLAG_WC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.request_queue*, i8*, i64)* @queue_wc_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @queue_wc_store(%struct.request_queue* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 -1, i32* %8, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %23

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %13
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %21, %17
  br label %23

23:                                               ; preds = %22, %12
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %4, align 8
  br label %42

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @QUEUE_FLAG_WC, align 4
  %34 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %35 = call i32 @blk_queue_flag_set(i32 %33, %struct.request_queue* %34)
  br label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @QUEUE_FLAG_WC, align 4
  %38 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %39 = call i32 @blk_queue_flag_clear(i32 %37, %struct.request_queue* %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i64, i64* %7, align 8
  store i64 %41, i64* %4, align 8
  br label %42

42:                                               ; preds = %40, %26
  %43 = load i64, i64* %4, align 8
  ret i64 %43
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_flag_clear(i32, %struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
