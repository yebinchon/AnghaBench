; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/amiga/extr_cia.c_cia_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/amiga/extr_cia.c_cia_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@IRQ_AMIGA_CIAB = common dso_local global i32 0, align 4
@ciab_base = common dso_local global i32 0, align 4
@CIA_ICR_SETCLR = common dso_local global i8 0, align 1
@IRQ_AMIGA_CIAA = common dso_local global i32 0, align 4
@ciaa_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @cia_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cia_irq_enable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @IRQ_AMIGA_CIAB, align 4
  %10 = icmp uge i32 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @IRQ_AMIGA_CIAB, align 4
  %14 = sub i32 %12, %13
  %15 = shl i32 1, %14
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %4, align 1
  %17 = load i8, i8* %4, align 1
  %18 = call i32 @cia_set_irq(i32* @ciab_base, i8 zeroext %17)
  %19 = load i8, i8* @CIA_ICR_SETCLR, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* %4, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %20, %22
  %24 = trunc i32 %23 to i8
  %25 = call i32 @cia_able_irq(i32* @ciab_base, i8 zeroext %24)
  br label %41

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @IRQ_AMIGA_CIAA, align 4
  %29 = sub i32 %27, %28
  %30 = shl i32 1, %29
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %4, align 1
  %32 = load i8, i8* %4, align 1
  %33 = call i32 @cia_set_irq(i32* @ciaa_base, i8 zeroext %32)
  %34 = load i8, i8* @CIA_ICR_SETCLR, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* %4, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %35, %37
  %39 = trunc i32 %38 to i8
  %40 = call i32 @cia_able_irq(i32* @ciaa_base, i8 zeroext %39)
  br label %41

41:                                               ; preds = %26, %11
  ret void
}

declare dso_local i32 @cia_set_irq(i32*, i8 zeroext) #1

declare dso_local i32 @cia_able_irq(i32*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
