; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_push_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_push_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i32* }
%struct.sk_buff = type { i32, i32*, i32* }

@SAR_FB_SIZE_0 = common dso_local global i32 0, align 4
@SAR_FB_SIZE_1 = common dso_local global i32 0, align 4
@SAR_FB_SIZE_2 = common dso_local global i32 0, align 4
@SAR_FB_SIZE_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*, %struct.sk_buff*, i32)* @push_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_rx_skb(%struct.idt77252_dev* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.idt77252_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i32 @skb_reset_tail_pointer(%struct.sk_buff* %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i32 @skb_reserve(%struct.sk_buff* %20, i32 16)
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %39 [
    i32 0, label %23
    i32 1, label %27
    i32 2, label %31
    i32 3, label %35
  ]

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = load i32, i32* @SAR_FB_SIZE_0, align 4
  %26 = call i32 @skb_put(%struct.sk_buff* %24, i32 %25)
  br label %40

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load i32, i32* @SAR_FB_SIZE_1, align 4
  %30 = call i32 @skb_put(%struct.sk_buff* %28, i32 %29)
  br label %40

31:                                               ; preds = %3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load i32, i32* @SAR_FB_SIZE_2, align 4
  %34 = call i32 @skb_put(%struct.sk_buff* %32, i32 %33)
  br label %40

35:                                               ; preds = %3
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = load i32, i32* @SAR_FB_SIZE_3, align 4
  %38 = call i32 @skb_put(%struct.sk_buff* %36, i32 %37)
  br label %40

39:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %88

40:                                               ; preds = %35, %31, %27, %23
  %41 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @idt77252_fbq_full(%struct.idt77252_dev* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %88

46:                                               ; preds = %40
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, -64
  %54 = sub nsw i32 %53, 64
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %49, i64 %55
  %57 = call i32 @memset(i32* %56, i32 0, i32 8)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = call i32 @IDT77252_PRV_POOL(%struct.sk_buff* %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call i32 @IDT77252_PRV_PADDR(%struct.sk_buff* %60)
  store i32 %61, i32* %10, align 4
  %62 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %63 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %62, i32 0, i32 0
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %68 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @writel(i32 %66, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %77 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @writel(i32 %75, i32 %82)
  %84 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %85 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %84, i32 0, i32 0
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %46, %45, %39
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @skb_reset_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @idt77252_fbq_full(%struct.idt77252_dev*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @IDT77252_PRV_POOL(%struct.sk_buff*) #1

declare dso_local i32 @IDT77252_PRV_PADDR(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
