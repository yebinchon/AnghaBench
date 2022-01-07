; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_tsunami.c_tsunami_pci_tbi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_tsunami.c_tsunami_pci_tbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.pci_controller = type { i64 }

@TSUNAMI_pchip1 = common dso_local global %struct.TYPE_8__* null, align 8
@TSUNAMI_pchip0 = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsunami_pci_tbi(%struct.pci_controller* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.pci_controller* %0, %struct.pci_controller** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %11 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TSUNAMI_pchip1, align 8
  br label %18

16:                                               ; preds = %3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TSUNAMI_pchip0, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi %struct.TYPE_8__* [ %15, %14 ], [ %17, %16 ]
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %7, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i64* %22, i64** %8, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = xor i32 %23, %24
  %26 = and i32 %25, -65536
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i64* %31, i64** %8, align 8
  br label %32

32:                                               ; preds = %28, %18
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, -65536
  %35 = lshr i32 %34, 12
  %36 = zext i32 %35 to i64
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64*, i64** %8, align 8
  store volatile i64 %37, i64* %38, align 8
  %39 = call i32 (...) @mb()
  %40 = load i64*, i64** %8, align 8
  %41 = load volatile i64, i64* %40, align 8
  ret void
}

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
