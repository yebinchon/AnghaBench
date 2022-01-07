; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_eh_maybe_retry_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_eh_maybe_retry_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { %struct.ata_link* }
%struct.ata_link = type { i32, %struct.ata_port* }
%struct.ata_port = type { i32 }
%struct.ata_queued_cmd = type { i32, %struct.ata_taskfile, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.ata_device* }
%struct.ata_taskfile = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@ATA_CMD_FLUSH_EXT = common dso_local global i64 0, align 8
@ATA_CMD_FLUSH = common dso_local global i64 0, align 8
@AC_ERR_DEV = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"retrying FLUSH 0x%x Emask 0x%x\0A\00", align 1
@DMA_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"FLUSH failed Emask 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ATA_PFLAG_FROZEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*)* @ata_eh_maybe_retry_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_eh_maybe_retry_flush(%struct.ata_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.ata_queued_cmd*, align 8
  %7 = alloca %struct.ata_taskfile, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %10 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %11 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %10, i32 0, i32 0
  %12 = load %struct.ata_link*, %struct.ata_link** %11, align 8
  store %struct.ata_link* %12, %struct.ata_link** %4, align 8
  %13 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %14 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %13, i32 0, i32 1
  %15 = load %struct.ata_port*, %struct.ata_port** %14, align 8
  store %struct.ata_port* %15, %struct.ata_port** %5, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %17 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ata_tag_valid(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %125

22:                                               ; preds = %1
  %23 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %24 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %25 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port* %23, i32 %26)
  store %struct.ata_queued_cmd* %27, %struct.ata_queued_cmd** %6, align 8
  %28 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %29 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %28, i32 0, i32 4
  %30 = load %struct.ata_device*, %struct.ata_device** %29, align 8
  %31 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %32 = icmp ne %struct.ata_device* %30, %31
  br i1 %32, label %47, label %33

33:                                               ; preds = %22
  %34 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ATA_CMD_FLUSH_EXT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %42 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ATA_CMD_FLUSH, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40, %22
  store i32 0, i32* %2, align 4
  br label %125

48:                                               ; preds = %40, %33
  %49 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %50 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @AC_ERR_DEV, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %125

56:                                               ; preds = %48
  %57 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %58 = call i32 @ata_tf_init(%struct.ata_device* %57, %struct.ata_taskfile* %7)
  %59 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %60 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 0
  store i64 %62, i64* %63, align 8
  %64 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %65 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @ATA_PROT_NODATA, align 4
  %69 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 1
  store i32 %68, i32* %69, align 8
  %70 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %71 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %75 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (%struct.ata_device*, i8*, i32, ...) @ata_dev_warn(%struct.ata_device* %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76)
  %78 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %79 = load i32, i32* @DMA_NONE, align 4
  %80 = call i32 @ata_exec_internal(%struct.ata_device* %78, %struct.ata_taskfile* %7, i32* null, i32 %79, i32* null, i32 0, i32 0)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %56
  %84 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %85 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @max(i32 %88, i32 1)
  %90 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %91 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 4
  br label %123

94:                                               ; preds = %56
  %95 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 (%struct.ata_device*, i8*, i32, ...) @ata_dev_warn(%struct.ata_device* %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @AC_ERR_DEV, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %94
  %105 = load i32, i32* @AC_ERR_DEV, align 4
  %106 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %107 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %111 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %110, i32 0, i32 1
  %112 = bitcast %struct.ata_taskfile* %111 to i8*
  %113 = bitcast %struct.ata_taskfile* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 %113, i64 16, i1 false)
  %114 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %115 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ATA_PFLAG_FROZEN, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %104
  store i32 0, i32* %9, align 4
  br label %121

121:                                              ; preds = %120, %104
  br label %122

122:                                              ; preds = %121, %94
  br label %123

123:                                              ; preds = %122, %83
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %123, %55, %47, %21
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @ata_tag_valid(i32) #1

declare dso_local %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_tf_init(%struct.ata_device*, %struct.ata_taskfile*) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*, i32, ...) #1

declare dso_local i32 @ata_exec_internal(%struct.ata_device*, %struct.ata_taskfile*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
