; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_heap_fix_up.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_heap_fix_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@heap = common dso_local global %struct.TYPE_3__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_fix_up(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %5
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @heap, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %9, i64 %11
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @heap, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sdiv i32 %17, 2
  store i32 %18, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %16, i64 %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %15, %23
  br label %25

25:                                               ; preds = %8, %5
  %26 = phi i1 [ false, %5 ], [ %24, %8 ]
  br i1 %26, label %27, label %48

27:                                               ; preds = %25
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @heap, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %28, i64 %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %3, align 8
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @heap, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @heap, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %38, i64 %40
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @heap, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %43, i64 %45
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %46, align 8
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %5

48:                                               ; preds = %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
