; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/mac/extr_macboing.c_mac_quadra_start_bell.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/mac/extr_macboing.c_mac_quadra_start_bell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@mac_bell_duration = common dso_local global i32 0, align 4
@mac_bell_phase = common dso_local global i64 0, align 8
@mac_asc_samplespersec = common dso_local global i32 0, align 4
@mac_bell_phasepersample = common dso_local global i32 0, align 4
@mac_asc_regs = common dso_local global i32* null, align 8
@mac_quadra_ring_bell = common dso_local global i32 0, align 4
@mac_sound_timer = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @mac_quadra_start_bell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac_quadra_start_bell(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @mac_bell_duration, align 4
  %9 = icmp ugt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @mac_bell_duration, align 4
  %13 = add i32 %12, %11
  store i32 %13, i32* @mac_bell_duration, align 4
  br label %54

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* @mac_bell_duration, align 4
  store i64 0, i64* @mac_bell_phase, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = load i32, i32* @mac_asc_samplespersec, align 4
  %20 = zext i32 %19 to i64
  %21 = udiv i64 %18, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* @mac_bell_phasepersample, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @local_irq_save(i64 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** @mac_asc_regs, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2054
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** @mac_asc_regs, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2049
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %47

32:                                               ; preds = %14
  %33 = load i32*, i32** @mac_asc_regs, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2055
  store i32 0, i32* %34, align 4
  %35 = load i32*, i32** @mac_asc_regs, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2050
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** @mac_asc_regs, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2049
  store i32 1, i32* %38, align 4
  %39 = load i32*, i32** @mac_asc_regs, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2051
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, 128
  store i32 %42, i32* %40, align 4
  %43 = load i32*, i32** @mac_asc_regs, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2051
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 127
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %32, %14
  %48 = load i32, i32* @mac_quadra_ring_bell, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mac_sound_timer, i32 0, i32 1), align 8
  %49 = load i64, i64* @jiffies, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mac_sound_timer, i32 0, i32 0), align 8
  %51 = call i32 @add_timer(%struct.TYPE_3__* @mac_sound_timer)
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @local_irq_restore(i64 %52)
  br label %54

54:                                               ; preds = %47, %10
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
