; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_privacy_merge.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_privacy_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.TYPE_5__*, %struct.TYPE_5__*)* @privacy_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @privacy_merge(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %3, align 8
  br label %41

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %3, align 8
  br label %41

15:                                               ; preds = %10
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = call %struct.TYPE_5__* @privacy_merge(%struct.TYPE_5__* %26, %struct.TYPE_5__* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %3, align 8
  br label %41

32:                                               ; preds = %15
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = call %struct.TYPE_5__* @privacy_merge(%struct.TYPE_5__* %33, %struct.TYPE_5__* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %3, align 8
  br label %41

41:                                               ; preds = %32, %23, %13, %8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
