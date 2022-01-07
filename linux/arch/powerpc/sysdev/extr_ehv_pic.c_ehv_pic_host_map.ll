; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_ehv_pic.c_ehv_pic_host_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_ehv_pic.c_ehv_pic_host_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip = type { i32 }
%struct.irq_domain = type { %struct.ehv_pic* }
%struct.ehv_pic = type { %struct.irq_chip }

@mpic_percpu_base_vaddr = common dso_local global i64 0, align 8
@hwirq_intspec = common dso_local global i32* null, align 8
@IRQ_TYPE_MPIC_DIRECT = common dso_local global i32 0, align 4
@ehv_pic_direct_eoi_irq_chip = common dso_local global %struct.irq_chip zeroinitializer, align 4
@handle_fasteoi_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i64)* @ehv_pic_host_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehv_pic_host_map(%struct.irq_domain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ehv_pic*, align 8
  %8 = alloca %struct.irq_chip*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %10 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %9, i32 0, i32 0
  %11 = load %struct.ehv_pic*, %struct.ehv_pic** %10, align 8
  store %struct.ehv_pic* %11, %struct.ehv_pic** %7, align 8
  %12 = load %struct.ehv_pic*, %struct.ehv_pic** %7, align 8
  %13 = getelementptr inbounds %struct.ehv_pic, %struct.ehv_pic* %12, i32 0, i32 0
  store %struct.irq_chip* %13, %struct.irq_chip** %8, align 8
  %14 = load i64, i64* @mpic_percpu_base_vaddr, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load i32*, i32** @hwirq_intspec, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IRQ_TYPE_MPIC_DIRECT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store %struct.irq_chip* @ehv_pic_direct_eoi_irq_chip, %struct.irq_chip** %8, align 8
  br label %25

25:                                               ; preds = %24, %16
  br label %26

26:                                               ; preds = %25, %3
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %29 = call i32 @irq_set_chip_data(i32 %27, %struct.irq_chip* %28)
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %32 = load i32, i32* @handle_fasteoi_irq, align 4
  %33 = call i32 @irq_set_chip_and_handler(i32 %30, %struct.irq_chip* %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %36 = call i32 @irq_set_irq_type(i32 %34, i32 %35)
  ret i32 0
}

declare dso_local i32 @irq_set_chip_data(i32, %struct.irq_chip*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, %struct.irq_chip*, i32) #1

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
