; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_event_free.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_event_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@eq_n = common dso_local global i32 0, align 4
@events_mem = common dso_local global i64 0, align 8
@evm_l = common dso_local global i64 0, align 8
@eq = common dso_local global %struct.TYPE_5__** null, align 8
@eq_l = common dso_local global i64 0, align 8
@type_size = common dso_local global i32* null, align 8
@events_memory = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_free() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load i32, i32* @eq_n, align 4
  %3 = call i32 @assert(i32 %2)
  %4 = load i64, i64* @events_mem, align 8
  %5 = load i64, i64* @evm_l, align 8
  %6 = add nsw i64 %4, %5
  %7 = inttoptr i64 %6 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i64 0, i64* @evm_l, align 8
  br label %11

11:                                               ; preds = %10, %0
  %12 = load i64, i64* @events_mem, align 8
  %13 = load i64, i64* @evm_l, align 8
  %14 = add nsw i64 %12, %13
  %15 = inttoptr i64 %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %1, align 8
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @eq, align 8
  %17 = load i64, i64* @eq_l, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %16, i64 %17
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %21 = icmp eq %struct.TYPE_5__* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %25 = load i64, i64* @eq_l, align 8
  %26 = call i32 @upd_q_st_delete(%struct.TYPE_5__* %24, i64 %25)
  %27 = load i32, i32* @eq_n, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* @eq_n, align 4
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @eq, align 8
  %30 = load i64, i64* @eq_l, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %29, i64 %30
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %31, align 8
  %32 = load i64, i64* @eq_l, align 8
  %33 = call i32 @QINC(i64 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %35 = call i64 @get_event_size(%struct.TYPE_5__* %34)
  %36 = load i32*, i32** @type_size, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %42, %35
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %46 = call i64 @get_event_size(%struct.TYPE_5__* %45)
  %47 = load i32, i32* @events_memory, align 4
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* @events_memory, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %52 = call i64 @get_event_size(%struct.TYPE_5__* %51)
  %53 = load i64, i64* @evm_l, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* @evm_l, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @upd_q_st_delete(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @QINC(i64) #1

declare dso_local i64 @get_event_size(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
