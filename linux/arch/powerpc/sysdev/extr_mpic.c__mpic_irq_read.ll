; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic.c__mpic_irq_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic.c__mpic_irq_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpic = type { i32, i32, i32*, i32*, i32 }

@IRQ_STRIDE = common dso_local global i32 0, align 4
@MPIC_VECPRI_ACTIVITY = common dso_local global i32 0, align 4
@MPIC_VECPRI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpic*, i32, i32)* @_mpic_irq_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mpic_irq_read(%struct.mpic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mpic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mpic* %0, %struct.mpic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.mpic*, %struct.mpic** %4, align 8
  %12 = getelementptr inbounds %struct.mpic, %struct.mpic* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = lshr i32 %10, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.mpic*, %struct.mpic** %4, align 8
  %17 = getelementptr inbounds %struct.mpic, %struct.mpic* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %15, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.mpic*, %struct.mpic** %4, align 8
  %21 = getelementptr inbounds %struct.mpic, %struct.mpic* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mpic*, %struct.mpic** %4, align 8
  %24 = getelementptr inbounds %struct.mpic, %struct.mpic* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @IRQ_STRIDE, align 4
  %32 = call i32 @MPIC_INFO(i32 %31)
  %33 = mul i32 %30, %32
  %34 = add i32 %29, %33
  %35 = call i32 @_mpic_read(i32 %22, i32* %28, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  ret i32 %36
}

declare dso_local i32 @_mpic_read(i32, i32*, i32) #1

declare dso_local i32 @MPIC_INFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
