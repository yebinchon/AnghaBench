; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_update_relatives_binlog_position.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_update_relatives_binlog_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.relative* }
%struct.relative = type { i32, i64, %struct.relative*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@RELATIVES = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@BINLOG_POSITION = common dso_local global i64 0, align 8
@precise_now = common dso_local global i32 0, align 4
@STATS = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_relatives_binlog_position(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.relative*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.relative*, %struct.relative** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @RELATIVES, i32 0, i32 0), align 8
  store %struct.relative* %7, %struct.relative** %6, align 8
  br label %8

8:                                                ; preds = %40, %2
  %9 = load %struct.relative*, %struct.relative** %6, align 8
  %10 = getelementptr inbounds %struct.relative, %struct.relative* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %44

13:                                               ; preds = %8
  %14 = load %struct.relative*, %struct.relative** %6, align 8
  %15 = getelementptr inbounds %struct.relative, %struct.relative* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %13
  %21 = load %struct.relative*, %struct.relative** %6, align 8
  %22 = getelementptr inbounds %struct.relative, %struct.relative* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BINLOG_POSITION, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @BINLOG_POSITION, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @precise_now, align 4
  %32 = load %struct.relative*, %struct.relative** %6, align 8
  %33 = getelementptr inbounds %struct.relative, %struct.relative* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %26, %20
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.relative*, %struct.relative** %6, align 8
  %37 = getelementptr inbounds %struct.relative, %struct.relative* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %34, %13
  %41 = load %struct.relative*, %struct.relative** %6, align 8
  %42 = getelementptr inbounds %struct.relative, %struct.relative* %41, i32 0, i32 2
  %43 = load %struct.relative*, %struct.relative** %42, align 8
  store %struct.relative* %43, %struct.relative** %6, align 8
  br label %8

44:                                               ; preds = %8
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @STATS, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %45, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @STATS, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = call i32 (...) @get_double_time_since_epoch()
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @STATS, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  br label %60

60:                                               ; preds = %51, %44
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @get_double_time_since_epoch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
