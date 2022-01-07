; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_amd.c_timing_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_amd.c_timing_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.ata_timing = type { i32, i32, i32, i32, i32, i32 }

@timing_setup.amd_cyc2udma = internal constant [16 x i8] c"\06\06\05\04\00\01\01\02\02\03\03\03\03\03\03\07", align 16
@.str = private unnamed_addr constant [17 x i8] c"unknown mode %d\0A\00", align 1
@ATA_TIMING_8BIT = common dso_local global i32 0, align 4
@XFER_UDMA_5 = common dso_local global i32 0, align 4
@XFER_UDMA_6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32, i32, i32)* @timing_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timing_setup(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca %struct.ata_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca %struct.ata_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ata_timing, align 4
  %15 = alloca %struct.ata_timing, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %6, align 8
  store %struct.ata_device* %1, %struct.ata_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.pci_dev* @to_pci_dev(i32 %24)
  store %struct.pci_dev* %25, %struct.pci_dev** %11, align 8
  %26 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %27 = call %struct.ata_device* @ata_dev_pair(%struct.ata_device* %26)
  store %struct.ata_device* %27, %struct.ata_device** %12, align 8
  %28 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %29 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %30, 2
  %32 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %33 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %13, align 4
  store i32 33333, i32* %18, align 4
  store i32 30000, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %5
  %40 = load i32, i32* %16, align 4
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %17, align 4
  br label %42

42:                                               ; preds = %39, %5
  %43 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = call i64 @ata_timing_compute(%struct.ata_device* %43, i32 %44, %struct.ata_timing* %14, i32 %45, i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %234

54:                                               ; preds = %42
  %55 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %56 = icmp ne %struct.ata_device* %55, null
  br i1 %56, label %57, label %82

57:                                               ; preds = %54
  %58 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %59 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %64 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %65 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %17, align 4
  %69 = call i64 @ata_timing_compute(%struct.ata_device* %63, i32 %66, %struct.ata_timing* %15, i32 %67, i32 %68)
  %70 = load i32, i32* @ATA_TIMING_8BIT, align 4
  %71 = call i32 @ata_timing_merge(%struct.ata_timing* %15, %struct.ata_timing* %14, %struct.ata_timing* %14, i32 %70)
  br label %72

72:                                               ; preds = %62, %57
  %73 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %74 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %75 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %17, align 4
  %79 = call i64 @ata_timing_compute(%struct.ata_device* %73, i32 %76, %struct.ata_timing* %15, i32 %77, i32 %78)
  %80 = load i32, i32* @ATA_TIMING_8BIT, align 4
  %81 = call i32 @ata_timing_merge(%struct.ata_timing* %15, %struct.ata_timing* %14, %struct.ata_timing* %14, i32 %80)
  br label %82

82:                                               ; preds = %72, %54
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @XFER_UDMA_5, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %86, %82
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @XFER_UDMA_6, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  store i32 15, i32* %93, align 4
  br label %94

94:                                               ; preds = %92, %88
  %95 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 12
  %98 = call i32 @pci_read_config_byte(%struct.pci_dev* %95, i32 %97, i32* %19)
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %13, align 4
  %101 = sub nsw i32 3, %100
  %102 = shl i32 %101, 1
  %103 = shl i32 3, %102
  %104 = xor i32 %103, -1
  %105 = and i32 %99, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @clamp_val(i32 %108, i32 1, i32 4)
  %110 = sub i64 %109, 1
  %111 = load i32, i32* %13, align 4
  %112 = sub nsw i32 3, %111
  %113 = shl i32 %112, 1
  %114 = zext i32 %113 to i64
  %115 = shl i64 %110, %114
  %116 = or i64 %106, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %19, align 4
  %118 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 12
  %121 = load i32, i32* %19, align 4
  %122 = call i32 @pci_write_config_byte(%struct.pci_dev* %118, i32 %120, i32 %121)
  %123 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 14
  %126 = load i32, i32* %13, align 4
  %127 = ashr i32 %126, 1
  %128 = sub nsw i32 1, %127
  %129 = add nsw i32 %125, %128
  %130 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @clamp_val(i32 %131, i32 1, i32 16)
  %133 = sub i64 %132, 1
  %134 = shl i64 %133, 4
  %135 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @clamp_val(i32 %136, i32 1, i32 16)
  %138 = sub i64 %137, 1
  %139 = or i64 %134, %138
  %140 = trunc i64 %139 to i32
  %141 = call i32 @pci_write_config_byte(%struct.pci_dev* %123, i32 %129, i32 %140)
  %142 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 8
  %145 = load i32, i32* %13, align 4
  %146 = sub nsw i32 3, %145
  %147 = add nsw i32 %144, %146
  %148 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @clamp_val(i32 %149, i32 1, i32 16)
  %151 = sub i64 %150, 1
  %152 = shl i64 %151, 4
  %153 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @clamp_val(i32 %154, i32 1, i32 16)
  %156 = sub i64 %155, 1
  %157 = or i64 %152, %156
  %158 = trunc i64 %157 to i32
  %159 = call i32 @pci_write_config_byte(%struct.pci_dev* %142, i32 %147, i32 %158)
  %160 = load i32, i32* %10, align 4
  switch i32 %160, label %220 [
    i32 1, label %161
    i32 2, label %175
    i32 3, label %190
    i32 4, label %205
  ]

161:                                              ; preds = %94
  %162 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @clamp_val(i32 %167, i32 2, i32 5)
  %169 = sub i64 %168, 2
  %170 = or i64 192, %169
  br label %172

171:                                              ; preds = %161
  br label %172

172:                                              ; preds = %171, %165
  %173 = phi i64 [ %170, %165 ], [ 3, %171 ]
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %19, align 4
  br label %221

175:                                              ; preds = %94
  %176 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @clamp_val(i32 %181, i32 2, i32 10)
  %183 = getelementptr inbounds [16 x i8], [16 x i8]* @timing_setup.amd_cyc2udma, i64 0, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = or i32 192, %185
  br label %188

187:                                              ; preds = %175
  br label %188

188:                                              ; preds = %187, %179
  %189 = phi i32 [ %186, %179 ], [ 3, %187 ]
  store i32 %189, i32* %19, align 4
  br label %221

190:                                              ; preds = %94
  %191 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @clamp_val(i32 %196, i32 1, i32 10)
  %198 = getelementptr inbounds [16 x i8], [16 x i8]* @timing_setup.amd_cyc2udma, i64 0, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = or i32 192, %200
  br label %203

202:                                              ; preds = %190
  br label %203

203:                                              ; preds = %202, %194
  %204 = phi i32 [ %201, %194 ], [ 3, %202 ]
  store i32 %204, i32* %19, align 4
  br label %221

205:                                              ; preds = %94
  %206 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i64 @clamp_val(i32 %211, i32 1, i32 15)
  %213 = getelementptr inbounds [16 x i8], [16 x i8]* @timing_setup.amd_cyc2udma, i64 0, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = or i32 192, %215
  br label %218

217:                                              ; preds = %205
  br label %218

218:                                              ; preds = %217, %209
  %219 = phi i32 [ %216, %209 ], [ 3, %217 ]
  store i32 %219, i32* %19, align 4
  br label %221

220:                                              ; preds = %94
  br label %234

221:                                              ; preds = %218, %203, %188, %172
  %222 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %221
  %226 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %227, 16
  %229 = load i32, i32* %13, align 4
  %230 = sub nsw i32 3, %229
  %231 = add nsw i32 %228, %230
  %232 = load i32, i32* %19, align 4
  %233 = call i32 @pci_write_config_byte(%struct.pci_dev* %226, i32 %231, i32 %232)
  br label %234

234:                                              ; preds = %49, %220, %225, %221
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.ata_device* @ata_dev_pair(%struct.ata_device*) #1

declare dso_local i64 @ata_timing_compute(%struct.ata_device*, i32, %struct.ata_timing*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ata_timing_merge(%struct.ata_timing*, %struct.ata_timing*, %struct.ata_timing*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
