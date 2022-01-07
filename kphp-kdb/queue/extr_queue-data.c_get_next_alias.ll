; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_get_next_alias.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_get_next_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_next_alias.st = internal global i32 -1, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@engine_n = common dso_local global i32 0, align 4
@engine_id = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_next_alias() #0 {
  %1 = load i32, i32* @get_next_alias.st, align 4
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %20

3:                                                ; preds = %0
  %4 = load i32, i32* @CLOCK_REALTIME, align 4
  %5 = call i64 @get_utime(i32 %4)
  %6 = trunc i64 %5 to i32
  %7 = add nsw i32 %6, 1001
  %8 = mul nsw i32 %7, 1000000
  store i32 %8, i32* @get_next_alias.st, align 4
  %9 = load i32, i32* @engine_n, align 4
  %10 = load i32, i32* @get_next_alias.st, align 4
  %11 = sdiv i32 %10, %9
  store i32 %11, i32* @get_next_alias.st, align 4
  %12 = load i32, i32* @engine_n, align 4
  %13 = load i32, i32* @get_next_alias.st, align 4
  %14 = mul nsw i32 %13, %12
  store i32 %14, i32* @get_next_alias.st, align 4
  %15 = load i64, i64* @engine_id, align 8
  %16 = load i32, i32* @get_next_alias.st, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* @get_next_alias.st, align 4
  br label %20

20:                                               ; preds = %3, %0
  %21 = load i32, i32* @engine_n, align 4
  %22 = load i32, i32* @get_next_alias.st, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* @get_next_alias.st, align 4
  %24 = load i32, i32* @get_next_alias.st, align 4
  %25 = icmp sgt i32 %24, 1000000000
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* @get_next_alias.st, align 4
  ret i32 %28
}

declare dso_local i64 @get_utime(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
