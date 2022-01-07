; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_may_be_close_cooperator.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_may_be_close_cooperator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_queue = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfq_queue*, %struct.bfq_queue*)* @bfq_may_be_close_cooperator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfq_may_be_close_cooperator(%struct.bfq_queue* %0, %struct.bfq_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfq_queue*, align 8
  %5 = alloca %struct.bfq_queue*, align 8
  store %struct.bfq_queue* %0, %struct.bfq_queue** %4, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %5, align 8
  %6 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %7 = call i64 @bfq_too_late_for_merging(%struct.bfq_queue* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

10:                                               ; preds = %2
  %11 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %12 = call i64 @bfq_class_idle(%struct.bfq_queue* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %16 = call i64 @bfq_class_idle(%struct.bfq_queue* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %20 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %23 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %14, %10
  store i32 0, i32* %3, align 4
  br label %46

27:                                               ; preds = %18
  %28 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %29 = call i64 @BFQQ_SEEKY(%struct.bfq_queue* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %33 = call i64 @BFQQ_SEEKY(%struct.bfq_queue* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27
  store i32 0, i32* %3, align 4
  br label %46

36:                                               ; preds = %31
  %37 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %38 = call i32 @bfq_bfqq_sync(%struct.bfq_queue* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %42 = call i32 @bfq_bfqq_sync(%struct.bfq_queue* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40, %36
  store i32 0, i32* %3, align 4
  br label %46

45:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %44, %35, %26, %9
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @bfq_too_late_for_merging(%struct.bfq_queue*) #1

declare dso_local i64 @bfq_class_idle(%struct.bfq_queue*) #1

declare dso_local i64 @BFQQ_SEEKY(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_bfqq_sync(%struct.bfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
