; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_via.c_via_do_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_via.c_via_do_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.ata_timing = type { i64, i64, i64, i64, i64, i64 }

@via_do_set_mode.via_clock = internal global i32 33333, align 4
@ATA_TIMING_8BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32, i32, i32)* @via_do_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_do_set_mode(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca %struct.ata_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca %struct.ata_device*, align 8
  %13 = alloca %struct.ata_timing, align 8
  %14 = alloca %struct.ata_timing, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %6, align 8
  store %struct.ata_device* %1, %struct.ata_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %22 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.pci_dev* @to_pci_dev(i32 %26)
  store %struct.pci_dev* %27, %struct.pci_dev** %11, align 8
  %28 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %29 = call %struct.ata_device* @ata_dev_pair(%struct.ata_device* %28)
  store %struct.ata_device* %29, %struct.ata_device** %12, align 8
  %30 = load i32, i32* @via_do_set_mode.via_clock, align 4
  %31 = sdiv i32 1000000000, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %15, align 8
  %33 = load i64, i64* %15, align 8
  store i64 %33, i64* %16, align 8
  %34 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %35 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 2, %36
  %38 = sub nsw i32 3, %37
  %39 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %40 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %10, align 4
  switch i32 %43, label %53 [
    i32 130, label %44
    i32 129, label %47
    i32 128, label %50
  ]

44:                                               ; preds = %5
  %45 = load i64, i64* %15, align 8
  %46 = udiv i64 %45, 2
  store i64 %46, i64* %16, align 8
  br label %53

47:                                               ; preds = %5
  %48 = load i64, i64* %15, align 8
  %49 = udiv i64 %48, 3
  store i64 %49, i64* %16, align 8
  br label %53

50:                                               ; preds = %5
  %51 = load i64, i64* %15, align 8
  %52 = udiv i64 %51, 4
  store i64 %52, i64* %16, align 8
  br label %53

53:                                               ; preds = %5, %50, %47, %44
  %54 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %16, align 8
  %58 = call i32 @ata_timing_compute(%struct.ata_device* %54, i32 %55, %struct.ata_timing* %13, i64 %56, i64 %57)
  %59 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %60 = icmp ne %struct.ata_device* %59, null
  br i1 %60, label %61, label %77

61:                                               ; preds = %53
  %62 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %63 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %68 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %69 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %16, align 8
  %73 = call i32 @ata_timing_compute(%struct.ata_device* %67, i32 %70, %struct.ata_timing* %14, i64 %71, i64 %72)
  %74 = load i32, i32* @ATA_TIMING_8BIT, align 4
  %75 = call i32 @ata_timing_merge(%struct.ata_timing* %14, %struct.ata_timing* %13, %struct.ata_timing* %13, i32 %74)
  br label %76

76:                                               ; preds = %66, %61
  br label %77

77:                                               ; preds = %76, %53
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %77
  %81 = load i32, i32* %18, align 4
  %82 = mul nsw i32 2, %81
  store i32 %82, i32* %20, align 4
  %83 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %84 = call i32 @pci_read_config_byte(%struct.pci_dev* %83, i32 76, i32* %19)
  %85 = load i32, i32* %20, align 4
  %86 = shl i32 3, %85
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %19, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %19, align 4
  %90 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @clamp_val(i64 %91, i32 1, i32 4)
  %93 = sub nsw i32 %92, 1
  %94 = load i32, i32* %20, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* %19, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %19, align 4
  %98 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %99 = load i32, i32* %19, align 4
  %100 = call i32 @pci_write_config_byte(%struct.pci_dev* %98, i32 76, i32 %99)
  br label %101

101:                                              ; preds = %80, %77
  %102 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %103 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %104 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 79, %105
  %107 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @clamp_val(i64 %108, i32 1, i32 16)
  %110 = sub nsw i32 %109, 1
  %111 = shl i32 %110, 4
  %112 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @clamp_val(i64 %113, i32 1, i32 16)
  %115 = sub nsw i32 %114, 1
  %116 = or i32 %111, %115
  %117 = call i32 @pci_write_config_byte(%struct.pci_dev* %102, i32 %106, i32 %116)
  %118 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %119 = load i32, i32* %18, align 4
  %120 = add nsw i32 72, %119
  %121 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @clamp_val(i64 %122, i32 1, i32 16)
  %124 = sub nsw i32 %123, 1
  %125 = shl i32 %124, 4
  %126 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @clamp_val(i64 %127, i32 1, i32 16)
  %129 = sub nsw i32 %128, 1
  %130 = or i32 %125, %129
  %131 = call i32 @pci_write_config_byte(%struct.pci_dev* %118, i32 %120, i32 %130)
  %132 = load i32, i32* %10, align 4
  switch i32 %132, label %134 [
    i32 131, label %133
    i32 130, label %147
    i32 129, label %160
    i32 128, label %173
  ]

133:                                              ; preds = %101
  br label %134

134:                                              ; preds = %101, %133
  %135 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @clamp_val(i64 %140, i32 2, i32 5)
  %142 = sub nsw i32 %141, 2
  %143 = or i32 224, %142
  br label %145

144:                                              ; preds = %134
  br label %145

145:                                              ; preds = %144, %138
  %146 = phi i32 [ %143, %138 ], [ 3, %144 ]
  store i32 %146, i32* %17, align 4
  br label %186

147:                                              ; preds = %101
  %148 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @clamp_val(i64 %153, i32 2, i32 9)
  %155 = sub nsw i32 %154, 2
  %156 = or i32 232, %155
  br label %158

157:                                              ; preds = %147
  br label %158

158:                                              ; preds = %157, %151
  %159 = phi i32 [ %156, %151 ], [ 15, %157 ]
  store i32 %159, i32* %17, align 4
  br label %186

160:                                              ; preds = %101
  %161 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @clamp_val(i64 %166, i32 2, i32 9)
  %168 = sub nsw i32 %167, 2
  %169 = or i32 224, %168
  br label %171

170:                                              ; preds = %160
  br label %171

171:                                              ; preds = %170, %164
  %172 = phi i32 [ %169, %164 ], [ 7, %170 ]
  store i32 %172, i32* %17, align 4
  br label %186

173:                                              ; preds = %101
  %174 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @clamp_val(i64 %179, i32 2, i32 9)
  %181 = sub nsw i32 %180, 2
  %182 = or i32 224, %181
  br label %184

183:                                              ; preds = %173
  br label %184

184:                                              ; preds = %183, %177
  %185 = phi i32 [ %182, %177 ], [ 7, %183 ]
  store i32 %185, i32* %17, align 4
  br label %186

186:                                              ; preds = %184, %171, %158, %145
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %211

189:                                              ; preds = %186
  %190 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %191 = load i32, i32* %18, align 4
  %192 = add nsw i32 80, %191
  %193 = call i32 @pci_read_config_byte(%struct.pci_dev* %190, i32 %192, i32* %21)
  %194 = load i32, i32* %21, align 4
  %195 = and i32 %194, -33
  store i32 %195, i32* %21, align 4
  %196 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %189
  %200 = load i32, i32* %21, align 4
  %201 = and i32 %200, 16
  store i32 %201, i32* %21, align 4
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* %21, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %21, align 4
  br label %205

205:                                              ; preds = %199, %189
  %206 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %207 = load i32, i32* %18, align 4
  %208 = add nsw i32 80, %207
  %209 = load i32, i32* %21, align 4
  %210 = call i32 @pci_write_config_byte(%struct.pci_dev* %206, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %205, %186
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.ata_device* @ata_dev_pair(%struct.ata_device*) #1

declare dso_local i32 @ata_timing_compute(%struct.ata_device*, i32, %struct.ata_timing*, i64, i64) #1

declare dso_local i32 @ata_timing_merge(%struct.ata_timing*, %struct.ata_timing*, %struct.ata_timing*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
