; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/82xx/extr_pq2ads-pci-pic.c_pq2ads_pci_irq_demux.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/82xx/extr_pq2ads-pci-pic.c_pq2ads_pci_irq_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.pq2ads_pci_pic = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @pq2ads_pci_irq_demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pq2ads_pci_irq_demux(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.pq2ads_pci_pic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = call %struct.pq2ads_pci_pic* @irq_desc_get_handler_data(%struct.irq_desc* %9)
  store %struct.pq2ads_pci_pic* %10, %struct.pq2ads_pci_pic** %3, align 8
  br label %11

11:                                               ; preds = %51, %1
  %12 = load %struct.pq2ads_pci_pic*, %struct.pq2ads_pci_pic** %3, align 8
  %13 = getelementptr inbounds %struct.pq2ads_pci_pic, %struct.pq2ads_pci_pic* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i32 @in_be32(i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.pq2ads_pci_pic*, %struct.pq2ads_pci_pic** %3, align 8
  %18 = getelementptr inbounds %struct.pq2ads_pci_pic, %struct.pq2ads_pci_pic* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @in_be32(i32* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %11
  br label %52

29:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, -2147483648
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.pq2ads_pci_pic*, %struct.pq2ads_pci_pic** %3, align 8
  %39 = getelementptr inbounds %struct.pq2ads_pci_pic, %struct.pq2ads_pci_pic* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @irq_linear_revmap(i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @generic_handle_irq(i32 %43)
  br label %45

45:                                               ; preds = %37, %33
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %30

51:                                               ; preds = %30
  br label %11

52:                                               ; preds = %28
  ret void
}

declare dso_local %struct.pq2ads_pci_pic* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
