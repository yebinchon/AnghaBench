; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_via.c_via_tf_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_via.c_via_tf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i64, %struct.via_port*, %struct.ata_ioports }
%struct.via_port = type { i64 }
%struct.ata_ioports = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"hob: feat 0x%X nsect 0x%X, lba 0x%X 0x%X 0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"feat 0x%X nsect 0x%X lba 0x%X 0x%X 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_taskfile*)* @via_tf_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_tf_load(%struct.ata_port* %0, %struct.ata_taskfile* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca %struct.ata_ioports*, align 8
  %6 = alloca %struct.via_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %4, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 2
  store %struct.ata_ioports* %10, %struct.ata_ioports** %5, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 1
  %13 = load %struct.via_port*, %struct.via_port** %12, align 8
  store %struct.via_port* %13, %struct.via_port** %6, align 8
  %14 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %15 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %20 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %2
  %27 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %28 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %31 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @iowrite8(i64 %29, i32 %32)
  %34 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %35 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %38 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %40 = call i32 @ata_wait_idle(%struct.ata_port* %39)
  store i32 1, i32* %8, align 4
  br label %41

41:                                               ; preds = %26, %2
  %42 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %43 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %41
  %49 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %50 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %53 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @iowrite8(i64 %51, i32 %54)
  %56 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %57 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.via_port*, %struct.via_port** %6, align 8
  %60 = getelementptr inbounds %struct.via_port, %struct.via_port* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %73

61:                                               ; preds = %41
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.via_port*, %struct.via_port** %6, align 8
  %66 = getelementptr inbounds %struct.via_port, %struct.via_port* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %69 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @iowrite8(i64 %67, i32 %70)
  br label %72

72:                                               ; preds = %64, %61
  br label %73

73:                                               ; preds = %72, %48
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %142

76:                                               ; preds = %73
  %77 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %78 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %142

83:                                               ; preds = %76
  %84 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %85 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @WARN_ON_ONCE(i32 %89)
  %91 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %92 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %95 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @iowrite8(i64 %93, i32 %96)
  %98 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %99 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %102 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @iowrite8(i64 %100, i32 %103)
  %105 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %106 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %109 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @iowrite8(i64 %107, i32 %110)
  %112 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %113 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %116 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @iowrite8(i64 %114, i32 %117)
  %119 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %120 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %123 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @iowrite8(i64 %121, i32 %124)
  %126 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %127 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %130 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %133 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %136 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %139 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @VPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %128, i64 %131, i64 %134, i64 %137, i64 %140)
  br label %142

142:                                              ; preds = %83, %76, %73
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %197

145:                                              ; preds = %142
  %146 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %147 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %146, i32 0, i32 8
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %150 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @iowrite8(i64 %148, i32 %151)
  %153 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %154 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %153, i32 0, i32 9
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %157 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @iowrite8(i64 %155, i32 %158)
  %160 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %161 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %160, i32 0, i32 10
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %164 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @iowrite8(i64 %162, i32 %165)
  %167 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %168 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %167, i32 0, i32 11
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %171 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @iowrite8(i64 %169, i32 %172)
  %174 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %175 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %174, i32 0, i32 12
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %178 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @iowrite8(i64 %176, i32 %179)
  %181 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %182 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %181, i32 0, i32 8
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %185 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %184, i32 0, i32 9
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %188 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %187, i32 0, i32 10
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %191 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %190, i32 0, i32 11
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %194 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %193, i32 0, i32 12
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @VPRINTK(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %183, i64 %186, i64 %189, i64 %192, i64 %195)
  br label %197

197:                                              ; preds = %145, %142
  %198 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %199 = call i32 @ata_wait_idle(%struct.ata_port* %198)
  ret void
}

declare dso_local i32 @iowrite8(i64, i32) #1

declare dso_local i32 @ata_wait_idle(%struct.ata_port*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @VPRINTK(i8*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
