; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_fsl_common_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_fsl_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openpic = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MAX_SRC = common dso_local global i32 0, align 4
@openpic_msi_mmio = common dso_local global i32 0, align 4
@openpic_summary_mmio = common dso_local global i32 0, align 4
@VID_REVISION_1_2 = common dso_local global i32 0, align 4
@VIR_GENERIC = common dso_local global i32 0, align 4
@IVPR_MASK_MASK = common dso_local global i32 0, align 4
@MAX_IRQ = common dso_local global i32 0, align 4
@MAX_IPI = common dso_local global i64 0, align 8
@MAX_TMR = common dso_local global i64 0, align 8
@IRQ_TYPE_FSLINT = common dso_local global i32 0, align 4
@IRQ_TYPE_FSLSPECIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.openpic*)* @fsl_common_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_common_init(%struct.openpic* %0) #0 {
  %2 = alloca %struct.openpic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.openpic* %0, %struct.openpic** %2, align 8
  %5 = load i32, i32* @MAX_SRC, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.openpic*, %struct.openpic** %2, align 8
  %7 = call i32 @add_mmio_region(%struct.openpic* %6, i32* @openpic_msi_mmio)
  %8 = load %struct.openpic*, %struct.openpic** %2, align 8
  %9 = call i32 @add_mmio_region(%struct.openpic* %8, i32* @openpic_summary_mmio)
  %10 = load i32, i32* @VID_REVISION_1_2, align 4
  %11 = load %struct.openpic*, %struct.openpic** %2, align 8
  %12 = getelementptr inbounds %struct.openpic, %struct.openpic* %11, i32 0, i32 11
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @VIR_GENERIC, align 4
  %14 = load %struct.openpic*, %struct.openpic** %2, align 8
  %15 = getelementptr inbounds %struct.openpic, %struct.openpic* %14, i32 0, i32 10
  store i32 %13, i32* %15, align 8
  %16 = load %struct.openpic*, %struct.openpic** %2, align 8
  %17 = getelementptr inbounds %struct.openpic, %struct.openpic* %16, i32 0, i32 0
  store i32 65535, i32* %17, align 8
  %18 = load %struct.openpic*, %struct.openpic** %2, align 8
  %19 = getelementptr inbounds %struct.openpic, %struct.openpic* %18, i32 0, i32 9
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @IVPR_MASK_MASK, align 4
  %21 = load %struct.openpic*, %struct.openpic** %2, align 8
  %22 = getelementptr inbounds %struct.openpic, %struct.openpic* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 8
  %23 = load %struct.openpic*, %struct.openpic** %2, align 8
  %24 = getelementptr inbounds %struct.openpic, %struct.openpic* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @MAX_IRQ, align 4
  %26 = load %struct.openpic*, %struct.openpic** %2, align 8
  %27 = getelementptr inbounds %struct.openpic, %struct.openpic* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.openpic*, %struct.openpic** %2, align 8
  %30 = getelementptr inbounds %struct.openpic, %struct.openpic* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* @MAX_IPI, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.openpic*, %struct.openpic** %2, align 8
  %38 = getelementptr inbounds %struct.openpic, %struct.openpic* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* @MAX_TMR, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @MAX_IRQ, align 4
  %46 = icmp sgt i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load %struct.openpic*, %struct.openpic** %2, align 8
  %50 = getelementptr inbounds %struct.openpic, %struct.openpic* %49, i32 0, i32 5
  store i32 224, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %67, %1
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.openpic*, %struct.openpic** %2, align 8
  %54 = getelementptr inbounds %struct.openpic, %struct.openpic* %53, i32 0, i32 7
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %52, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %51
  %60 = load %struct.openpic*, %struct.openpic** %2, align 8
  %61 = getelementptr inbounds %struct.openpic, %struct.openpic* %60, i32 0, i32 6
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %51

70:                                               ; preds = %51
  store i32 16, i32* %3, align 4
  br label %71

71:                                               ; preds = %91, %70
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @MAX_SRC, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %71
  %76 = load i32, i32* @IRQ_TYPE_FSLINT, align 4
  %77 = load %struct.openpic*, %struct.openpic** %2, align 8
  %78 = getelementptr inbounds %struct.openpic, %struct.openpic* %77, i32 0, i32 6
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 %76, i32* %83, align 4
  %84 = load %struct.openpic*, %struct.openpic** %2, align 8
  %85 = getelementptr inbounds %struct.openpic, %struct.openpic* %84, i32 0, i32 6
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %75
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %71

94:                                               ; preds = %71
  %95 = load i32, i32* @MAX_SRC, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %116, %94
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %96
  %101 = load i32, i32* @IRQ_TYPE_FSLSPECIAL, align 4
  %102 = load %struct.openpic*, %struct.openpic** %2, align 8
  %103 = getelementptr inbounds %struct.openpic, %struct.openpic* %102, i32 0, i32 6
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store i32 %101, i32* %108, align 4
  %109 = load %struct.openpic*, %struct.openpic** %2, align 8
  %110 = getelementptr inbounds %struct.openpic, %struct.openpic* %109, i32 0, i32 6
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i32 0, i32* %115, align 4
  br label %116

116:                                              ; preds = %100
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %3, align 4
  br label %96

119:                                              ; preds = %96
  ret void
}

declare dso_local i32 @add_mmio_region(%struct.openpic*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
