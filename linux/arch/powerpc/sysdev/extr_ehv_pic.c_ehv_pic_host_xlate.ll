; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_ehv_pic.c_ehv_pic_host_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_ehv_pic.c_ehv_pic_host_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.device_node = type { i32 }

@ehv_pic_host_xlate.map_of_senses_to_linux_irqtype = internal global [4 x i8] c"\83\82\80\81", align 1
@hwirq_intspec = common dso_local global i64* null, align 8
@IRQ_TYPE_MPIC_DIRECT = common dso_local global i64 0, align 8
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.device_node*, i64*, i32, i64*, i32*)* @ehv_pic_host_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehv_pic_host_xlate(%struct.irq_domain* %0, %struct.device_node* %1, i64* %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca %struct.irq_domain*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load i64*, i64** %9, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %11, align 8
  store i64 %15, i64* %16, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %38

19:                                               ; preds = %6
  %20 = load i64*, i64** %9, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** @hwirq_intspec, align 8
  %24 = load i64*, i64** %9, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  store i64 %22, i64* %27, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IRQ_TYPE_MPIC_DIRECT, align 8
  %32 = xor i64 %31, -1
  %33 = and i64 %30, %32
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* @ehv_pic_host_xlate.map_of_senses_to_linux_irqtype, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i32*, i32** %12, align 8
  store i32 %36, i32* %37, align 4
  br label %41

38:                                               ; preds = %6
  %39 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %40 = load i32*, i32** %12, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %19
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
