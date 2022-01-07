; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_media5200.c_media5200_irq_cascade.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_media5200.c_media5200_irq_cascade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.irq_desc = type { i32, i32 }
%struct.irq_chip = type { i32 (i32*)*, i32 (i32*)*, i32 (i32*)* }

@media5200_irq = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MEDIA5200_IRQ_ENABLE = common dso_local global i64 0, align 8
@MEDIA5200_IRQ_STATUS = common dso_local global i64 0, align 8
@MEDIA5200_IRQ_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @media5200_irq_cascade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @media5200_irq_cascade(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %8 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %9 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %8)
  store %struct.irq_chip* %9, %struct.irq_chip** %3, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %11 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %10, i32 0, i32 0
  %12 = call i32 @raw_spin_lock(i32* %11)
  %13 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %14 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %13, i32 0, i32 2
  %15 = load i32 (i32*)*, i32 (i32*)** %14, align 8
  %16 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %17 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %16, i32 0, i32 1
  %18 = call i32 %15(i32* %17)
  %19 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %20 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %19, i32 0, i32 0
  %21 = call i32 @raw_spin_unlock(i32* %20)
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @media5200_irq, i32 0, i32 1), align 8
  %23 = load i64, i64* @MEDIA5200_IRQ_ENABLE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @in_be32(i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @media5200_irq, i32 0, i32 1), align 8
  %27 = load i64, i64* @MEDIA5200_IRQ_STATUS, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @in_be32(i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @MEDIA5200_IRQ_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = call i32 @ffs(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @media5200_irq, i32 0, i32 0), align 8
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @irq_linear_revmap(i32 %39, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @generic_handle_irq(i32 %43)
  br label %45

45:                                               ; preds = %38, %1
  %46 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %47 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %46, i32 0, i32 0
  %48 = call i32 @raw_spin_lock(i32* %47)
  %49 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %50 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %49, i32 0, i32 1
  %51 = load i32 (i32*)*, i32 (i32*)** %50, align 8
  %52 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %53 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %52, i32 0, i32 1
  %54 = call i32 %51(i32* %53)
  %55 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %56 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %55, i32 0, i32 1
  %57 = call i32 @irqd_irq_disabled(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %45
  %60 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %61 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %60, i32 0, i32 0
  %62 = load i32 (i32*)*, i32 (i32*)** %61, align 8
  %63 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %64 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %63, i32 0, i32 1
  %65 = call i32 %62(i32* %64)
  br label %66

66:                                               ; preds = %59, %45
  %67 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %68 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %67, i32 0, i32 0
  %69 = call i32 @raw_spin_unlock(i32* %68)
  ret void
}

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irqd_irq_disabled(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
