; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_write_IRQreg_ivpr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_write_IRQreg_ivpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openpic = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@IVPR_MASK_MASK = common dso_local global i32 0, align 4
@IVPR_PRIORITY_MASK = common dso_local global i32 0, align 4
@IVPR_SENSE_MASK = common dso_local global i32 0, align 4
@IVPR_POLARITY_MASK = common dso_local global i32 0, align 4
@IVPR_ACTIVITY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Set IVPR %d to 0x%08x -> 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.openpic*, i32, i32)* @write_IRQreg_ivpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_IRQreg_ivpr(%struct.openpic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.openpic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.openpic* %0, %struct.openpic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @IVPR_MASK_MASK, align 4
  %9 = load i32, i32* @IVPR_PRIORITY_MASK, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @IVPR_SENSE_MASK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @IVPR_POLARITY_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.openpic*, %struct.openpic** %4, align 8
  %16 = getelementptr inbounds %struct.openpic, %struct.openpic* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %14, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.openpic*, %struct.openpic** %4, align 8
  %20 = getelementptr inbounds %struct.openpic, %struct.openpic* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IVPR_ACTIVITY_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %29, %30
  %32 = or i32 %28, %31
  %33 = load %struct.openpic*, %struct.openpic** %4, align 8
  %34 = getelementptr inbounds %struct.openpic, %struct.openpic* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %32, i32* %39, align 4
  %40 = load %struct.openpic*, %struct.openpic** %4, align 8
  %41 = getelementptr inbounds %struct.openpic, %struct.openpic* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %96 [
    i32 128, label %48
    i32 130, label %70
    i32 129, label %82
  ]

48:                                               ; preds = %3
  %49 = load %struct.openpic*, %struct.openpic** %4, align 8
  %50 = getelementptr inbounds %struct.openpic, %struct.openpic* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IVPR_SENSE_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load %struct.openpic*, %struct.openpic** %4, align 8
  %64 = getelementptr inbounds %struct.openpic, %struct.openpic* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i32 %62, i32* %69, align 4
  br label %96

70:                                               ; preds = %3
  %71 = load i32, i32* @IVPR_SENSE_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.openpic*, %struct.openpic** %4, align 8
  %74 = getelementptr inbounds %struct.openpic, %struct.openpic* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %72
  store i32 %81, i32* %79, align 4
  br label %96

82:                                               ; preds = %3
  %83 = load i32, i32* @IVPR_POLARITY_MASK, align 4
  %84 = load i32, i32* @IVPR_SENSE_MASK, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = load %struct.openpic*, %struct.openpic** %4, align 8
  %88 = getelementptr inbounds %struct.openpic, %struct.openpic* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %86
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %3, %82, %70, %48
  %97 = load %struct.openpic*, %struct.openpic** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @openpic_update_irq(%struct.openpic* %97, i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.openpic*, %struct.openpic** %4, align 8
  %103 = getelementptr inbounds %struct.openpic, %struct.openpic* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101, i32 %109)
  ret void
}

declare dso_local i32 @openpic_update_irq(%struct.openpic*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
