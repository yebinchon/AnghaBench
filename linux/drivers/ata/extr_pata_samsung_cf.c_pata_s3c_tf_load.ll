; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_samsung_cf.c_pata_s3c_tf_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_samsung_cf.c_pata_s3c_tf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i64, i32, %struct.ata_ioports }
%struct.ata_ioports = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_taskfile*)* @pata_s3c_tf_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pata_s3c_tf_load(%struct.ata_port* %0, %struct.ata_taskfile* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca %struct.ata_ioports*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %4, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 2
  store %struct.ata_ioports* %8, %struct.ata_ioports** %5, align 8
  %9 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %10 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %15 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %26 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %29 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ata_outb(i32 %24, i64 %27, i32 %30)
  %32 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %33 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %36 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %38 = call i32 @ata_wait_idle(%struct.ata_port* %37)
  br label %39

39:                                               ; preds = %21, %2
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %100

42:                                               ; preds = %39
  %43 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %44 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %100

49:                                               ; preds = %42
  %50 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %51 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %54 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %57 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ata_outb(i32 %52, i64 %55, i32 %58)
  %60 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %61 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %64 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %67 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ata_outb(i32 %62, i64 %65, i32 %68)
  %70 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %71 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %74 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %77 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ata_outb(i32 %72, i64 %75, i32 %78)
  %80 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %81 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %84 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %87 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ata_outb(i32 %82, i64 %85, i32 %88)
  %90 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %91 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %94 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %97 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ata_outb(i32 %92, i64 %95, i32 %98)
  br label %100

100:                                              ; preds = %49, %42, %39
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %154

103:                                              ; preds = %100
  %104 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %105 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %108 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %111 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ata_outb(i32 %106, i64 %109, i32 %112)
  %114 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %115 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %118 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %117, i32 0, i32 8
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %121 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ata_outb(i32 %116, i64 %119, i32 %122)
  %124 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %125 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %128 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %127, i32 0, i32 9
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %131 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ata_outb(i32 %126, i64 %129, i32 %132)
  %134 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %135 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %138 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %137, i32 0, i32 10
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %141 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ata_outb(i32 %136, i64 %139, i32 %142)
  %144 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %145 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %148 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %147, i32 0, i32 11
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %151 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ata_outb(i32 %146, i64 %149, i32 %152)
  br label %154

154:                                              ; preds = %103, %100
  %155 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %156 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %154
  %162 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %163 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %166 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %165, i32 0, i32 12
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %169 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ata_outb(i32 %164, i64 %167, i32 %170)
  br label %172

172:                                              ; preds = %161, %154
  %173 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %174 = call i32 @ata_wait_idle(%struct.ata_port* %173)
  ret void
}

declare dso_local i32 @ata_outb(i32, i64, i32) #1

declare dso_local i32 @ata_wait_idle(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
