; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-engine.c_sigterm_handler.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-engine.c_sigterm_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global_engine_status = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@pending_signals = common dso_local global i32 0, align 4
@quit_at = common dso_local global i64 0, align 8
@now = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sigterm_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigterm_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @global_engine_status, align 4
  %4 = icmp ne i32 %3, 1
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i32, i32* @SIGTERM, align 4
  %7 = shl i32 1, %6
  %8 = load i32, i32* @pending_signals, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* @pending_signals, align 4
  br label %19

10:                                               ; preds = %1
  store i32 2, i32* @global_engine_status, align 4
  %11 = load i64, i64* @quit_at, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* @now, align 8
  %15 = add nsw i64 %14, 3
  store i64 %15, i64* @quit_at, align 8
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* @SIGTERM, align 4
  %18 = call i32 @signal(i32 %17, void (i32)* @sigterm_handler)
  br label %19

19:                                               ; preds = %16, %5
  ret void
}

declare dso_local i32 @signal(i32, void (i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
