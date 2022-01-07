; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_put_async_queues.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_put_async_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i32 }
%struct.bfq_group = type { i32, i32** }

@IOPRIO_BE_NR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfq_put_async_queues(%struct.bfq_data* %0, %struct.bfq_group* %1) #0 {
  %3 = alloca %struct.bfq_data*, align 8
  %4 = alloca %struct.bfq_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bfq_data* %0, %struct.bfq_data** %3, align 8
  store %struct.bfq_group* %1, %struct.bfq_group** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %32, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %35

10:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %28, %10
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @IOPRIO_BE_NR, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %17 = load %struct.bfq_group*, %struct.bfq_group** %4, align 8
  %18 = getelementptr inbounds %struct.bfq_group, %struct.bfq_group* %17, i32 0, i32 1
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @__bfq_put_async_bfqq(%struct.bfq_data* %16, i32* %26)
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %11

31:                                               ; preds = %11
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %7

35:                                               ; preds = %7
  %36 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %37 = load %struct.bfq_group*, %struct.bfq_group** %4, align 8
  %38 = getelementptr inbounds %struct.bfq_group, %struct.bfq_group* %37, i32 0, i32 0
  %39 = call i32 @__bfq_put_async_bfqq(%struct.bfq_data* %36, i32* %38)
  ret void
}

declare dso_local i32 @__bfq_put_async_bfqq(%struct.bfq_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
