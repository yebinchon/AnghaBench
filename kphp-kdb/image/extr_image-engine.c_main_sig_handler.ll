; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_main_sig_handler.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_main_sig_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pending_signals = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@sigint_immediate_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@sigterm_immediate_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @main_sig_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @main_sig_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = zext i32 %3 to i64
  %5 = shl i64 1, %4
  %6 = load i64, i64* @pending_signals, align 8
  %7 = or i64 %6, %5
  store i64 %7, i64* @pending_signals, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @SIGINT, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @SIGINT, align 4
  %13 = load i32, i32* @sigint_immediate_handler, align 4
  %14 = call i32 @signal(i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @SIGTERM, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @SIGTERM, align 4
  %21 = load i32, i32* @sigterm_immediate_handler, align 4
  %22 = call i32 @signal(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
