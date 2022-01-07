; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_titan.c_titan_agp_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_titan.c_titan_agp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_24__ }
%struct.pci_controller = type { i32, i32, %struct.pci_controller* }
%struct.TYPE_25__ = type { %struct.TYPE_22__, %struct.TYPE_19__, %struct.TYPE_17__, i32*, %struct.TYPE_24__*, %struct.pci_controller* }
%struct.TYPE_22__ = type { %struct.TYPE_21__, i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32*, i64, i64 }
%union.TPAchipPCTL = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32 }

@TITAN_pachip0 = common dso_local global %struct.TYPE_16__* null, align 8
@titan_pchip1_present = common dso_local global i64 0, align 8
@TITAN_pachip1 = common dso_local global %struct.TYPE_15__* null, align 8
@hose_head = common dso_local global %struct.pci_controller* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@titan_agp_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_25__* @titan_agp_info() #0 {
  %1 = alloca %struct.TYPE_25__*, align 8
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca %struct.pci_controller*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.TPAchipPCTL, align 4
  store i32 -1, i32* %5, align 4
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** @TITAN_pachip0, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  store %struct.TYPE_24__* %8, %struct.TYPE_24__** %4, align 8
  %9 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %10 = call i64 @titan_query_agp(%struct.TYPE_24__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 2, i32* %5, align 4
  br label %13

13:                                               ; preds = %12, %0
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i64, i64* @titan_pchip1_present, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TITAN_pachip1, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store %struct.TYPE_24__* %21, %struct.TYPE_24__** %4, align 8
  %22 = call i64 @titan_query_agp(%struct.TYPE_24__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 3, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %19, %16, %13
  %26 = load %struct.pci_controller*, %struct.pci_controller** @hose_head, align 8
  store %struct.pci_controller* %26, %struct.pci_controller** %3, align 8
  br label %27

27:                                               ; preds = %38, %25
  %28 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %29 = icmp ne %struct.pci_controller* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %32 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %42

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %40 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %39, i32 0, i32 2
  %41 = load %struct.pci_controller*, %struct.pci_controller** %40, align 8
  store %struct.pci_controller* %41, %struct.pci_controller** %3, align 8
  br label %27

42:                                               ; preds = %36, %27
  %43 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %44 = icmp ne %struct.pci_controller* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %47 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45, %42
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %1, align 8
  br label %125

51:                                               ; preds = %45
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.TYPE_25__* @kmalloc(i32 96, i32 %52)
  store %struct.TYPE_25__* %53, %struct.TYPE_25__** %2, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %55 = icmp ne %struct.TYPE_25__* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %1, align 8
  br label %125

57:                                               ; preds = %51
  %58 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 5
  store %struct.pci_controller* %58, %struct.pci_controller** %60, align 8
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 4
  store %struct.TYPE_24__* %61, %struct.TYPE_24__** %63, align 8
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 3
  store i32* @titan_agp_ops, i32** %65, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  store i32 3, i32* %81, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 2
  store i32 7, i32* %89, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = bitcast %union.TPAchipPCTL* %6 to i32*
  store i32 %93, i32* %94, align 4
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = bitcast %union.TPAchipPCTL* %6 to %struct.TYPE_23__*
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 1, %100
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  store i32 %101, i32* %105, align 8
  %106 = bitcast %union.TPAchipPCTL* %6 to %struct.TYPE_23__*
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 3
  store i32 %108, i32* %112, align 4
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  store i32 7, i32* %116, align 4
  %117 = bitcast %union.TPAchipPCTL* %6 to %struct.TYPE_23__*
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 2
  store i32 %119, i32* %123, align 8
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  store %struct.TYPE_25__* %124, %struct.TYPE_25__** %1, align 8
  br label %125

125:                                              ; preds = %57, %56, %50
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %1, align 8
  ret %struct.TYPE_25__* %126
}

declare dso_local i64 @titan_query_agp(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_25__* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
