; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_remove_event_from_heap.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_remove_event_from_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@ev_heap_size = common dso_local global i32 0, align 4
@MAX_EVENTS = common dso_local global i32 0, align 4
@Events = common dso_local global %struct.TYPE_7__* null, align 8
@ev_heap = common dso_local global %struct.TYPE_7__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_event_from_heap(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @ev_heap_size, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MAX_EVENTS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Events, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i64 %24
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = icmp eq %struct.TYPE_7__* %25, %26
  br label %28

28:                                               ; preds = %21, %17, %2
  %29 = phi i1 [ false, %17 ], [ false, %2 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %156

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sle i32 %42, %43
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ false, %38 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %93, %45
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %94

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %58
  %63 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ev_heap, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %63, i64 %66
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ev_heap, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %69, i64 %71
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = call i64 @cmp_ev(%struct.TYPE_7__* %68, %struct.TYPE_7__* %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %62
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %76, %62, %58
  %80 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ev_heap, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %80, i64 %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %10, align 8
  %85 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ev_heap, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %85, i64 %87
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %79
  br i1 true, label %51, label %94

94:                                               ; preds = %93, %57
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ev_heap, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %98, i64 %100
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %101, align 8
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %3, align 4
  br label %156

103:                                              ; preds = %94
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %152

107:                                              ; preds = %103
  %108 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ev_heap, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %108, i64 %110
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  store %struct.TYPE_7__* %112, %struct.TYPE_7__** %4, align 8
  %113 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ev_heap, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %113, i64 %115
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %116, align 8
  br label %117

117:                                              ; preds = %133, %107
  %118 = load i32, i32* %7, align 4
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %120, label %143

120:                                              ; preds = %117
  %121 = load i32, i32* %7, align 4
  %122 = ashr i32 %121, 1
  store i32 %122, i32* %8, align 4
  %123 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ev_heap, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %123, i64 %125
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  store %struct.TYPE_7__* %127, %struct.TYPE_7__** %10, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %130 = call i64 @cmp_ev(%struct.TYPE_7__* %128, %struct.TYPE_7__* %129)
  %131 = icmp sle i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  br label %143

133:                                              ; preds = %120
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %135 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ev_heap, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %135, i64 %137
  store %struct.TYPE_7__* %134, %struct.TYPE_7__** %138, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %7, align 4
  br label %117

143:                                              ; preds = %132, %117
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ev_heap, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %145, i64 %147
  store %struct.TYPE_7__* %144, %struct.TYPE_7__** %148, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %143, %103
  %153 = load i32, i32* @ev_heap_size, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* @ev_heap_size, align 4
  %155 = load i32, i32* %9, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %152, %97, %37
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @cmp_ev(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
