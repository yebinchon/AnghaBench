; ModuleID = '/home/carl/AnghaBench/linux/block/extr_elevator.c_elv_iosched_store.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_elevator.c_elv_iosched_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @elv_iosched_store(%struct.request_queue* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %10 = call i32 @queue_is_mq(%struct.request_queue* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %14 = call i32 @elv_support_iosched(%struct.request_queue* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %3
  %17 = load i64, i64* %7, align 8
  store i64 %17, i64* %4, align 8
  br label %29

18:                                               ; preds = %12
  %19 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @__elevator_change(%struct.request_queue* %19, i8* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %4, align 8
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %26, %24, %16
  %30 = load i64, i64* %4, align 8
  ret i64 %30
}

declare dso_local i32 @queue_is_mq(%struct.request_queue*) #1

declare dso_local i32 @elv_support_iosched(%struct.request_queue*) #1

declare dso_local i32 @__elevator_change(%struct.request_queue*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
