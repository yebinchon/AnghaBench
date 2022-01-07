; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_fsl.c_sata_fsl_setup_cmd_hdr_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_fsl.c_sata_fsl_setup_cmd_hdr_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sata_fsl_port_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }

@SATA_FSL_CMD_DESC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"cda=0x%x, prde_fis_len=0x%x, ttl=0x%x, di=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sata_fsl_port_priv*, i32, i32, i32, i32, i32)* @sata_fsl_setup_cmd_hdr_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sata_fsl_setup_cmd_hdr_entry(%struct.sata_fsl_port_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sata_fsl_port_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sata_fsl_port_priv* %0, %struct.sata_fsl_port_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.sata_fsl_port_priv*, %struct.sata_fsl_port_priv** %7, align 8
  %15 = getelementptr inbounds %struct.sata_fsl_port_priv, %struct.sata_fsl_port_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @SATA_FSL_CMD_DESC_SIZE, align 4
  %19 = mul i32 %17, %18
  %20 = add i32 %16, %19
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = load %struct.sata_fsl_port_priv*, %struct.sata_fsl_port_priv** %7, align 8
  %24 = getelementptr inbounds %struct.sata_fsl_port_priv, %struct.sata_fsl_port_priv* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i8* %22, i8** %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = shl i32 %30, 16
  %32 = load i32, i32* %12, align 4
  %33 = shl i32 %32, 2
  %34 = or i32 %31, %33
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.sata_fsl_port_priv*, %struct.sata_fsl_port_priv** %7, align 8
  %37 = getelementptr inbounds %struct.sata_fsl_port_priv, %struct.sata_fsl_port_priv* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i8* %35, i8** %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, -4
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.sata_fsl_port_priv*, %struct.sata_fsl_port_priv** %7, align 8
  %47 = getelementptr inbounds %struct.sata_fsl_port_priv, %struct.sata_fsl_port_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i8* %45, i8** %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 31
  %56 = or i32 %53, %55
  %57 = call i8* @cpu_to_le32(i32 %56)
  %58 = load %struct.sata_fsl_port_priv*, %struct.sata_fsl_port_priv** %7, align 8
  %59 = getelementptr inbounds %struct.sata_fsl_port_priv, %struct.sata_fsl_port_priv* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i8* %57, i8** %64, align 8
  %65 = load %struct.sata_fsl_port_priv*, %struct.sata_fsl_port_priv** %7, align 8
  %66 = getelementptr inbounds %struct.sata_fsl_port_priv, %struct.sata_fsl_port_priv* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.sata_fsl_port_priv*, %struct.sata_fsl_port_priv** %7, align 8
  %74 = getelementptr inbounds %struct.sata_fsl_port_priv, %struct.sata_fsl_port_priv* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.sata_fsl_port_priv*, %struct.sata_fsl_port_priv** %7, align 8
  %82 = getelementptr inbounds %struct.sata_fsl_port_priv, %struct.sata_fsl_port_priv* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.sata_fsl_port_priv*, %struct.sata_fsl_port_priv** %7, align 8
  %90 = getelementptr inbounds %struct.sata_fsl_port_priv, %struct.sata_fsl_port_priv* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @VPRINTK(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %72, i8* %80, i8* %88, i8* %96)
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @VPRINTK(i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
