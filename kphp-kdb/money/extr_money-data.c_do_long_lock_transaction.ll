; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_do_long_lock_transaction.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_do_long_lock_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.lev_money_trans_lock = type { i32, i64, i32, i32 }

@MIN_LOCK_SECONDS = common dso_local global i32 0, align 4
@MAX_LOCK_SECONDS = common dso_local global i32 0, align 4
@trs_temp = common dso_local global i64 0, align 8
@trs_temp_locked = common dso_local global i64 0, align 8
@LEV_MONEY_TRANS_LOCK = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_long_lock_transaction(i32 %0, i32 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lev_money_trans_lock*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.TYPE_7__* @get_temp_transaction(i32 %13)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %10, align 8
  %15 = load i64*, i64** %8, align 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @MIN_LOCK_SECONDS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MAX_LOCK_SECONDS, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18, %4
  store i32 0, i32* %5, align 4
  br label %112

27:                                               ; preds = %22
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = call i32 @check_transaction(%struct.TYPE_7__* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %112

34:                                               ; preds = %27
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @trs_temp, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @trs_temp_locked, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -1, i32* %5, align 4
  br label %112

47:                                               ; preds = %40, %34
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = call i64 (...) @get_next_transaction_id()
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %58 = call i32 @do_declare_transaction(%struct.TYPE_7__* %57)
  %59 = icmp eq i32 %58, 1
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32, i32* @LEV_MONEY_TRANS_LOCK, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call %struct.lev_money_trans_lock* @alloc_log_event(i32 %62, i32 24, i32 %63)
  store %struct.lev_money_trans_lock* %64, %struct.lev_money_trans_lock** %12, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.lev_money_trans_lock*, %struct.lev_money_trans_lock** %12, align 8
  %69 = getelementptr inbounds %struct.lev_money_trans_lock, %struct.lev_money_trans_lock* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.lev_money_trans_lock*, %struct.lev_money_trans_lock** %12, align 8
  %74 = getelementptr inbounds %struct.lev_money_trans_lock, %struct.lev_money_trans_lock* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.lev_money_trans_lock*, %struct.lev_money_trans_lock** %12, align 8
  %77 = getelementptr inbounds %struct.lev_money_trans_lock, %struct.lev_money_trans_lock* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = call i32 (...) @lrand48()
  %79 = load i32, i32* @now, align 4
  %80 = xor i32 %78, %79
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = xor i32 %80, %83
  %85 = and i32 %84, 2147483647
  %86 = load %struct.lev_money_trans_lock*, %struct.lev_money_trans_lock** %12, align 8
  %87 = getelementptr inbounds %struct.lev_money_trans_lock, %struct.lev_money_trans_lock* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.lev_money_trans_lock*, %struct.lev_money_trans_lock** %12, align 8
  %89 = getelementptr inbounds %struct.lev_money_trans_lock, %struct.lev_money_trans_lock* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %56
  %93 = load %struct.lev_money_trans_lock*, %struct.lev_money_trans_lock** %12, align 8
  %94 = getelementptr inbounds %struct.lev_money_trans_lock, %struct.lev_money_trans_lock* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %92, %56
  %98 = load %struct.lev_money_trans_lock*, %struct.lev_money_trans_lock** %12, align 8
  %99 = call i32 @long_lock_transaction(%struct.lev_money_trans_lock* %98)
  %100 = icmp eq i32 %99, 1
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %104 = call i32 @add_temp_transaction(%struct.TYPE_7__* %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64*, i64** %8, align 8
  store i64 %107, i64* %108, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @compute_lock_codes(%struct.TYPE_7__* %109, i32* %110)
  store i32 2, i32* %5, align 4
  br label %112

112:                                              ; preds = %97, %46, %32, %26
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_7__* @get_temp_transaction(i32) #1

declare dso_local i32 @check_transaction(%struct.TYPE_7__*) #1

declare dso_local i64 @get_next_transaction_id(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @do_declare_transaction(%struct.TYPE_7__*) #1

declare dso_local %struct.lev_money_trans_lock* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @long_lock_transaction(%struct.lev_money_trans_lock*) #1

declare dso_local i32 @add_temp_transaction(%struct.TYPE_7__*) #1

declare dso_local i32 @compute_lock_codes(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
