; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_put_event_into_heap.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_put_event_into_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@MAX_EVENTS = common dso_local global i32 0, align 4
@Events = common dso_local global %struct.TYPE_8__* null, align 8
@ev_heap_size = common dso_local global i32 0, align 4
@ev_heap = common dso_local global %struct.TYPE_8__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @put_event_into_heap(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MAX_EVENTS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Events, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 %19
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = icmp eq %struct.TYPE_8__* %20, %21
  br label %23

23:                                               ; preds = %16, %12, %1
  %24 = phi i1 [ false, %12 ], [ false, %1 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = call i32 @remove_event_from_heap(%struct.TYPE_8__* %32, i32 1)
  br label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @ev_heap_size, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @ev_heap_size, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i32 [ %33, %31 ], [ %36, %34 ]
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MAX_EVENTS, align 4
  %41 = icmp sle i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  br label %44

44:                                               ; preds = %60, %37
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %70

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = ashr i32 %48, 1
  store i32 %49, i32* %5, align 4
  %50 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @ev_heap, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %50, i64 %52
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %6, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = call i64 @cmp_ev(%struct.TYPE_8__* %55, %struct.TYPE_8__* %56)
  %58 = icmp sle i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %70

60:                                               ; preds = %47
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @ev_heap, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %62, i64 %64
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %4, align 4
  br label %44

70:                                               ; preds = %59, %44
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @ev_heap, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %72, i64 %74
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %75, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @remove_event_from_heap(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @cmp_ev(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
