; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_mpc52xx.c_mpc52xx_ata_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_mpc52xx.c_mpc52xx_ata_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mpc52xx_ata_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_host = type { %struct.mpc52xx_ata_priv*, %struct.ata_port** }
%struct.ata_port = type { i32, i32, %struct.ata_ioports, i32*, i32, i32 }
%struct.ata_ioports = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@ATA_FLAG_SLAVE_POSS = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@mpc52xx_ata_port_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ata_regs 0x%lx\00", align 1
@ata_bmdma_interrupt = common dso_local global i32 0, align 4
@mpc52xx_ata_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.mpc52xx_ata_priv*, i64, i32, i32)* @mpc52xx_ata_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_ata_init_one(%struct.device* %0, %struct.mpc52xx_ata_priv* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.mpc52xx_ata_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ata_host*, align 8
  %13 = alloca %struct.ata_port*, align 8
  %14 = alloca %struct.ata_ioports*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.mpc52xx_ata_priv* %1, %struct.mpc52xx_ata_priv** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = call %struct.ata_host* @ata_host_alloc(%struct.device* %15, i32 1)
  store %struct.ata_host* %16, %struct.ata_host** %12, align 8
  %17 = load %struct.ata_host*, %struct.ata_host** %12, align 8
  %18 = icmp ne %struct.ata_host* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %132

22:                                               ; preds = %5
  %23 = load %struct.ata_host*, %struct.ata_host** %12, align 8
  %24 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %23, i32 0, i32 1
  %25 = load %struct.ata_port**, %struct.ata_port*** %24, align 8
  %26 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %25, i64 0
  %27 = load %struct.ata_port*, %struct.ata_port** %26, align 8
  store %struct.ata_port* %27, %struct.ata_port** %13, align 8
  %28 = load i32, i32* @ATA_FLAG_SLAVE_POSS, align 4
  %29 = load %struct.ata_port*, %struct.ata_port** %13, align 8
  %30 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @ATA_PIO4, align 4
  %34 = load %struct.ata_port*, %struct.ata_port** %13, align 8
  %35 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.ata_port*, %struct.ata_port** %13, align 8
  %38 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.ata_port*, %struct.ata_port** %13, align 8
  %41 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ata_port*, %struct.ata_port** %13, align 8
  %43 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %42, i32 0, i32 3
  store i32* @mpc52xx_ata_port_ops, i32** %43, align 8
  %44 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %8, align 8
  %45 = load %struct.ata_host*, %struct.ata_host** %12, align 8
  %46 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %45, i32 0, i32 0
  store %struct.mpc52xx_ata_priv* %44, %struct.mpc52xx_ata_priv** %46, align 8
  %47 = load %struct.ata_port*, %struct.ata_port** %13, align 8
  %48 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %47, i32 0, i32 2
  store %struct.ata_ioports* %48, %struct.ata_ioports** %14, align 8
  %49 = load %struct.ata_ioports*, %struct.ata_ioports** %14, align 8
  %50 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %49, i32 0, i32 12
  store i32* null, i32** %50, align 8
  %51 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %8, align 8
  %52 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 8
  %55 = load %struct.ata_ioports*, %struct.ata_ioports** %14, align 8
  %56 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %55, i32 0, i32 11
  store i32* %54, i32** %56, align 8
  %57 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %8, align 8
  %58 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 8
  %61 = load %struct.ata_ioports*, %struct.ata_ioports** %14, align 8
  %62 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %61, i32 0, i32 10
  store i32* %60, i32** %62, align 8
  %63 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %8, align 8
  %64 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 7
  %67 = load %struct.ata_ioports*, %struct.ata_ioports** %14, align 8
  %68 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %67, i32 0, i32 9
  store i32* %66, i32** %68, align 8
  %69 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %8, align 8
  %70 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 6
  %73 = load %struct.ata_ioports*, %struct.ata_ioports** %14, align 8
  %74 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %73, i32 0, i32 8
  store i32* %72, i32** %74, align 8
  %75 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %8, align 8
  %76 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 6
  %79 = load %struct.ata_ioports*, %struct.ata_ioports** %14, align 8
  %80 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %79, i32 0, i32 7
  store i32* %78, i32** %80, align 8
  %81 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %8, align 8
  %82 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 5
  %85 = load %struct.ata_ioports*, %struct.ata_ioports** %14, align 8
  %86 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %85, i32 0, i32 6
  store i32* %84, i32** %86, align 8
  %87 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %8, align 8
  %88 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  %91 = load %struct.ata_ioports*, %struct.ata_ioports** %14, align 8
  %92 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %91, i32 0, i32 5
  store i32* %90, i32** %92, align 8
  %93 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %8, align 8
  %94 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load %struct.ata_ioports*, %struct.ata_ioports** %14, align 8
  %98 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %97, i32 0, i32 4
  store i32* %96, i32** %98, align 8
  %99 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %8, align 8
  %100 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load %struct.ata_ioports*, %struct.ata_ioports** %14, align 8
  %104 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %103, i32 0, i32 3
  store i32* %102, i32** %104, align 8
  %105 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %8, align 8
  %106 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load %struct.ata_ioports*, %struct.ata_ioports** %14, align 8
  %110 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %109, i32 0, i32 2
  store i32* %108, i32** %110, align 8
  %111 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %8, align 8
  %112 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load %struct.ata_ioports*, %struct.ata_ioports** %14, align 8
  %116 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %115, i32 0, i32 1
  store i32* %114, i32** %116, align 8
  %117 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %8, align 8
  %118 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load %struct.ata_ioports*, %struct.ata_ioports** %14, align 8
  %122 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %121, i32 0, i32 0
  store i32* %120, i32** %122, align 8
  %123 = load %struct.ata_port*, %struct.ata_port** %13, align 8
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @ata_port_desc(%struct.ata_port* %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %124)
  %126 = load %struct.ata_host*, %struct.ata_host** %12, align 8
  %127 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %8, align 8
  %128 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ata_bmdma_interrupt, align 4
  %131 = call i32 @ata_host_activate(%struct.ata_host* %126, i32 %129, i32 %130, i32 0, i32* @mpc52xx_ata_sht)
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %22, %19
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local %struct.ata_host* @ata_host_alloc(%struct.device*, i32) #1

declare dso_local i32 @ata_port_desc(%struct.ata_port*, i8*, i64) #1

declare dso_local i32 @ata_host_activate(%struct.ata_host*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
