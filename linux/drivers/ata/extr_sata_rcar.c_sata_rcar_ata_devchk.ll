; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_rcar.c_sata_rcar_ata_devchk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_rcar.c_sata_rcar_ata_devchk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.ata_ioports }
%struct.ata_ioports = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, i32)* @sata_rcar_ata_devchk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_rcar_ata_devchk(%struct.ata_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_ioports*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 0
  store %struct.ata_ioports* %10, %struct.ata_ioports** %6, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @sata_rcar_dev_select(%struct.ata_port* %11, i32 %12)
  %14 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %15 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @iowrite32(i32 85, i32 %16)
  %18 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %19 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @iowrite32(i32 170, i32 %20)
  %22 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %23 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @iowrite32(i32 170, i32 %24)
  %26 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %27 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @iowrite32(i32 85, i32 %28)
  %30 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %31 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @iowrite32(i32 85, i32 %32)
  %34 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %35 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @iowrite32(i32 170, i32 %36)
  %38 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %39 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ioread32(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %43 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ioread32(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 85
  br i1 %47, label %48, label %52

48:                                               ; preds = %2
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 170
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %53

52:                                               ; preds = %48, %2
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @sata_rcar_dev_select(%struct.ata_port*, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @ioread32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
