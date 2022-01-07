; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_SetupReachabilityHeap.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_SetupReachabilityHeap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@AAS_MAX_REACHABILITYSIZE = common dso_local global i32 0, align 4
@reachabilityheap = common dso_local global %struct.TYPE_4__* null, align 8
@nextreachability = common dso_local global %struct.TYPE_4__* null, align 8
@numlreachabilities = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_SetupReachabilityHeap() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @AAS_MAX_REACHABILITYSIZE, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 8
  %5 = trunc i64 %4 to i32
  %6 = call i64 @GetClearedMemory(i32 %5)
  %7 = inttoptr i64 %6 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** @reachabilityheap, align 8
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %24, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @AAS_MAX_REACHABILITYSIZE, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reachabilityheap, align 8
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %17
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reachabilityheap, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %23, align 8
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reachabilityheap, align 8
  %29 = load i32, i32* @AAS_MAX_REACHABILITYSIZE, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reachabilityheap, align 8
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** @nextreachability, align 8
  store i64 0, i64* @numlreachabilities, align 8
  ret void
}

declare dso_local i64 @GetClearedMemory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
