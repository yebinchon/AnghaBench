; ModuleID = '/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_dscr.c_dscr_rmii_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_dscr.c_dscr_rmii_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, %struct.rmii_reset_reg* }
%struct.rmii_reset_reg = type { i32, i64 }

@MAX_SOC_EMACS = common dso_local global i32 0, align 4
@dscr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dscr_rmii_reset(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rmii_reset_reg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MAX_SOC_EMACS, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %2
  br label %60

15:                                               ; preds = %10
  %16 = load %struct.rmii_reset_reg*, %struct.rmii_reset_reg** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dscr, i32 0, i32 2), align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.rmii_reset_reg, %struct.rmii_reset_reg* %16, i64 %18
  store %struct.rmii_reset_reg* %19, %struct.rmii_reset_reg** %5, align 8
  %20 = load %struct.rmii_reset_reg*, %struct.rmii_reset_reg** %5, align 8
  %21 = getelementptr inbounds %struct.rmii_reset_reg, %struct.rmii_reset_reg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %60

25:                                               ; preds = %15
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dscr, i32 0, i32 0), i64 %26)
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dscr, i32 0, i32 1), align 8
  %29 = load %struct.rmii_reset_reg*, %struct.rmii_reset_reg** %5, align 8
  %30 = getelementptr inbounds %struct.rmii_reset_reg, %struct.rmii_reset_reg* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = call i32 @soc_readl(i64 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %25
  %37 = load %struct.rmii_reset_reg*, %struct.rmii_reset_reg** %5, align 8
  %38 = getelementptr inbounds %struct.rmii_reset_reg, %struct.rmii_reset_reg* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.rmii_reset_reg*, %struct.rmii_reset_reg** %5, align 8
  %42 = getelementptr inbounds %struct.rmii_reset_reg, %struct.rmii_reset_reg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %40, %43
  %45 = call i32 @dscr_write(i64 %39, i32 %44)
  br label %57

46:                                               ; preds = %25
  %47 = load %struct.rmii_reset_reg*, %struct.rmii_reset_reg** %5, align 8
  %48 = getelementptr inbounds %struct.rmii_reset_reg, %struct.rmii_reset_reg* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.rmii_reset_reg*, %struct.rmii_reset_reg** %5, align 8
  %52 = getelementptr inbounds %struct.rmii_reset_reg, %struct.rmii_reset_reg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = xor i32 %53, -1
  %55 = and i32 %50, %54
  %56 = call i32 @dscr_write(i64 %49, i32 %55)
  br label %57

57:                                               ; preds = %46, %36
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dscr, i32 0, i32 0), i64 %58)
  br label %60

60:                                               ; preds = %57, %24, %14
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @soc_readl(i64) #1

declare dso_local i32 @dscr_write(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
