; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_clear_subscr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_clear_subscr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [38 x i8] c"clear_subscr: (q = %p), (qname = %s)\0A\00", align 1
@MAX_DIFF = common dso_local global i64 0, align 8
@to_del_overflow = common dso_local global i32 0, align 4
@to_del = common dso_local global i32 0, align 4
@to_del_n = common dso_local global i32 0, align 4
@treap_cnt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_subscr(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %3, i32 %6)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 0, %12
  %14 = load i64, i64* @MAX_DIFF, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 0, %21
  %23 = load i64, i64* @MAX_DIFF, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load i32, i32* @to_del_overflow, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* @to_del_overflow, align 4
  br label %29

29:                                               ; preds = %16, %1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @to_del, align 4
  %36 = load i64, i64* @MAX_DIFF, align 8
  %37 = call i32 @treap_conv_to_array(i32 %34, i32 %35, i64 %36)
  store i32 %37, i32* @to_del_n, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @to_del, align 4
  %42 = load i32, i32* @to_del_n, align 4
  %43 = call i32 @process_changes(i32 %40, i32* null, i32 %41, i32 %42, i32 0, i32 0)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @treap_cnt, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* @treap_cnt, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = call i32 @treap_free(%struct.TYPE_6__* %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @treap_cnt, align 8
  %61 = sub nsw i64 %60, %59
  store i64 %61, i64* @treap_cnt, align 8
  ret void
}

declare dso_local i32 @dbg(i8*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @treap_conv_to_array(i32, i32, i64) #1

declare dso_local i32 @process_changes(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @treap_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
