; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_gc.c_heap_p.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_gc.c_heap_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.RBasic = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.RBasic }

@MRB_HEAP_PAGE_SIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.RBasic*)* @heap_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heap_p(%struct.TYPE_10__* %0, %struct.RBasic* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.RBasic*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.RBasic* %1, %struct.RBasic** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %6, align 8
  br label %11

11:                                               ; preds = %33, %2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = call %struct.TYPE_11__* @objects(%struct.TYPE_9__* %15)
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %7, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %22 = icmp ule %struct.RBasic* %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %14
  %24 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = load i64, i64* @MRB_HEAP_PAGE_SIZE, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = icmp ule %struct.RBasic* %24, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %3, align 4
  br label %39

33:                                               ; preds = %23, %14
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %6, align 8
  br label %11

37:                                               ; preds = %11
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.TYPE_11__* @objects(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
