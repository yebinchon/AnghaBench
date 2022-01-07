; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_cancel_transaction.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_cancel_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_money_trans_cancel = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i32, i64, i64 }

@trs_long_locked = common dso_local global i64 0, align 8
@trs_declared_locked = common dso_local global i64 0, align 8
@trs_declared = common dso_local global i64 0, align 8
@now = common dso_local global i64 0, align 8
@trs_cancelled = common dso_local global i64 0, align 8
@expired_long_transactions = common dso_local global i32 0, align 4
@cancelled_long_transactions = common dso_local global i32 0, align 4
@cancelled_transactions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_money_trans_cancel*)* @cancel_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cancel_transaction(%struct.lev_money_trans_cancel* %0) #0 {
  %2 = alloca %struct.lev_money_trans_cancel*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.lev_money_trans_cancel* %0, %struct.lev_money_trans_cancel** %2, align 8
  %4 = load %struct.lev_money_trans_cancel*, %struct.lev_money_trans_cancel** %2, align 8
  %5 = getelementptr inbounds %struct.lev_money_trans_cancel, %struct.lev_money_trans_cancel* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = call %struct.TYPE_7__* @get_transaction(i64 %6)
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.lev_money_trans_cancel*, %struct.lev_money_trans_cancel** %2, align 8
  %9 = getelementptr inbounds %struct.lev_money_trans_cancel, %struct.lev_money_trans_cancel* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br label %15

15:                                               ; preds = %12, %1
  %16 = phi i1 [ false, %1 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @trs_long_locked, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %15
  %25 = load %struct.lev_money_trans_cancel*, %struct.lev_money_trans_cancel** %2, align 8
  %26 = getelementptr inbounds %struct.lev_money_trans_cancel, %struct.lev_money_trans_cancel* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.lev_money_trans_cancel*, %struct.lev_money_trans_cancel** %2, align 8
  %31 = getelementptr inbounds %struct.lev_money_trans_cancel, %struct.lev_money_trans_cancel* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %32, -3
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.lev_money_trans_cancel*, %struct.lev_money_trans_cancel** %2, align 8
  %36 = getelementptr inbounds %struct.lev_money_trans_cancel, %struct.lev_money_trans_cancel* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call %struct.TYPE_7__* @get_temp_transaction(i32 %38)
  %40 = icmp ne %struct.TYPE_7__* %39, null
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %34, %29, %24
  %43 = phi i1 [ false, %29 ], [ false, %24 ], [ %41, %34 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %50, %42
  %56 = phi i1 [ false, %42 ], [ %54, %50 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = call i32 @remove_from_lock_heap(%struct.TYPE_7__* %59)
  %61 = load %struct.lev_money_trans_cancel*, %struct.lev_money_trans_cancel** %2, align 8
  %62 = getelementptr inbounds %struct.lev_money_trans_cancel, %struct.lev_money_trans_cancel* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* @trs_declared_locked, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %125

70:                                               ; preds = %15
  %71 = load %struct.lev_money_trans_cancel*, %struct.lev_money_trans_cancel** %2, align 8
  %72 = getelementptr inbounds %struct.lev_money_trans_cancel, %struct.lev_money_trans_cancel* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = load %struct.lev_money_trans_cancel*, %struct.lev_money_trans_cancel** %2, align 8
  %80 = getelementptr inbounds %struct.lev_money_trans_cancel, %struct.lev_money_trans_cancel* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br label %83

83:                                               ; preds = %78, %70
  %84 = phi i1 [ false, %70 ], [ %82, %78 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = load %struct.lev_money_trans_cancel*, %struct.lev_money_trans_cancel** %2, align 8
  %89 = getelementptr inbounds %struct.lev_money_trans_cancel, %struct.lev_money_trans_cancel* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call %struct.TYPE_7__* @get_temp_transaction(i32 %91)
  %93 = icmp eq %struct.TYPE_7__* %87, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @trs_declared, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %83
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @trs_declared_locked, align 8
  %106 = icmp eq i64 %104, %105
  br label %107

107:                                              ; preds = %101, %83
  %108 = phi i1 [ true, %83 ], [ %106, %101 ]
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %107
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  %120 = xor i1 %119, true
  br label %121

121:                                              ; preds = %115, %107
  %122 = phi i1 [ false, %107 ], [ %120, %115 ]
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  br label %125

125:                                              ; preds = %121, %55
  %126 = load i64, i64* @now, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = call i32 @unlock_transaction(%struct.TYPE_7__* %129)
  %131 = load i64, i64* @trs_cancelled, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load %struct.lev_money_trans_cancel*, %struct.lev_money_trans_cancel** %2, align 8
  %135 = getelementptr inbounds %struct.lev_money_trans_cancel, %struct.lev_money_trans_cancel* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %125
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %140 = call i32 @remove_temp_transaction(%struct.TYPE_7__* %139)
  br label %153

141:                                              ; preds = %125
  %142 = load %struct.lev_money_trans_cancel*, %struct.lev_money_trans_cancel** %2, align 8
  %143 = getelementptr inbounds %struct.lev_money_trans_cancel, %struct.lev_money_trans_cancel* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, -3
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load i32, i32* @expired_long_transactions, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* @expired_long_transactions, align 4
  br label %152

149:                                              ; preds = %141
  %150 = load i32, i32* @cancelled_long_transactions, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* @cancelled_long_transactions, align 4
  br label %152

152:                                              ; preds = %149, %146
  br label %153

153:                                              ; preds = %152, %138
  %154 = load i32, i32* @cancelled_transactions, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* @cancelled_transactions, align 4
  ret i32 1
}

declare dso_local %struct.TYPE_7__* @get_transaction(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @get_temp_transaction(i32) #1

declare dso_local i32 @remove_from_lock_heap(%struct.TYPE_7__*) #1

declare dso_local i32 @unlock_transaction(%struct.TYPE_7__*) #1

declare dso_local i32 @remove_temp_transaction(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
