; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.h_uncore_pci_event_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.h_uncore_pci_event_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@UNCORE_BOX_FLAG_CTL_OFFS8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_box*, i32)* @uncore_pci_event_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uncore_pci_event_ctl(%struct.intel_uncore_box* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_uncore_box*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @UNCORE_BOX_FLAG_CTL_OFFS8, align 4
  %7 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %8 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %7, i32 0, i32 1
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 %12, 8
  %14 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %15 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %13, %20
  store i32 %21, i32* %3, align 4
  br label %33

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %23, 4
  %25 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %26 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %24, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %22, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
