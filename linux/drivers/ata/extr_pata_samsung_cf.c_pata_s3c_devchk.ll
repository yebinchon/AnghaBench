; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_samsung_cf.c_pata_s3c_devchk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_samsung_cf.c_pata_s3c_devchk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.ata_ioports }
%struct.ata_ioports = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, i32)* @pata_s3c_devchk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pata_s3c_devchk(%struct.ata_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_ioports*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 1
  store %struct.ata_ioports* %10, %struct.ata_ioports** %6, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @pata_s3c_dev_select(%struct.ata_port* %11, i32 %12)
  %14 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %18 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ata_outb(i32 %16, i32 85, i32 %19)
  %21 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %22 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %25 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ata_outb(i32 %23, i32 170, i32 %26)
  %28 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %29 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %32 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ata_outb(i32 %30, i32 170, i32 %33)
  %35 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %36 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %39 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ata_outb(i32 %37, i32 85, i32 %40)
  %42 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %43 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %46 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ata_outb(i32 %44, i32 85, i32 %47)
  %49 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %50 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %53 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ata_outb(i32 %51, i32 170, i32 %54)
  %56 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %57 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %60 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ata_inb(i32 %58, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %64 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %67 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ata_inb(i32 %65, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, 85
  br i1 %71, label %72, label %76

72:                                               ; preds = %2
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 170
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 1, i32* %3, align 4
  br label %77

76:                                               ; preds = %72, %2
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %75
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @pata_s3c_dev_select(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_outb(i32, i32, i32) #1

declare dso_local i32 @ata_inb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
