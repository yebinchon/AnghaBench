; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/atari/extr_ataints.c_atari_irq_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/atari/extr_ataints.c_atari_irq_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@IRQ_AUTO_4 = common dso_local global i32 0, align 4
@falcon_hblhandler = common dso_local global i32 0, align 4
@vectors = common dso_local global i32* null, align 8
@VEC_INT4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @atari_irq_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atari_irq_shutdown(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @atari_disable_irq(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @atari_turnoff_irq(i32 %9)
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = call i32 @m68k_irq_shutdown(%struct.irq_data* %11)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @IRQ_AUTO_4, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @falcon_hblhandler, align 4
  %18 = load i32*, i32** @vectors, align 8
  %19 = load i64, i64* @VEC_INT4, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @atari_disable_irq(i32) #1

declare dso_local i32 @atari_turnoff_irq(i32) #1

declare dso_local i32 @m68k_irq_shutdown(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
