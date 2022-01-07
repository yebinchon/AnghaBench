; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_transaction_lru_gc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_transaction_lru_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@lru_size = common dso_local global i64 0, align 8
@tot_memory_transactions = common dso_local global i64 0, align 8
@max_lru_size = common dso_local global i64 0, align 8
@lru_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @transaction_lru_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transaction_lru_gc() #0 {
  %1 = alloca i32*, align 8
  %2 = load i64, i64* @lru_size, align 8
  %3 = load i64, i64* @tot_memory_transactions, align 8
  %4 = icmp eq i64 %2, %3
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  br label %7

7:                                                ; preds = %11, %0
  %8 = load i64, i64* @lru_size, align 8
  %9 = load i64, i64* @max_lru_size, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lru_list, i32 0, i32 0), align 8
  store i32* %12, i32** %1, align 8
  %13 = load i32*, i32** %1, align 8
  %14 = ptrtoint i32* %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @transaction_free(i32* %16)
  br label %7

18:                                               ; preds = %7
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @transaction_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
