; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_get_next_transaction_id.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_get_next_transaction_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@last_transaction_id = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_next_transaction_id() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @CLOCK_REALTIME, align 4
  %3 = call i64 @get_utime(i32 %2)
  %4 = mul nsw i64 4294967296, %3
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @last_transaction_id, align 8
  %7 = icmp sle i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = load i64, i64* @last_transaction_id, align 8
  %10 = call i32 (...) @lrand48()
  %11 = srem i32 %10, 239
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %1, align 8
  br label %15

15:                                               ; preds = %8, %0
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @get_transaction(i64 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %1, align 8
  store i64 %22, i64* @last_transaction_id, align 8
  ret i64 %22
}

declare dso_local i64 @get_utime(i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_transaction(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
