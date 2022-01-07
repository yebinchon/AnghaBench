; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_dwc_460ex.c_sata_dwc_tf_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_dwc_460ex.c_sata_dwc_tf_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"taskfile cmd: 0x%02x protocol: %s flags: 0x%lx device: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"feature: 0x%02x nsect: 0x%x lbal: 0x%x lbam: 0x%x lbah: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"hob_feature: 0x%02x hob_nsect: 0x%x hob_lbal: 0x%x hob_lbam: 0x%x hob_lbah: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_taskfile*)* @sata_dwc_tf_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sata_dwc_tf_dump(%struct.ata_port* %0, %struct.ata_taskfile* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %4, align 8
  %5 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %6 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %9 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %8, i32 0, i32 13
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %12 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @get_prot_descript(i32 %13)
  %15 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %16 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %19 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @dev_vdbg(i32 %7, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14, i32 %17, i32 %20)
  %22 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %26 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %29 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %32 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %35 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %38 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @dev_vdbg(i32 %24, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30, i32 %33, i32 %36, i32 %39)
  %41 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %42 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %45 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %48 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %51 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %54 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %57 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @dev_vdbg(i32 %43, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %49, i32 %52, i32 %55, i32 %58)
  ret void
}

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @get_prot_descript(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
