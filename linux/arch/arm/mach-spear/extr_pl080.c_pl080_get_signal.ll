; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-spear/extr_pl080.c_pl080_get_signal.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-spear/extr_pl080.c_pl080_get_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.pl08x_channel_data = type { i32, i32 }

@lock = common dso_local global i32 0, align 4
@signals = common dso_local global %struct.TYPE_2__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@DMA_CHN_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pl080_get_signal(%struct.pl08x_channel_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pl08x_channel_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.pl08x_channel_data* %0, %struct.pl08x_channel_data** %3, align 8
  %7 = load %struct.pl08x_channel_data*, %struct.pl08x_channel_data** %3, align 8
  %8 = getelementptr inbounds %struct.pl08x_channel_data, %struct.pl08x_channel_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @lock, i64 %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.pl08x_channel_data*, %struct.pl08x_channel_data** %3, align 8
  %27 = getelementptr inbounds %struct.pl08x_channel_data, %struct.pl08x_channel_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* @lock, i64 %31)
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %82

35:                                               ; preds = %19, %1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %63, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @DMA_CHN_CFG, align 4
  %45 = call i32 @readl(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = mul i32 %46, 2
  %48 = shl i32 3, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.pl08x_channel_data*, %struct.pl08x_channel_data** %3, align 8
  %53 = getelementptr inbounds %struct.pl08x_channel_data, %struct.pl08x_channel_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = mul i32 %55, 2
  %57 = shl i32 %54, %56
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @DMA_CHN_CFG, align 4
  %62 = call i32 @writel(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %43, %35
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load %struct.pl08x_channel_data*, %struct.pl08x_channel_data** %3, align 8
  %72 = getelementptr inbounds %struct.pl08x_channel_data, %struct.pl08x_channel_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals, align 8
  %75 = load i32, i32* %4, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %73, i32* %78, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* @lock, i64 %79)
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %63, %30
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
