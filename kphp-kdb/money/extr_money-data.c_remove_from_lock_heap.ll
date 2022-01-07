; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_remove_from_lock_heap.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_remove_from_lock_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@LHN = common dso_local global i32 0, align 4
@LH = common dso_local global %struct.TYPE_5__** null, align 8
@locked_long_transactions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @remove_from_lock_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_from_lock_heap(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @LHN, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @LH, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %14, i64 %16
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = icmp eq %struct.TYPE_5__* %18, %19
  br label %21

21:                                               ; preds = %13, %9, %1
  %22 = phi i1 [ false, %9 ], [ false, %1 ], [ %20, %13 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* @LHN, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* @LHN, align 4
  store i32 %28, i32* @locked_long_transactions, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @LHN, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %21
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @LH, align 8
  %35 = load i32, i32* @LHN, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %34, i64 %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = call i32 @lock_heap_adjust(i32 %33, %struct.TYPE_5__* %39)
  br label %41

41:                                               ; preds = %32, %21
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lock_heap_adjust(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
