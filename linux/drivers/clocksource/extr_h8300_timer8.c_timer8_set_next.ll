; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_timer8.c_timer8_set_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_timer8.c_timer8_set_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer8_priv = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"delta out of range\0A\00", align 1
@CMIEA = common dso_local global i32 0, align 4
@_8TCR = common dso_local global i64 0, align 8
@TCORA = common dso_local global i64 0, align 8
@_8TCNT = common dso_local global i64 0, align 8
@CMFA = common dso_local global i32 0, align 4
@_8TCSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer8_priv*, i64)* @timer8_set_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer8_set_next(%struct.timer8_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.timer8_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.timer8_priv* %0, %struct.timer8_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp uge i64 %5, 65536
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 @pr_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %2
  %10 = load i32, i32* @CMIEA, align 4
  %11 = load %struct.timer8_priv*, %struct.timer8_priv** %3, align 8
  %12 = getelementptr inbounds %struct.timer8_priv, %struct.timer8_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @_8TCR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @bclr(i32 %10, i64 %15)
  %17 = load i64, i64* %4, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %struct.timer8_priv*, %struct.timer8_priv** %3, align 8
  %20 = getelementptr inbounds %struct.timer8_priv, %struct.timer8_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TCORA, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @iowrite16be(i32 %18, i64 %23)
  %25 = load %struct.timer8_priv*, %struct.timer8_priv** %3, align 8
  %26 = getelementptr inbounds %struct.timer8_priv, %struct.timer8_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @_8TCNT, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @iowrite16be(i32 0, i64 %29)
  %31 = load i32, i32* @CMFA, align 4
  %32 = load %struct.timer8_priv*, %struct.timer8_priv** %3, align 8
  %33 = getelementptr inbounds %struct.timer8_priv, %struct.timer8_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @_8TCSR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @bclr(i32 %31, i64 %36)
  %38 = load i32, i32* @CMIEA, align 4
  %39 = load %struct.timer8_priv*, %struct.timer8_priv** %3, align 8
  %40 = getelementptr inbounds %struct.timer8_priv, %struct.timer8_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @_8TCR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @bset(i32 %38, i64 %43)
  ret void
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @bclr(i32, i64) #1

declare dso_local i32 @iowrite16be(i32, i64) #1

declare dso_local i32 @bset(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
