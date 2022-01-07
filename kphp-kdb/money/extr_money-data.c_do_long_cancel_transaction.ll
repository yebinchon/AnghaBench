; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_do_long_cancel_transaction.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_do_long_cancel_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.lev_money_trans_cancel = type { i32, i32 }

@trs_long_locked = common dso_local global i64 0, align 8
@now = common dso_local global i64 0, align 8
@LEV_MONEY_TRANS_CANCEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_long_cancel_transaction(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x i64], align 16
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.lev_money_trans_cancel*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call %struct.TYPE_4__* @get_transaction(i64 %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @trs_long_locked, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %63

21:                                               ; preds = %14
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %24 = call i32 @compute_lock_codes(%struct.TYPE_4__* %22, i64* %23)
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %27 = load i64, i64* %26, align 16
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %21
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* @now, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %29
  store i32 -1, i32* %3, align 4
  br label %63

41:                                               ; preds = %34, %21
  %42 = load i32, i32* @LEV_MONEY_TRANS_CANCEL, align 4
  %43 = call %struct.lev_money_trans_cancel* @alloc_log_event(i32 %42, i32 8, i32 -2)
  store %struct.lev_money_trans_cancel* %43, %struct.lev_money_trans_cancel** %8, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %46 = load i64, i64* %45, align 16
  %47 = icmp eq i64 %44, %46
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 -2, i32 -1
  %50 = load %struct.lev_money_trans_cancel*, %struct.lev_money_trans_cancel** %8, align 8
  %51 = getelementptr inbounds %struct.lev_money_trans_cancel, %struct.lev_money_trans_cancel* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.lev_money_trans_cancel*, %struct.lev_money_trans_cancel** %8, align 8
  %56 = getelementptr inbounds %struct.lev_money_trans_cancel, %struct.lev_money_trans_cancel* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.lev_money_trans_cancel*, %struct.lev_money_trans_cancel** %8, align 8
  %58 = call i32 @cancel_transaction(%struct.lev_money_trans_cancel* %57)
  %59 = icmp eq i32 %58, 1
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = call i32 @flush_binlog_forced(i32 0)
  store i32 3, i32* %3, align 4
  br label %63

63:                                               ; preds = %41, %40, %20, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_4__* @get_transaction(i64) #1

declare dso_local i32 @compute_lock_codes(%struct.TYPE_4__*, i64*) #1

declare dso_local %struct.lev_money_trans_cancel* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cancel_transaction(%struct.lev_money_trans_cancel*) #1

declare dso_local i32 @flush_binlog_forced(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
