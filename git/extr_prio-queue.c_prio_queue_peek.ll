; ModuleID = '/home/carl/AnghaBench/git/extr_prio-queue.c_prio_queue_peek.c'
source_filename = "/home/carl/AnghaBench/git/extr_prio-queue.c_prio_queue_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prio_queue = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @prio_queue_peek(%struct.prio_queue* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.prio_queue*, align 8
  store %struct.prio_queue* %0, %struct.prio_queue** %3, align 8
  %4 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %5 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %33

9:                                                ; preds = %1
  %10 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %11 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %9
  %15 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %16 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %19 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %2, align 8
  br label %33

26:                                               ; preds = %9
  %27 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %28 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %2, align 8
  br label %33

33:                                               ; preds = %26, %14, %8
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
