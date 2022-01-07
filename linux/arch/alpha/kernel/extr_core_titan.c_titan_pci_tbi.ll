; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_titan.c_titan_pci_tbi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_titan.c_titan_pci_tbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.pci_controller = type { i32 }

@TITAN_pachip1 = common dso_local global %struct.TYPE_14__* null, align 8
@TITAN_pachip0 = common dso_local global %struct.TYPE_14__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @titan_pci_tbi(%struct.pci_controller* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.pci_controller* %0, %struct.pci_controller** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %12 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TITAN_pachip1, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TITAN_pachip0, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi %struct.TYPE_14__* [ %17, %16 ], [ %19, %18 ]
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %7, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %8, align 8
  %24 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %25 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 2
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %8, align 8
  br label %32

32:                                               ; preds = %29, %20
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i64* %37, i64** %9, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = xor i32 %38, %39
  %41 = and i32 %40, -65536
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i64* %48, i64** %9, align 8
  br label %49

49:                                               ; preds = %43, %32
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, -65536
  %52 = lshr i32 %51, 12
  %53 = zext i32 %52 to i64
  store i64 %53, i64* %10, align 8
  %54 = call i32 (...) @wmb()
  %55 = load i64, i64* %10, align 8
  %56 = load i64*, i64** %9, align 8
  store volatile i64 %55, i64* %56, align 8
  %57 = call i32 (...) @mb()
  %58 = load i64*, i64** %9, align 8
  %59 = load volatile i64, i64* %58, align 8
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
