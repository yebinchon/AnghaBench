; ModuleID = '/home/carl/AnghaBench/git/extr_prio-queue.c_prio_queue_reverse.c'
source_filename = "/home/carl/AnghaBench/git/extr_prio-queue.c_prio_queue_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prio_queue = type { i32, i32* }

@.str = private unnamed_addr constant [39 x i8] c"prio_queue_reverse() on non-LIFO queue\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prio_queue_reverse(%struct.prio_queue* %0) #0 {
  %2 = alloca %struct.prio_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.prio_queue* %0, %struct.prio_queue** %2, align 8
  %5 = load %struct.prio_queue*, %struct.prio_queue** %2, align 8
  %6 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @BUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %26, %11
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.prio_queue*, %struct.prio_queue** %2, align 8
  %15 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %4, align 4
  %20 = icmp slt i32 %13, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %12
  %22 = load %struct.prio_queue*, %struct.prio_queue** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @swap(%struct.prio_queue* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %12

29:                                               ; preds = %12
  ret void
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @swap(%struct.prio_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
