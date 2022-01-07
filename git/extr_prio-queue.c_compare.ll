; ModuleID = '/home/carl/AnghaBench/git/extr_prio-queue.c_compare.c'
source_filename = "/home/carl/AnghaBench/git/extr_prio-queue.c_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prio_queue = type { i32 (i32, i32, i32)*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.prio_queue*, i32, i32)* @compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare(%struct.prio_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.prio_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.prio_queue* %0, %struct.prio_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.prio_queue*, %struct.prio_queue** %4, align 8
  %9 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %8, i32 0, i32 0
  %10 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %9, align 8
  %11 = load %struct.prio_queue*, %struct.prio_queue** %4, align 8
  %12 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.prio_queue*, %struct.prio_queue** %4, align 8
  %20 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.prio_queue*, %struct.prio_queue** %4, align 8
  %28 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 %10(i32 %18, i32 %26, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %3
  %34 = load %struct.prio_queue*, %struct.prio_queue** %4, align 8
  %35 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.prio_queue*, %struct.prio_queue** %4, align 8
  %43 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %41, %49
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %33, %3
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
