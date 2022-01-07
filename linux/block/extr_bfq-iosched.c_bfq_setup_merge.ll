; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_setup_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_setup_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_queue = type { i32, %struct.bfq_queue*, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"scheduling merge with queue %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfq_queue* (%struct.bfq_queue*, %struct.bfq_queue*)* @bfq_setup_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfq_queue* @bfq_setup_merge(%struct.bfq_queue* %0, %struct.bfq_queue* %1) #0 {
  %3 = alloca %struct.bfq_queue*, align 8
  %4 = alloca %struct.bfq_queue*, align 8
  %5 = alloca %struct.bfq_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bfq_queue*, align 8
  store %struct.bfq_queue* %0, %struct.bfq_queue** %4, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %5, align 8
  %9 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %10 = call i32 @bfqq_process_refs(%struct.bfq_queue* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.bfq_queue* null, %struct.bfq_queue** %3, align 8
  br label %55

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %24, %13
  %15 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %16 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %15, i32 0, i32 1
  %17 = load %struct.bfq_queue*, %struct.bfq_queue** %16, align 8
  store %struct.bfq_queue* %17, %struct.bfq_queue** %8, align 8
  %18 = icmp ne %struct.bfq_queue* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %21 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %22 = icmp eq %struct.bfq_queue* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store %struct.bfq_queue* null, %struct.bfq_queue** %3, align 8
  br label %55

24:                                               ; preds = %19
  %25 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  store %struct.bfq_queue* %25, %struct.bfq_queue** %5, align 8
  br label %14

26:                                               ; preds = %14
  %27 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %28 = call i32 @bfqq_process_refs(%struct.bfq_queue* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %30 = call i32 @bfqq_process_refs(%struct.bfq_queue* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %26
  store %struct.bfq_queue* null, %struct.bfq_queue** %3, align 8
  br label %55

37:                                               ; preds = %33
  %38 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %39 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %42 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %43 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @bfq_log_bfqq(i32 %40, %struct.bfq_queue* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %47 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %48 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %47, i32 0, i32 1
  store %struct.bfq_queue* %46, %struct.bfq_queue** %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %51 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  store %struct.bfq_queue* %54, %struct.bfq_queue** %3, align 8
  br label %55

55:                                               ; preds = %37, %36, %23, %12
  %56 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  ret %struct.bfq_queue* %56
}

declare dso_local i32 @bfqq_process_refs(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_log_bfqq(i32, %struct.bfq_queue*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
