; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c___xive_irq_bitmap_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c___xive_irq_bitmap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_irq_bitmap = type { i32, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xive_irq_bitmap*)* @__xive_irq_bitmap_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xive_irq_bitmap_alloc(%struct.xive_irq_bitmap* %0) #0 {
  %2 = alloca %struct.xive_irq_bitmap*, align 8
  %3 = alloca i32, align 4
  store %struct.xive_irq_bitmap* %0, %struct.xive_irq_bitmap** %2, align 8
  %4 = load %struct.xive_irq_bitmap*, %struct.xive_irq_bitmap** %2, align 8
  %5 = getelementptr inbounds %struct.xive_irq_bitmap, %struct.xive_irq_bitmap* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.xive_irq_bitmap*, %struct.xive_irq_bitmap** %2, align 8
  %8 = getelementptr inbounds %struct.xive_irq_bitmap, %struct.xive_irq_bitmap* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @find_first_zero_bit(i32 %6, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.xive_irq_bitmap*, %struct.xive_irq_bitmap** %2, align 8
  %13 = getelementptr inbounds %struct.xive_irq_bitmap, %struct.xive_irq_bitmap* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.xive_irq_bitmap*, %struct.xive_irq_bitmap** %2, align 8
  %19 = getelementptr inbounds %struct.xive_irq_bitmap, %struct.xive_irq_bitmap* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @set_bit(i32 %17, i32 %20)
  %22 = load %struct.xive_irq_bitmap*, %struct.xive_irq_bitmap** %2, align 8
  %23 = getelementptr inbounds %struct.xive_irq_bitmap, %struct.xive_irq_bitmap* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %16
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
