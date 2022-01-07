; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_adma_qc_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_adma_qc_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i64, i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { %struct.nv_adma_port_priv* }
%struct.nv_adma_port_priv = type { i32, %struct.nv_adma_cpb* }
%struct.nv_adma_cpb = type { i32, i32, i64, i64, i32*, i32, i64 }

@NV_CPB_CTL_CPB_VALID = common dso_local global i32 0, align 4
@NV_CPB_CTL_IEN = common dso_local global i32 0, align 4
@NV_ADMA_ATAPI_SETUP_COMPLETE = common dso_local global i32 0, align 4
@ATA_QCFLAG_DMAMAP = common dso_local global i32 0, align 4
@NV_CPB_RESP_DONE = common dso_local global i64 0, align 8
@ATA_PROT_NCQ = common dso_local global i64 0, align 8
@NV_CPB_CTL_QUEUE = common dso_local global i32 0, align 4
@NV_CPB_CTL_FPDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"qc->flags = 0x%lx\0A\00", align 1
@NV_CPB_CTL_APRD_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @nv_adma_qc_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_adma_qc_prep(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.nv_adma_port_priv*, align 8
  %4 = alloca %struct.nv_adma_cpb*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %9, align 8
  store %struct.nv_adma_port_priv* %10, %struct.nv_adma_port_priv** %3, align 8
  %11 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %3, align 8
  %12 = getelementptr inbounds %struct.nv_adma_port_priv, %struct.nv_adma_port_priv* %11, i32 0, i32 1
  %13 = load %struct.nv_adma_cpb*, %struct.nv_adma_cpb** %12, align 8
  %14 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.nv_adma_cpb, %struct.nv_adma_cpb* %13, i64 %16
  store %struct.nv_adma_cpb* %17, %struct.nv_adma_cpb** %4, align 8
  %18 = load i32, i32* @NV_CPB_CTL_CPB_VALID, align 4
  %19 = load i32, i32* @NV_CPB_CTL_IEN, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %22 = call i64 @nv_adma_use_reg_mode(%struct.ata_queued_cmd* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %1
  %25 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %3, align 8
  %26 = getelementptr inbounds %struct.nv_adma_port_priv, %struct.nv_adma_port_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NV_ADMA_ATAPI_SETUP_COMPLETE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %33 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ATA_QCFLAG_DMAMAP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %31, %24
  %39 = phi i1 [ false, %24 ], [ %37, %31 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %43 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call i32 @nv_adma_register_mode(%struct.TYPE_4__* %44)
  %46 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %47 = call i32 @ata_bmdma_qc_prep(%struct.ata_queued_cmd* %46)
  br label %115

48:                                               ; preds = %1
  %49 = load i64, i64* @NV_CPB_RESP_DONE, align 8
  %50 = load %struct.nv_adma_cpb*, %struct.nv_adma_cpb** %4, align 8
  %51 = getelementptr inbounds %struct.nv_adma_cpb, %struct.nv_adma_cpb* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = call i32 (...) @wmb()
  %53 = load %struct.nv_adma_cpb*, %struct.nv_adma_cpb** %4, align 8
  %54 = getelementptr inbounds %struct.nv_adma_cpb, %struct.nv_adma_cpb* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = call i32 (...) @wmb()
  %56 = load %struct.nv_adma_cpb*, %struct.nv_adma_cpb** %4, align 8
  %57 = getelementptr inbounds %struct.nv_adma_cpb, %struct.nv_adma_cpb* %56, i32 0, i32 1
  store i32 3, i32* %57, align 4
  %58 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %59 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.nv_adma_cpb*, %struct.nv_adma_cpb** %4, align 8
  %62 = getelementptr inbounds %struct.nv_adma_cpb, %struct.nv_adma_cpb* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load %struct.nv_adma_cpb*, %struct.nv_adma_cpb** %4, align 8
  %64 = getelementptr inbounds %struct.nv_adma_cpb, %struct.nv_adma_cpb* %63, i32 0, i32 6
  store i64 0, i64* %64, align 8
  %65 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %66 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ATA_PROT_NCQ, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %48
  %72 = load i32, i32* @NV_CPB_CTL_QUEUE, align 4
  %73 = load i32, i32* @NV_CPB_CTL_FPDMA, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %71, %48
  %78 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %79 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @VPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %83 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %82, i32 0, i32 2
  %84 = load %struct.nv_adma_cpb*, %struct.nv_adma_cpb** %4, align 8
  %85 = getelementptr inbounds %struct.nv_adma_cpb, %struct.nv_adma_cpb* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @nv_adma_tf_to_cpb(%struct.TYPE_3__* %83, i32 %86)
  %88 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %89 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ATA_QCFLAG_DMAMAP, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %77
  %95 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %96 = load %struct.nv_adma_cpb*, %struct.nv_adma_cpb** %4, align 8
  %97 = call i32 @nv_adma_fill_sg(%struct.ata_queued_cmd* %95, %struct.nv_adma_cpb* %96)
  %98 = load i32, i32* @NV_CPB_CTL_APRD_VALID, align 4
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  br label %107

101:                                              ; preds = %77
  %102 = load %struct.nv_adma_cpb*, %struct.nv_adma_cpb** %4, align 8
  %103 = getelementptr inbounds %struct.nv_adma_cpb, %struct.nv_adma_cpb* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = call i32 @memset(i32* %105, i32 0, i32 20)
  br label %107

107:                                              ; preds = %101, %94
  %108 = call i32 (...) @wmb()
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.nv_adma_cpb*, %struct.nv_adma_cpb** %4, align 8
  %111 = getelementptr inbounds %struct.nv_adma_cpb, %struct.nv_adma_cpb* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = call i32 (...) @wmb()
  %113 = load %struct.nv_adma_cpb*, %struct.nv_adma_cpb** %4, align 8
  %114 = getelementptr inbounds %struct.nv_adma_cpb, %struct.nv_adma_cpb* %113, i32 0, i32 3
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %107, %38
  ret void
}

declare dso_local i64 @nv_adma_use_reg_mode(%struct.ata_queued_cmd*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @nv_adma_register_mode(%struct.TYPE_4__*) #1

declare dso_local i32 @ata_bmdma_qc_prep(%struct.ata_queued_cmd*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @VPRINTK(i8*, i32) #1

declare dso_local i32 @nv_adma_tf_to_cpb(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @nv_adma_fill_sg(%struct.ata_queued_cmd*, %struct.nv_adma_cpb*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
