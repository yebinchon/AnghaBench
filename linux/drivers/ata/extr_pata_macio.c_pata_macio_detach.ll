; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pata_macio_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pata_macio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_dev = type { i32 }
%struct.ata_host = type { %struct.pata_macio_priv* }
%struct.pata_macio_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macio_dev*)* @pata_macio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pata_macio_detach(%struct.macio_dev* %0) #0 {
  %2 = alloca %struct.macio_dev*, align 8
  %3 = alloca %struct.ata_host*, align 8
  %4 = alloca %struct.pata_macio_priv*, align 8
  store %struct.macio_dev* %0, %struct.macio_dev** %2, align 8
  %5 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %6 = call %struct.ata_host* @macio_get_drvdata(%struct.macio_dev* %5)
  store %struct.ata_host* %6, %struct.ata_host** %3, align 8
  %7 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %8 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %7, i32 0, i32 0
  %9 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %8, align 8
  store %struct.pata_macio_priv* %9, %struct.pata_macio_priv** %4, align 8
  %10 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %4, align 8
  %11 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @lock_media_bay(i32 %14)
  %16 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %4, align 8
  %17 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %21 = call i32 @ata_host_detach(%struct.ata_host* %20)
  %22 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %4, align 8
  %23 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @unlock_media_bay(i32 %26)
  ret i32 0
}

declare dso_local %struct.ata_host* @macio_get_drvdata(%struct.macio_dev*) #1

declare dso_local i32 @lock_media_bay(i32) #1

declare dso_local i32 @ata_host_detach(%struct.ata_host*) #1

declare dso_local i32 @unlock_media_bay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
