; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_calc_max_budget.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_calc_max_budget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i32, i64 }

@USEC_PER_MSEC = common dso_local global i64 0, align 8
@BFQ_RATE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bfq_data*)* @bfq_calc_max_budget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bfq_calc_max_budget(%struct.bfq_data* %0) #0 {
  %2 = alloca %struct.bfq_data*, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %2, align 8
  %3 = load %struct.bfq_data*, %struct.bfq_data** %2, align 8
  %4 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @USEC_PER_MSEC, align 8
  %7 = mul i64 %5, %6
  %8 = load %struct.bfq_data*, %struct.bfq_data** %2, align 8
  %9 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @jiffies_to_msecs(i32 %10)
  %12 = mul i64 %7, %11
  %13 = load i64, i64* @BFQ_RATE_SHIFT, align 8
  %14 = lshr i64 %12, %13
  ret i64 %14
}

declare dso_local i64 @jiffies_to_msecs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
