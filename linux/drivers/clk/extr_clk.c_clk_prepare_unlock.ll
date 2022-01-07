; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_prepare_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_prepare_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prepare_owner = common dso_local global i32* null, align 8
@current = common dso_local global i32* null, align 8
@prepare_refcnt = common dso_local global i64 0, align 8
@prepare_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clk_prepare_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_prepare_unlock() #0 {
  %1 = load i32*, i32** @prepare_owner, align 8
  %2 = load i32*, i32** @current, align 8
  %3 = icmp ne i32* %1, %2
  %4 = zext i1 %3 to i32
  %5 = call i32 @WARN_ON_ONCE(i32 %4)
  %6 = load i64, i64* @prepare_refcnt, align 8
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON_ONCE(i32 %8)
  %10 = load i64, i64* @prepare_refcnt, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* @prepare_refcnt, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  br label %16

14:                                               ; preds = %0
  store i32* null, i32** @prepare_owner, align 8
  %15 = call i32 @mutex_unlock(i32* @prepare_lock)
  br label %16

16:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
