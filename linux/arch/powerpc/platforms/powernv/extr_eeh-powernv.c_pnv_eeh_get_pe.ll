; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_eeh_get_pe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_eeh_get_pe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.eeh_pe*, i32*)* }
%struct.eeh_pe = type { i32, i32, i64, %struct.eeh_pe* }
%struct.pci_controller = type { %struct.pnv_phb* }
%struct.pnv_phb = type { i32 (%struct.pnv_phb*, i64)*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pnv_ioda_pe* }
%struct.pnv_ioda_pe = type { i32, i64, %struct.pnv_ioda_pe* }

@PNV_IODA_PE_SLAVE = common dso_local global i32 0, align 4
@PNV_IODA_PE_MASTER = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EEH_PE_ISOLATED = common dso_local global i32 0, align 4
@EEH_PE_PHB = common dso_local global i32 0, align 4
@eeh_ops = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_controller*, i64, %struct.eeh_pe**)* @pnv_eeh_get_pe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_eeh_get_pe(%struct.pci_controller* %0, i64 %1, %struct.eeh_pe** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_controller*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.eeh_pe**, align 8
  %8 = alloca %struct.pnv_phb*, align 8
  %9 = alloca %struct.pnv_ioda_pe*, align 8
  %10 = alloca %struct.eeh_pe*, align 8
  %11 = alloca i32, align 4
  store %struct.pci_controller* %0, %struct.pci_controller** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.eeh_pe** %2, %struct.eeh_pe*** %7, align 8
  %12 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %13 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %12, i32 0, i32 0
  %14 = load %struct.pnv_phb*, %struct.pnv_phb** %13, align 8
  store %struct.pnv_phb* %14, %struct.pnv_phb** %8, align 8
  %15 = load %struct.pnv_phb*, %struct.pnv_phb** %8, align 8
  %16 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %18, i64 %19
  store %struct.pnv_ioda_pe* %20, %struct.pnv_ioda_pe** %9, align 8
  %21 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %9, align 8
  %22 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PNV_IODA_PE_SLAVE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %3
  %28 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %9, align 8
  %29 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %28, i32 0, i32 2
  %30 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %29, align 8
  store %struct.pnv_ioda_pe* %30, %struct.pnv_ioda_pe** %9, align 8
  %31 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %9, align 8
  %32 = icmp ne %struct.pnv_ioda_pe* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %9, align 8
  %35 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PNV_IODA_PE_MASTER, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %33, %27
  %42 = phi i1 [ true, %27 ], [ %40, %33 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %9, align 8
  %46 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %41, %3
  %49 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call %struct.eeh_pe* @eeh_pe_get(%struct.pci_controller* %49, i64 %50, i32 0)
  store %struct.eeh_pe* %51, %struct.eeh_pe** %10, align 8
  %52 = load %struct.eeh_pe*, %struct.eeh_pe** %10, align 8
  %53 = icmp ne %struct.eeh_pe* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @EEXIST, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %129

57:                                               ; preds = %48
  %58 = load %struct.eeh_pe*, %struct.eeh_pe** %10, align 8
  %59 = load %struct.eeh_pe**, %struct.eeh_pe*** %7, align 8
  store %struct.eeh_pe* %58, %struct.eeh_pe** %59, align 8
  %60 = load %struct.eeh_pe*, %struct.eeh_pe** %10, align 8
  %61 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @EEH_PE_ISOLATED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %57
  %67 = load %struct.pnv_phb*, %struct.pnv_phb** %8, align 8
  %68 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %67, i32 0, i32 0
  %69 = load i32 (%struct.pnv_phb*, i64)*, i32 (%struct.pnv_phb*, i64)** %68, align 8
  %70 = load %struct.pnv_phb*, %struct.pnv_phb** %8, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 %69(%struct.pnv_phb* %70, i64 %71)
  br label %73

73:                                               ; preds = %66, %57
  %74 = load %struct.eeh_pe*, %struct.eeh_pe** %10, align 8
  %75 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %74, i32 0, i32 3
  %76 = load %struct.eeh_pe*, %struct.eeh_pe** %75, align 8
  store %struct.eeh_pe* %76, %struct.eeh_pe** %10, align 8
  br label %77

77:                                               ; preds = %124, %102, %73
  %78 = load %struct.eeh_pe*, %struct.eeh_pe** %10, align 8
  %79 = icmp ne %struct.eeh_pe* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.eeh_pe*, %struct.eeh_pe** %10, align 8
  %82 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @EEH_PE_PHB, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %80, %77
  %89 = phi i1 [ false, %77 ], [ %87, %80 ]
  br i1 %89, label %90, label %128

90:                                               ; preds = %88
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @eeh_ops, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32 (%struct.eeh_pe*, i32*)*, i32 (%struct.eeh_pe*, i32*)** %92, align 8
  %94 = load %struct.eeh_pe*, %struct.eeh_pe** %10, align 8
  %95 = call i32 %93(%struct.eeh_pe* %94, i32* null)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %90
  %99 = load i32, i32* %11, align 4
  %100 = call i64 @eeh_state_active(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98, %90
  %103 = load %struct.eeh_pe*, %struct.eeh_pe** %10, align 8
  %104 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %103, i32 0, i32 3
  %105 = load %struct.eeh_pe*, %struct.eeh_pe** %104, align 8
  store %struct.eeh_pe* %105, %struct.eeh_pe** %10, align 8
  br label %77

106:                                              ; preds = %98
  %107 = load %struct.eeh_pe*, %struct.eeh_pe** %10, align 8
  %108 = load %struct.eeh_pe**, %struct.eeh_pe*** %7, align 8
  store %struct.eeh_pe* %107, %struct.eeh_pe** %108, align 8
  %109 = load %struct.eeh_pe*, %struct.eeh_pe** %10, align 8
  %110 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @EEH_PE_ISOLATED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %106
  %116 = load %struct.pnv_phb*, %struct.pnv_phb** %8, align 8
  %117 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %116, i32 0, i32 0
  %118 = load i32 (%struct.pnv_phb*, i64)*, i32 (%struct.pnv_phb*, i64)** %117, align 8
  %119 = load %struct.pnv_phb*, %struct.pnv_phb** %8, align 8
  %120 = load %struct.eeh_pe*, %struct.eeh_pe** %10, align 8
  %121 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = call i32 %118(%struct.pnv_phb* %119, i64 %122)
  br label %124

124:                                              ; preds = %115, %106
  %125 = load %struct.eeh_pe*, %struct.eeh_pe** %10, align 8
  %126 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %125, i32 0, i32 3
  %127 = load %struct.eeh_pe*, %struct.eeh_pe** %126, align 8
  store %struct.eeh_pe* %127, %struct.eeh_pe** %10, align 8
  br label %77

128:                                              ; preds = %88
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %54
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.eeh_pe* @eeh_pe_get(%struct.pci_controller*, i64, i32) #1

declare dso_local i64 @eeh_state_active(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
