; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip32/extr_ip32-irq.c_disable_maceisa_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip32/extr_ip32-irq.c_disable_maceisa_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.irq_data = type { i32 }

@MACEISA_AUDIO_SW_IRQ = common dso_local global i32 0, align 4
@maceisa_mask = common dso_local global i32 0, align 4
@MACEISA_AUDIO_INT = common dso_local global i32 0, align 4
@MACE_AUDIO_INT = common dso_local global i32 0, align 4
@MACEISA_MISC_INT = common dso_local global i32 0, align 4
@MACE_MISC_INT = common dso_local global i32 0, align 4
@MACEISA_SUPERIO_INT = common dso_local global i32 0, align 4
@MACE_SUPERIO_INT = common dso_local global i32 0, align 4
@crime_mask = common dso_local global i32 0, align 4
@crime = common dso_local global %struct.TYPE_8__* null, align 8
@mace = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @disable_maceisa_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_maceisa_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MACEISA_AUDIO_SW_IRQ, align 4
  %8 = sub nsw i32 %6, %7
  %9 = shl i32 1, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* @maceisa_mask, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* @maceisa_mask, align 4
  %13 = load i32, i32* @maceisa_mask, align 4
  %14 = load i32, i32* @MACEISA_AUDIO_INT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @MACE_AUDIO_INT, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* @maceisa_mask, align 4
  %23 = load i32, i32* @MACEISA_MISC_INT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @MACE_MISC_INT, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* @maceisa_mask, align 4
  %32 = load i32, i32* @MACEISA_SUPERIO_INT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @MACE_SUPERIO_INT, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %3, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* @crime_mask, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* @crime_mask, align 4
  %44 = load i32, i32* @crime_mask, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @crime, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = call i32 (...) @flush_crime_bus()
  %48 = load i32, i32* @maceisa_mask, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mace, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  %53 = call i32 (...) @flush_mace_bus()
  ret void
}

declare dso_local i32 @flush_crime_bus(...) #1

declare dso_local i32 @flush_mace_bus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
