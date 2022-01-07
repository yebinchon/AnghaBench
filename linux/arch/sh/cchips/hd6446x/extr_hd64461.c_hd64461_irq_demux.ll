; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/cchips/hd6446x/extr_hd64461.c_hd64461_irq_demux.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/cchips/hd6446x/extr_hd64461.c_hd64461_irq_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@HD64461_NIRR = common dso_local global i32 0, align 4
@HD64461_IRQBASE = common dso_local global i32 0, align 4
@HD64461_IRQ_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @hd64461_irq_demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hd64461_irq_demux(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %5 = load i32, i32* @HD64461_NIRR, align 4
  %6 = call zeroext i16 @__raw_readw(i32 %5)
  store i16 %6, i16* %3, align 2
  %7 = load i32, i32* @HD64461_IRQBASE, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @HD64461_IRQ_NUM, align 4
  %9 = shl i32 1, %8
  %10 = sub nsw i32 %9, 1
  %11 = load i16, i16* %3, align 2
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, %10
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %3, align 2
  br label %15

15:                                               ; preds = %27, %1
  %16 = load i16, i16* %3, align 2
  %17 = icmp ne i16 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i16, i16* %3, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %27

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @generic_handle_irq(i32 %25)
  br label %27

27:                                               ; preds = %24, %23
  %28 = load i16, i16* %3, align 2
  %29 = zext i16 %28 to i32
  %30 = ashr i32 %29, 1
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %3, align 2
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %15

34:                                               ; preds = %15
  ret void
}

declare dso_local zeroext i16 @__raw_readw(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
