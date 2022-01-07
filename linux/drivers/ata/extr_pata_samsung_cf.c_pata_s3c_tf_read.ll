; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_samsung_cf.c_pata_s3c_tf_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_samsung_cf.c_pata_s3c_tf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, i32, %struct.ata_ioports }
%struct.ata_ioports = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_HOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_taskfile*)* @pata_s3c_tf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pata_s3c_tf_read(%struct.ata_port* %0, %struct.ata_taskfile* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca %struct.ata_ioports*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %4, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 2
  store %struct.ata_ioports* %7, %struct.ata_ioports** %5, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %12 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @ata_inb(i32 %10, i32 %13)
  %15 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %16 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %15, i32 0, i32 12
  store i8* %14, i8** %16, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %21 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @ata_inb(i32 %19, i32 %22)
  %24 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %25 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %24, i32 0, i32 11
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %27 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %30 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @ata_inb(i32 %28, i32 %31)
  %33 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %34 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %33, i32 0, i32 10
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %36 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %39 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @ata_inb(i32 %37, i32 %40)
  %42 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %43 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %42, i32 0, i32 9
  store i8* %41, i8** %43, align 8
  %44 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %45 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %48 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @ata_inb(i32 %46, i32 %49)
  %51 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %52 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %51, i32 0, i32 8
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %54 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %57 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @ata_inb(i32 %55, i32 %58)
  %60 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %61 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %60, i32 0, i32 7
  store i8* %59, i8** %61, align 8
  %62 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %63 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %141

68:                                               ; preds = %2
  %69 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %70 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %73 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ATA_HOB, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %78 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ata_outb(i32 %71, i32 %76, i32 %79)
  %81 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %82 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %85 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @ata_inb(i32 %83, i32 %86)
  %88 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %89 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %88, i32 0, i32 6
  store i8* %87, i8** %89, align 8
  %90 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %91 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %94 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @ata_inb(i32 %92, i32 %95)
  %97 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %98 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %100 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %103 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @ata_inb(i32 %101, i32 %104)
  %106 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %107 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  %108 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %109 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %112 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @ata_inb(i32 %110, i32 %113)
  %115 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %116 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %118 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %121 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @ata_inb(i32 %119, i32 %122)
  %124 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %125 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  %126 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %127 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %130 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %133 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ata_outb(i32 %128, i32 %131, i32 %134)
  %136 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %137 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %140 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %68, %2
  ret void
}

declare dso_local i8* @ata_inb(i32, i32) #1

declare dso_local i32 @ata_outb(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
