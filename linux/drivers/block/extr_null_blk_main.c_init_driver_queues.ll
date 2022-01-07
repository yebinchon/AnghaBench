; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_init_driver_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_init_driver_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb = type { i32, %struct.nullb_queue*, %struct.TYPE_2__* }
%struct.nullb_queue = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nullb*)* @init_driver_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_driver_queues(%struct.nullb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nullb*, align 8
  %4 = alloca %struct.nullb_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nullb* %0, %struct.nullb** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.nullb*, %struct.nullb** %3, align 8
  %10 = getelementptr inbounds %struct.nullb, %struct.nullb* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %7
  %16 = load %struct.nullb*, %struct.nullb** %3, align 8
  %17 = getelementptr inbounds %struct.nullb, %struct.nullb* %16, i32 0, i32 1
  %18 = load %struct.nullb_queue*, %struct.nullb_queue** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.nullb_queue, %struct.nullb_queue* %18, i64 %20
  store %struct.nullb_queue* %21, %struct.nullb_queue** %4, align 8
  %22 = load %struct.nullb*, %struct.nullb** %3, align 8
  %23 = load %struct.nullb_queue*, %struct.nullb_queue** %4, align 8
  %24 = call i32 @null_init_queue(%struct.nullb* %22, %struct.nullb_queue* %23)
  %25 = load %struct.nullb_queue*, %struct.nullb_queue** %4, align 8
  %26 = call i32 @setup_commands(%struct.nullb_queue* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %40

31:                                               ; preds = %15
  %32 = load %struct.nullb*, %struct.nullb** %3, align 8
  %33 = getelementptr inbounds %struct.nullb, %struct.nullb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %7

39:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @null_init_queue(%struct.nullb*, %struct.nullb_queue*) #1

declare dso_local i32 @setup_commands(%struct.nullb_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
