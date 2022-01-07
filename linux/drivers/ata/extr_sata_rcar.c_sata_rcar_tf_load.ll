; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_rcar.c_sata_rcar_tf_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_rcar.c_sata_rcar_tf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i64, %struct.ata_ioports }
%struct.ata_ioports = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"hob: feat 0x%X nsect 0x%X, lba 0x%X 0x%X 0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"feat 0x%X nsect 0x%X lba 0x%X 0x%X 0x%X\0A\00", align 1
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"device 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_taskfile*)* @sata_rcar_tf_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sata_rcar_tf_load(%struct.ata_port* %0, %struct.ata_taskfile* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca %struct.ata_ioports*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %4, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 1
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
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %23 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %26 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @iowrite32(i64 %24, i32 %27)
  %29 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %30 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %33 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %35 = call i32 @ata_wait_idle(%struct.ata_port* %34)
  br label %36

36:                                               ; preds = %21, %2
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %98

39:                                               ; preds = %36
  %40 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %41 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %98

46:                                               ; preds = %39
  %47 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %48 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %51 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @iowrite32(i64 %49, i32 %52)
  %54 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %55 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %58 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @iowrite32(i64 %56, i32 %59)
  %61 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %62 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %65 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @iowrite32(i64 %63, i32 %66)
  %68 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %69 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %72 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @iowrite32(i64 %70, i32 %73)
  %75 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %76 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %79 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @iowrite32(i64 %77, i32 %80)
  %82 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %83 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %86 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %89 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %92 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %95 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %94, i32 0, i32 6
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (i8*, i64, ...) @VPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %84, i64 %87, i64 %90, i64 %93, i64 %96)
  br label %98

98:                                               ; preds = %46, %39, %36
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %153

101:                                              ; preds = %98
  %102 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %103 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %102, i32 0, i32 7
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %106 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @iowrite32(i64 %104, i32 %107)
  %109 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %110 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %109, i32 0, i32 8
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %113 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @iowrite32(i64 %111, i32 %114)
  %116 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %117 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %116, i32 0, i32 9
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %120 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @iowrite32(i64 %118, i32 %121)
  %123 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %124 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %123, i32 0, i32 10
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %127 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @iowrite32(i64 %125, i32 %128)
  %130 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %131 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %130, i32 0, i32 11
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %134 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @iowrite32(i64 %132, i32 %135)
  %137 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %138 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %137, i32 0, i32 7
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %141 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %140, i32 0, i32 8
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %144 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %143, i32 0, i32 9
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %147 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %146, i32 0, i32 10
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %150 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %149, i32 0, i32 11
  %151 = load i64, i64* %150, align 8
  %152 = call i32 (i8*, i64, ...) @VPRINTK(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %139, i64 %142, i64 %145, i64 %148, i64 %151)
  br label %153

153:                                              ; preds = %101, %98
  %154 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %155 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %153
  %161 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %162 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %161, i32 0, i32 12
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %165 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @iowrite32(i64 %163, i32 %166)
  %168 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %169 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %168, i32 0, i32 12
  %170 = load i64, i64* %169, align 8
  %171 = call i32 (i8*, i64, ...) @VPRINTK(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %170)
  br label %172

172:                                              ; preds = %160, %153
  %173 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %174 = call i32 @ata_wait_idle(%struct.ata_port* %173)
  ret void
}

declare dso_local i32 @iowrite32(i64, i32) #1

declare dso_local i32 @ata_wait_idle(%struct.ata_port*) #1

declare dso_local i32 @VPRINTK(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
