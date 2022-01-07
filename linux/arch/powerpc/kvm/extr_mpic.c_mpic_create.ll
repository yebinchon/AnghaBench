; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_mpic_create.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_mpic_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { %struct.TYPE_4__*, %struct.openpic* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.openpic* }
%struct.openpic = type { i32, i32, i32, i32, i32, i32*, i32, %struct.kvm_device*, %struct.TYPE_4__* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@openpic_gbl_mmio = common dso_local global i32 0, align 4
@openpic_tmr_mmio = common dso_local global i32 0, align 4
@openpic_src_mmio = common dso_local global i32 0, align 4
@openpic_cpu_mmio = common dso_local global i32 0, align 4
@fsl_mpic_20 = common dso_local global i32 0, align 4
@OPENPIC_FLAG_IDR_CRIT = common dso_local global i32 0, align 4
@GCR_MODE_MIXED = common dso_local global i32 0, align 4
@fsl_mpic_42 = common dso_local global i32 0, align 4
@OPENPIC_FLAG_ILR = common dso_local global i32 0, align 4
@GCR_MODE_PROXY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_device*, i32)* @mpic_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpic_create(%struct.kvm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.openpic*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_device* %0, %struct.kvm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.openpic*, %struct.openpic** %12, align 8
  %14 = icmp ne %struct.openpic* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %112

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.openpic* @kzalloc(i32 56, i32 %19)
  store %struct.openpic* %20, %struct.openpic** %6, align 8
  %21 = load %struct.openpic*, %struct.openpic** %6, align 8
  %22 = icmp ne %struct.openpic* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %112

26:                                               ; preds = %18
  %27 = load %struct.openpic*, %struct.openpic** %6, align 8
  %28 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %29 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %28, i32 0, i32 1
  store %struct.openpic* %27, %struct.openpic** %29, align 8
  %30 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.openpic*, %struct.openpic** %6, align 8
  %34 = getelementptr inbounds %struct.openpic, %struct.openpic* %33, i32 0, i32 8
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %34, align 8
  %35 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %36 = load %struct.openpic*, %struct.openpic** %6, align 8
  %37 = getelementptr inbounds %struct.openpic, %struct.openpic* %36, i32 0, i32 7
  store %struct.kvm_device* %35, %struct.kvm_device** %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.openpic*, %struct.openpic** %6, align 8
  %40 = getelementptr inbounds %struct.openpic, %struct.openpic* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.openpic*, %struct.openpic** %6, align 8
  %42 = getelementptr inbounds %struct.openpic, %struct.openpic* %41, i32 0, i32 6
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.openpic*, %struct.openpic** %6, align 8
  %45 = call i32 @add_mmio_region(%struct.openpic* %44, i32* @openpic_gbl_mmio)
  %46 = load %struct.openpic*, %struct.openpic** %6, align 8
  %47 = call i32 @add_mmio_region(%struct.openpic* %46, i32* @openpic_tmr_mmio)
  %48 = load %struct.openpic*, %struct.openpic** %6, align 8
  %49 = call i32 @add_mmio_region(%struct.openpic* %48, i32* @openpic_src_mmio)
  %50 = load %struct.openpic*, %struct.openpic** %6, align 8
  %51 = call i32 @add_mmio_region(%struct.openpic* %50, i32* @openpic_cpu_mmio)
  %52 = load %struct.openpic*, %struct.openpic** %6, align 8
  %53 = getelementptr inbounds %struct.openpic, %struct.openpic* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %89 [
    i32 129, label %55
    i32 128, label %72
  ]

55:                                               ; preds = %26
  %56 = load %struct.openpic*, %struct.openpic** %6, align 8
  %57 = getelementptr inbounds %struct.openpic, %struct.openpic* %56, i32 0, i32 5
  store i32* @fsl_mpic_20, i32** %57, align 8
  %58 = load %struct.openpic*, %struct.openpic** %6, align 8
  %59 = getelementptr inbounds %struct.openpic, %struct.openpic* %58, i32 0, i32 1
  store i32 4194816, i32* %59, align 4
  %60 = load i32, i32* @OPENPIC_FLAG_IDR_CRIT, align 4
  %61 = load %struct.openpic*, %struct.openpic** %6, align 8
  %62 = getelementptr inbounds %struct.openpic, %struct.openpic* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.openpic*, %struct.openpic** %6, align 8
  %66 = getelementptr inbounds %struct.openpic, %struct.openpic* %65, i32 0, i32 2
  store i32 80, i32* %66, align 8
  %67 = load i32, i32* @GCR_MODE_MIXED, align 4
  %68 = load %struct.openpic*, %struct.openpic** %6, align 8
  %69 = getelementptr inbounds %struct.openpic, %struct.openpic* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.openpic*, %struct.openpic** %6, align 8
  %71 = call i32 @fsl_common_init(%struct.openpic* %70)
  br label %92

72:                                               ; preds = %26
  %73 = load %struct.openpic*, %struct.openpic** %6, align 8
  %74 = getelementptr inbounds %struct.openpic, %struct.openpic* %73, i32 0, i32 5
  store i32* @fsl_mpic_42, i32** %74, align 8
  %75 = load %struct.openpic*, %struct.openpic** %6, align 8
  %76 = getelementptr inbounds %struct.openpic, %struct.openpic* %75, i32 0, i32 1
  store i32 4195330, i32* %76, align 4
  %77 = load i32, i32* @OPENPIC_FLAG_ILR, align 4
  %78 = load %struct.openpic*, %struct.openpic** %6, align 8
  %79 = getelementptr inbounds %struct.openpic, %struct.openpic* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.openpic*, %struct.openpic** %6, align 8
  %83 = getelementptr inbounds %struct.openpic, %struct.openpic* %82, i32 0, i32 2
  store i32 196, i32* %83, align 8
  %84 = load i32, i32* @GCR_MODE_PROXY, align 4
  %85 = load %struct.openpic*, %struct.openpic** %6, align 8
  %86 = getelementptr inbounds %struct.openpic, %struct.openpic* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.openpic*, %struct.openpic** %6, align 8
  %88 = call i32 @fsl_common_init(%struct.openpic* %87)
  br label %92

89:                                               ; preds = %26
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %7, align 4
  br label %108

92:                                               ; preds = %72, %55
  %93 = load %struct.openpic*, %struct.openpic** %6, align 8
  %94 = call i32 @mpic_set_default_irq_routing(%struct.openpic* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %108

98:                                               ; preds = %92
  %99 = load %struct.openpic*, %struct.openpic** %6, align 8
  %100 = call i32 @openpic_reset(%struct.openpic* %99)
  %101 = call i32 (...) @smp_wmb()
  %102 = load %struct.openpic*, %struct.openpic** %6, align 8
  %103 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %104 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store %struct.openpic* %102, %struct.openpic** %107, align 8
  store i32 0, i32* %3, align 4
  br label %112

108:                                              ; preds = %97, %89
  %109 = load %struct.openpic*, %struct.openpic** %6, align 8
  %110 = call i32 @kfree(%struct.openpic* %109)
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %98, %23, %15
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.openpic* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @add_mmio_region(%struct.openpic*, i32*) #1

declare dso_local i32 @fsl_common_init(%struct.openpic*) #1

declare dso_local i32 @mpic_set_default_irq_routing(%struct.openpic*) #1

declare dso_local i32 @openpic_reset(%struct.openpic*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @kfree(%struct.openpic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
