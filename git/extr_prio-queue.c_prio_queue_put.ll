; ModuleID = '/home/carl/AnghaBench/git/extr_prio-queue.c_prio_queue_put.c'
source_filename = "/home/carl/AnghaBench/git/extr_prio-queue.c_prio_queue_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prio_queue = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prio_queue_put(%struct.prio_queue* %0, i8* %1) #0 {
  %3 = alloca %struct.prio_queue*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.prio_queue* %0, %struct.prio_queue** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %8 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %11 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  %14 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %15 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ALLOC_GROW(%struct.TYPE_2__* %9, i32 %13, i32 %16)
  %18 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %19 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = sext i32 %20 to i64
  %23 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %24 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %27 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i64 %22, i64* %31, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %34 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %37 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i8* %32, i8** %41, align 8
  %42 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %43 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %47 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %2
  br label %76

51:                                               ; preds = %2
  %52 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %53 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %74, %51
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sdiv i32 %61, 2
  store i32 %62, i32* %6, align 4
  %63 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @compare(%struct.prio_queue* %63, i32 %64, i32 %65)
  %67 = icmp sle i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %76

69:                                               ; preds = %59
  %70 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @swap(%struct.prio_queue* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %5, align 4
  br label %56

76:                                               ; preds = %50, %68, %56
  ret void
}

declare dso_local i32 @ALLOC_GROW(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @compare(%struct.prio_queue*, i32, i32) #1

declare dso_local i32 @swap(%struct.prio_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
