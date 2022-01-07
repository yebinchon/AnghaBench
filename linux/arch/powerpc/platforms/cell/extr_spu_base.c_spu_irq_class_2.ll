; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_spu_base.c_spu_irq_class_2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_spu_base.c_spu_irq_class_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu = type { i32, %struct.TYPE_2__, i32 (%struct.spu*)*, i32 (%struct.spu*)*, i32 (%struct.spu*, i32)*, i32 (%struct.spu*)* }
%struct.TYPE_2__ = type { i32 }

@CLASS2_MAILBOX_THRESHOLD_INTR = common dso_local global i64 0, align 8
@CLASS2_MAILBOX_INTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"class 2 interrupt %d, %lx, %lx\0A\00", align 1
@CLASS2_SPU_STOP_INTR = common dso_local global i64 0, align 8
@CLASS2_SPU_HALT_INTR = common dso_local global i64 0, align 8
@CLASS2_SPU_DMA_TAG_GROUP_COMPLETE_INTR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @spu_irq_class_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_irq_class_2(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.spu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i64, i64* @CLASS2_MAILBOX_THRESHOLD_INTR, align 8
  %10 = load i64, i64* @CLASS2_MAILBOX_INTR, align 8
  %11 = or i64 %9, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.spu*
  store %struct.spu* %14, %struct.spu** %5, align 8
  %15 = load %struct.spu*, %struct.spu** %5, align 8
  %16 = getelementptr inbounds %struct.spu, %struct.spu* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.spu*, %struct.spu** %5, align 8
  %19 = call i64 @spu_int_stat_get(%struct.spu* %18, i32 2)
  store i64 %19, i64* %6, align 8
  %20 = load %struct.spu*, %struct.spu** %5, align 8
  %21 = call i64 @spu_int_mask_get(%struct.spu* %20, i32 2)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = and i64 %25, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load %struct.spu*, %struct.spu** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = and i64 %32, %34
  %36 = xor i64 %35, -1
  %37 = call i32 @spu_int_mask_and(%struct.spu* %31, i32 2, i64 %36)
  br label %38

38:                                               ; preds = %30, %2
  %39 = load %struct.spu*, %struct.spu** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spu_int_stat_clear(%struct.spu* %39, i32 2, i64 %40)
  %42 = load i32, i32* %3, align 4
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %42, i64 %43, i64 %44)
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @CLASS2_MAILBOX_INTR, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load %struct.spu*, %struct.spu** %5, align 8
  %52 = getelementptr inbounds %struct.spu, %struct.spu* %51, i32 0, i32 5
  %53 = load i32 (%struct.spu*)*, i32 (%struct.spu*)** %52, align 8
  %54 = load %struct.spu*, %struct.spu** %5, align 8
  %55 = call i32 %53(%struct.spu* %54)
  br label %56

56:                                               ; preds = %50, %38
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @CLASS2_SPU_STOP_INTR, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.spu*, %struct.spu** %5, align 8
  %63 = getelementptr inbounds %struct.spu, %struct.spu* %62, i32 0, i32 4
  %64 = load i32 (%struct.spu*, i32)*, i32 (%struct.spu*, i32)** %63, align 8
  %65 = load %struct.spu*, %struct.spu** %5, align 8
  %66 = call i32 %64(%struct.spu* %65, i32 2)
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @CLASS2_SPU_HALT_INTR, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.spu*, %struct.spu** %5, align 8
  %74 = getelementptr inbounds %struct.spu, %struct.spu* %73, i32 0, i32 4
  %75 = load i32 (%struct.spu*, i32)*, i32 (%struct.spu*, i32)** %74, align 8
  %76 = load %struct.spu*, %struct.spu** %5, align 8
  %77 = call i32 %75(%struct.spu* %76, i32 2)
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* @CLASS2_SPU_DMA_TAG_GROUP_COMPLETE_INTR, align 8
  %81 = and i64 %79, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.spu*, %struct.spu** %5, align 8
  %85 = getelementptr inbounds %struct.spu, %struct.spu* %84, i32 0, i32 3
  %86 = load i32 (%struct.spu*)*, i32 (%struct.spu*)** %85, align 8
  %87 = load %struct.spu*, %struct.spu** %5, align 8
  %88 = call i32 %86(%struct.spu* %87)
  br label %89

89:                                               ; preds = %83, %78
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @CLASS2_MAILBOX_THRESHOLD_INTR, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.spu*, %struct.spu** %5, align 8
  %96 = getelementptr inbounds %struct.spu, %struct.spu* %95, i32 0, i32 2
  %97 = load i32 (%struct.spu*)*, i32 (%struct.spu*)** %96, align 8
  %98 = load %struct.spu*, %struct.spu** %5, align 8
  %99 = call i32 %97(%struct.spu* %98)
  br label %100

100:                                              ; preds = %94, %89
  %101 = load %struct.spu*, %struct.spu** %5, align 8
  %102 = getelementptr inbounds %struct.spu, %struct.spu* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.spu*, %struct.spu** %5, align 8
  %107 = getelementptr inbounds %struct.spu, %struct.spu* %106, i32 0, i32 0
  %108 = call i32 @spin_unlock(i32* %107)
  %109 = load i64, i64* %6, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i32, i32* @IRQ_HANDLED, align 4
  br label %115

113:                                              ; preds = %100
  %114 = load i32, i32* @IRQ_NONE, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  ret i32 %116
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @spu_int_stat_get(%struct.spu*, i32) #1

declare dso_local i64 @spu_int_mask_get(%struct.spu*, i32) #1

declare dso_local i32 @spu_int_mask_and(%struct.spu*, i32, i64) #1

declare dso_local i32 @spu_int_stat_clear(%struct.spu*, i32, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
