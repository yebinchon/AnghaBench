; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_eh_park_issue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_eh_park_issue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ata_eh_context }
%struct.ata_eh_context = type { i32 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32 }

@ATA_CMD_IDLEIMMEDIATE = common dso_local global i32 0, align 4
@ATA_CMD_CHK_POWER = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"head unload failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_device*, i32)* @ata_eh_park_issue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_eh_park_issue_cmd(%struct.ata_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_eh_context*, align 8
  %6 = alloca %struct.ata_taskfile, align 4
  %7 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %9 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.ata_eh_context* %11, %struct.ata_eh_context** %5, align 8
  %12 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %13 = call i32 @ata_tf_init(%struct.ata_device* %12, %struct.ata_taskfile* %6)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %18 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 1, %19
  %21 = load %struct.ata_eh_context*, %struct.ata_eh_context** %5, align 8
  %22 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @ATA_CMD_IDLEIMMEDIATE, align 4
  %26 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 6
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 0
  store i32 68, i32* %27, align 4
  %28 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 1
  store i32 76, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 2
  store i32 78, i32* %29, align 4
  %30 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 3
  store i32 85, i32* %30, align 4
  br label %43

31:                                               ; preds = %2
  %32 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %33 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 1, %34
  %36 = xor i32 %35, -1
  %37 = load %struct.ata_eh_context*, %struct.ata_eh_context** %5, align 8
  %38 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @ATA_CMD_CHK_POWER, align 4
  %42 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 6
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %31, %16
  %44 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %45 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %46 = or i32 %44, %45
  %47 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @ATA_PROT_NODATA, align 4
  %51 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 5
  store i32 %50, i32* %51, align 4
  %52 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %53 = load i32, i32* @DMA_NONE, align 4
  %54 = call i32 @ata_exec_internal(%struct.ata_device* %52, %struct.ata_taskfile* %6, i32* null, i32 %53, i32* null, i32 0, i32 0)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %43
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 196
  br i1 %63, label %64, label %76

64:                                               ; preds = %60, %57
  %65 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %66 = call i32 @ata_dev_err(%struct.ata_device* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %68 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = shl i32 1, %69
  %71 = xor i32 %70, -1
  %72 = load %struct.ata_eh_context*, %struct.ata_eh_context** %5, align 8
  %73 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %64, %60, %43
  ret void
}

declare dso_local i32 @ata_tf_init(%struct.ata_device*, %struct.ata_taskfile*) #1

declare dso_local i32 @ata_exec_internal(%struct.ata_device*, %struct.ata_taskfile*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ata_dev_err(%struct.ata_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
