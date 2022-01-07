; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_em_sti.c_em_sti_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_em_sti.c_em_sti_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em_sti_priv = type { i32*, i32 }

@USER_CLOCKSOURCE = common dso_local global i64 0, align 8
@USER_CLOCKEVENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em_sti_priv*, i32)* @em_sti_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_sti_start(%struct.em_sti_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.em_sti_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.em_sti_priv* %0, %struct.em_sti_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %9 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %8, i32 0, i32 1
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @raw_spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %13 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @USER_CLOCKSOURCE, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %19 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @USER_CLOCKEVENT, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %17, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %29 = call i32 @em_sti_enable(%struct.em_sti_priv* %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %2
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %35 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %33, %30
  %41 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %42 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %41, i32 0, i32 1
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @raw_spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @em_sti_enable(%struct.em_sti_priv*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
