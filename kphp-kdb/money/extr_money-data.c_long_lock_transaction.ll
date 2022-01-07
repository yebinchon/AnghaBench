; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_long_lock_transaction.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_long_lock_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_money_trans_lock = type { i64, i64, i32, i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i32, i64, i32 }

@trs_declared = common dso_local global i64 0, align 8
@trs_declared_locked = common dso_local global i64 0, align 8
@MIN_LOCK_SECONDS = common dso_local global i64 0, align 8
@MAX_LOCK_SECONDS = common dso_local global i64 0, align 8
@trs_long_locked = common dso_local global i64 0, align 8
@now = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_money_trans_lock*)* @long_lock_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @long_lock_transaction(%struct.lev_money_trans_lock* %0) #0 {
  %2 = alloca %struct.lev_money_trans_lock*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.lev_money_trans_lock* %0, %struct.lev_money_trans_lock** %2, align 8
  %4 = load %struct.lev_money_trans_lock*, %struct.lev_money_trans_lock** %2, align 8
  %5 = getelementptr inbounds %struct.lev_money_trans_lock, %struct.lev_money_trans_lock* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = call %struct.TYPE_8__* @get_transaction(i64 %6)
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.lev_money_trans_lock*, %struct.lev_money_trans_lock** %2, align 8
  %9 = getelementptr inbounds %struct.lev_money_trans_lock, %struct.lev_money_trans_lock* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br label %15

15:                                               ; preds = %12, %1
  %16 = phi i1 [ false, %1 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.lev_money_trans_lock*, %struct.lev_money_trans_lock** %2, align 8
  %20 = getelementptr inbounds %struct.lev_money_trans_lock, %struct.lev_money_trans_lock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %15
  %27 = load %struct.lev_money_trans_lock*, %struct.lev_money_trans_lock** %2, align 8
  %28 = getelementptr inbounds %struct.lev_money_trans_lock, %struct.lev_money_trans_lock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = load %struct.lev_money_trans_lock*, %struct.lev_money_trans_lock** %2, align 8
  %34 = getelementptr inbounds %struct.lev_money_trans_lock, %struct.lev_money_trans_lock* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call %struct.TYPE_8__* @get_temp_transaction(i64 %35)
  %37 = icmp eq %struct.TYPE_8__* %32, %36
  br label %38

38:                                               ; preds = %31, %26, %15
  %39 = phi i1 [ false, %26 ], [ false, %15 ], [ %37, %31 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @trs_declared, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %38
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @trs_declared_locked, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %47, %38
  %54 = phi i1 [ true, %38 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %53
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %61, %53
  %68 = phi i1 [ false, %53 ], [ %66, %61 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.lev_money_trans_lock*, %struct.lev_money_trans_lock** %2, align 8
  %72 = getelementptr inbounds %struct.lev_money_trans_lock, %struct.lev_money_trans_lock* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @MIN_LOCK_SECONDS, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %67
  %77 = load %struct.lev_money_trans_lock*, %struct.lev_money_trans_lock** %2, align 8
  %78 = getelementptr inbounds %struct.lev_money_trans_lock, %struct.lev_money_trans_lock* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @MAX_LOCK_SECONDS, align 8
  %81 = icmp sle i64 %79, %80
  br label %82

82:                                               ; preds = %76, %67
  %83 = phi i1 [ false, %67 ], [ %81, %76 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = call i64 @check_transaction(%struct.TYPE_8__* %86)
  %88 = icmp sge i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = call i32 @lock_transaction(%struct.TYPE_8__* %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @trs_declared_locked, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i64, i64* @trs_long_locked, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = call i32 @remove_temp_transaction(%struct.TYPE_8__* %103)
  %105 = load i64, i64* @now, align 8
  %106 = load %struct.lev_money_trans_lock*, %struct.lev_money_trans_lock** %2, align 8
  %107 = getelementptr inbounds %struct.lev_money_trans_lock, %struct.lev_money_trans_lock* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 4
  store i64 0, i64* %113, align 8
  %114 = load %struct.lev_money_trans_lock*, %struct.lev_money_trans_lock** %2, align 8
  %115 = getelementptr inbounds %struct.lev_money_trans_lock, %struct.lev_money_trans_lock* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = call i32 @put_into_lock_heap(%struct.TYPE_8__* %119)
  ret i32 1
}

declare dso_local %struct.TYPE_8__* @get_transaction(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_8__* @get_temp_transaction(i64) #1

declare dso_local i64 @check_transaction(%struct.TYPE_8__*) #1

declare dso_local i32 @lock_transaction(%struct.TYPE_8__*) #1

declare dso_local i32 @remove_temp_transaction(%struct.TYPE_8__*) #1

declare dso_local i32 @put_into_lock_heap(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
