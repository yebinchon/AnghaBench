; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_do_lock_transaction.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_do_lock_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_6__* }

@trs_temp = common dso_local global i64 0, align 8
@DelayQueues = common dso_local global %struct.TYPE_6__** null, align 8
@dq = common dso_local global i32 0, align 4
@DELAY_QUEUES = common dso_local global i32 0, align 4
@trs_temp_locked = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_lock_transaction(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.TYPE_6__* @get_temp_transaction(i32 %6)
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = call i32 @check_transaction(%struct.TYPE_6__* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %80

18:                                               ; preds = %11
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @trs_temp, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %80

25:                                               ; preds = %18
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %58, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @DelayQueues, align 8
  %39 = load i32, i32* @dq, align 4
  %40 = add nsw i32 %39, 15
  %41 = load i32, i32* @DELAY_QUEUES, align 4
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %40, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 %44
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @DelayQueues, align 8
  %51 = load i32, i32* @dq, align 4
  %52 = add nsw i32 %51, 15
  %53 = load i32, i32* @DELAY_QUEUES, align 4
  %54 = sub nsw i32 %53, 1
  %55 = and i32 %52, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %50, i64 %56
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %57, align 8
  br label %58

58:                                               ; preds = %30, %25
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @dq, align 4
  %63 = add nsw i32 %62, 15
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load i32, i32* @dq, align 4
  %67 = add nsw i32 %66, 15
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %65, %58
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = call i32 @lock_transaction(%struct.TYPE_6__* %71)
  %73 = icmp eq i32 %72, 1
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i64, i64* @trs_temp_locked, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = call i32 @flush_binlog_forced(i32 0)
  store i32 2, i32* %2, align 4
  br label %80

80:                                               ; preds = %70, %24, %16, %10
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_6__* @get_temp_transaction(i32) #1

declare dso_local i32 @check_transaction(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lock_transaction(%struct.TYPE_6__*) #1

declare dso_local i32 @flush_binlog_forced(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
