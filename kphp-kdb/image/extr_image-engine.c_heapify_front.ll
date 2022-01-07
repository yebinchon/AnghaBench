; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_heapify_front.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_heapify_front.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_request = type { i64 }

@queue_size = common dso_local global i32 0, align 4
@HEAP = common dso_local global %struct.forth_request** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.forth_request*, i32)* @heapify_front to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heapify_front(%struct.forth_request* %0, i32 %1) #0 {
  %3 = alloca %struct.forth_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.forth_request* %0, %struct.forth_request** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %2, %50
  %7 = load i32, i32* %4, align 4
  %8 = shl i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @queue_size, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %61

13:                                               ; preds = %6
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @queue_size, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load %struct.forth_request**, %struct.forth_request*** @HEAP, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %18, i64 %20
  %22 = load %struct.forth_request*, %struct.forth_request** %21, align 8
  %23 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.forth_request**, %struct.forth_request*** @HEAP, align 8
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %25, i64 %28
  %30 = load %struct.forth_request*, %struct.forth_request** %29, align 8
  %31 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %24, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %17
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %17, %13
  %38 = load %struct.forth_request*, %struct.forth_request** %3, align 8
  %39 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.forth_request**, %struct.forth_request*** @HEAP, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %41, i64 %43
  %45 = load %struct.forth_request*, %struct.forth_request** %44, align 8
  %46 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sle i64 %40, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %61

50:                                               ; preds = %37
  %51 = load %struct.forth_request**, %struct.forth_request*** @HEAP, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %51, i64 %53
  %55 = load %struct.forth_request*, %struct.forth_request** %54, align 8
  %56 = load %struct.forth_request**, %struct.forth_request*** @HEAP, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %56, i64 %58
  store %struct.forth_request* %55, %struct.forth_request** %59, align 8
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %4, align 4
  br label %6

61:                                               ; preds = %49, %12
  %62 = load %struct.forth_request*, %struct.forth_request** %3, align 8
  %63 = load %struct.forth_request**, %struct.forth_request*** @HEAP, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %63, i64 %65
  store %struct.forth_request* %62, %struct.forth_request** %66, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
