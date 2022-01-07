; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_adma_fill_aprd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_adma_fill_aprd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32 }
%struct.nv_adma_prd = type { i64, i32, i32, i32 }

@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@NV_APRD_WRITE = common dso_local global i32 0, align 4
@NV_APRD_END = common dso_local global i32 0, align 4
@NV_APRD_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*, %struct.scatterlist*, i32, %struct.nv_adma_prd*)* @nv_adma_fill_aprd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_adma_fill_aprd(%struct.ata_queued_cmd* %0, %struct.scatterlist* %1, i32 %2, %struct.nv_adma_prd* %3) #0 {
  %5 = alloca %struct.ata_queued_cmd*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nv_adma_prd*, align 8
  %9 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nv_adma_prd* %3, %struct.nv_adma_prd** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @NV_APRD_WRITE, align 4
  %19 = load i32, i32* %9, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %17, %4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp eq i32 %22, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @NV_APRD_END, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %40

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 4
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @NV_APRD_CONT, align 4
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %35, %32
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %42 = call i64 @sg_dma_address(%struct.scatterlist* %41)
  %43 = trunc i64 %42 to i32
  %44 = call i32 @cpu_to_le64(i32 %43)
  %45 = load %struct.nv_adma_prd*, %struct.nv_adma_prd** %8, align 8
  %46 = getelementptr inbounds %struct.nv_adma_prd, %struct.nv_adma_prd* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %48 = call i64 @sg_dma_len(%struct.scatterlist* %47)
  %49 = trunc i64 %48 to i32
  %50 = call i32 @cpu_to_le32(i32 %49)
  %51 = load %struct.nv_adma_prd*, %struct.nv_adma_prd** %8, align 8
  %52 = getelementptr inbounds %struct.nv_adma_prd, %struct.nv_adma_prd* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.nv_adma_prd*, %struct.nv_adma_prd** %8, align 8
  %55 = getelementptr inbounds %struct.nv_adma_prd, %struct.nv_adma_prd* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.nv_adma_prd*, %struct.nv_adma_prd** %8, align 8
  %57 = getelementptr inbounds %struct.nv_adma_prd, %struct.nv_adma_prd* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @sg_dma_len(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
