; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_svw.c_k2_sata_tf_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_svw.c_k2_sata_tf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i64, %struct.ata_ioports }
%struct.ata_ioports = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }

@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_taskfile*)* @k2_sata_tf_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k2_sata_tf_load(%struct.ata_port* %0, %struct.ata_taskfile* %1) #0 {
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
  %28 = call i32 @writeb(i64 %24, i32 %27)
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
  br i1 %38, label %39, label %112

39:                                               ; preds = %36
  %40 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %41 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %112

46:                                               ; preds = %39
  %47 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %48 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %51 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %50, i32 0, i32 12
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = shl i32 %53, 8
  %55 = or i32 %49, %54
  %56 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %57 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @writew(i32 %55, i32 %58)
  %60 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %61 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %64 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %63, i32 0, i32 11
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = shl i32 %66, 8
  %68 = or i32 %62, %67
  %69 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %70 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @writew(i32 %68, i32 %71)
  %73 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %74 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %77 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %76, i32 0, i32 10
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = shl i32 %79, 8
  %81 = or i32 %75, %80
  %82 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %83 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @writew(i32 %81, i32 %84)
  %86 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %87 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %90 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %89, i32 0, i32 9
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = shl i32 %92, 8
  %94 = or i32 %88, %93
  %95 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %96 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @writew(i32 %94, i32 %97)
  %99 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %100 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %103 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %102, i32 0, i32 8
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = shl i32 %105, 8
  %107 = or i32 %101, %106
  %108 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %109 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @writew(i32 %107, i32 %110)
  br label %152

112:                                              ; preds = %39, %36
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %151

115:                                              ; preds = %112
  %116 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %117 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %120 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @writew(i32 %118, i32 %121)
  %123 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %124 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %127 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @writew(i32 %125, i32 %128)
  %130 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %131 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %134 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @writew(i32 %132, i32 %135)
  %137 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %138 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %141 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @writew(i32 %139, i32 %142)
  %144 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %145 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %148 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @writew(i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %115, %112
  br label %152

152:                                              ; preds = %151, %46
  %153 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %154 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %152
  %160 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %161 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %160, i32 0, i32 7
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %164 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @writeb(i64 %162, i32 %165)
  br label %167

167:                                              ; preds = %159, %152
  %168 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %169 = call i32 @ata_wait_idle(%struct.ata_port* %168)
  ret void
}

declare dso_local i32 @writeb(i64, i32) #1

declare dso_local i32 @ata_wait_idle(%struct.ata_port*) #1

declare dso_local i32 @writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
