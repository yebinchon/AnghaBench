; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_adma_tf_to_cpb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_adma_tf_to_cpb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_REG_ERR = common dso_local global i32 0, align 4
@WNB = common dso_local global i32 0, align 4
@ATA_REG_NSECT = common dso_local global i32 0, align 4
@ATA_REG_LBAL = common dso_local global i32 0, align 4
@ATA_REG_LBAM = common dso_local global i32 0, align 4
@ATA_REG_LBAH = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_REG_DEVICE = common dso_local global i32 0, align 4
@ATA_REG_CMD = common dso_local global i32 0, align 4
@CMDEND = common dso_local global i32 0, align 4
@IGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_taskfile*, i32*)* @nv_adma_tf_to_cpb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_adma_tf_to_cpb(%struct.ata_taskfile* %0, i32* %1) #0 {
  %3 = alloca %struct.ata_taskfile*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_taskfile* %0, %struct.ata_taskfile** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %7 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %158

12:                                               ; preds = %2
  %13 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %14 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %94

19:                                               ; preds = %12
  %20 = load i32, i32* @ATA_REG_ERR, align 4
  %21 = shl i32 %20, 8
  %22 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %23 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = load i32, i32* @WNB, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @cpu_to_le16(i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 %28, i32* %33, align 4
  %34 = load i32, i32* @ATA_REG_NSECT, align 4
  %35 = shl i32 %34, 8
  %36 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %37 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  %40 = call i32 @cpu_to_le16(i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %5, align 4
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %40, i32* %45, align 4
  %46 = load i32, i32* @ATA_REG_LBAL, align 4
  %47 = shl i32 %46, 8
  %48 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %49 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %47, %50
  %52 = call i32 @cpu_to_le16(i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  %56 = zext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 %52, i32* %57, align 4
  %58 = load i32, i32* @ATA_REG_LBAM, align 4
  %59 = shl i32 %58, 8
  %60 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %61 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %59, %62
  %64 = call i32 @cpu_to_le16(i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* @ATA_REG_LBAH, align 4
  %71 = shl i32 %70, 8
  %72 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %73 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %71, %74
  %76 = call i32 @cpu_to_le16(i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %5, align 4
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store i32 %76, i32* %81, align 4
  %82 = load i32, i32* @ATA_REG_ERR, align 4
  %83 = shl i32 %82, 8
  %84 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %85 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %83, %86
  %88 = call i32 @cpu_to_le16(i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %5, align 4
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %88, i32* %93, align 4
  br label %109

94:                                               ; preds = %12
  %95 = load i32, i32* @ATA_REG_ERR, align 4
  %96 = shl i32 %95, 8
  %97 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %98 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %96, %99
  %101 = load i32, i32* @WNB, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @cpu_to_le16(i32 %102)
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %5, align 4
  %107 = zext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %103, i32* %108, align 4
  br label %109

109:                                              ; preds = %94, %19
  %110 = load i32, i32* @ATA_REG_NSECT, align 4
  %111 = shl i32 %110, 8
  %112 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %113 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %111, %114
  %116 = call i32 @cpu_to_le16(i32 %115)
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %5, align 4
  %120 = zext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  store i32 %116, i32* %121, align 4
  %122 = load i32, i32* @ATA_REG_LBAL, align 4
  %123 = shl i32 %122, 8
  %124 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %125 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %123, %126
  %128 = call i32 @cpu_to_le16(i32 %127)
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* %5, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %5, align 4
  %132 = zext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  store i32 %128, i32* %133, align 4
  %134 = load i32, i32* @ATA_REG_LBAM, align 4
  %135 = shl i32 %134, 8
  %136 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %137 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %135, %138
  %140 = call i32 @cpu_to_le16(i32 %139)
  %141 = load i32*, i32** %4, align 8
  %142 = load i32, i32* %5, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %5, align 4
  %144 = zext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32 %140, i32* %145, align 4
  %146 = load i32, i32* @ATA_REG_LBAH, align 4
  %147 = shl i32 %146, 8
  %148 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %149 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %148, i32 0, i32 10
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %147, %150
  %152 = call i32 @cpu_to_le16(i32 %151)
  %153 = load i32*, i32** %4, align 8
  %154 = load i32, i32* %5, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %5, align 4
  %156 = zext i32 %154 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  store i32 %152, i32* %157, align 4
  br label %158

158:                                              ; preds = %109, %2
  %159 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %160 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %158
  %166 = load i32, i32* @ATA_REG_DEVICE, align 4
  %167 = shl i32 %166, 8
  %168 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %169 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %168, i32 0, i32 11
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %167, %170
  %172 = call i32 @cpu_to_le16(i32 %171)
  %173 = load i32*, i32** %4, align 8
  %174 = load i32, i32* %5, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %5, align 4
  %176 = zext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  store i32 %172, i32* %177, align 4
  br label %178

178:                                              ; preds = %165, %158
  %179 = load i32, i32* @ATA_REG_CMD, align 4
  %180 = shl i32 %179, 8
  %181 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %182 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %181, i32 0, i32 12
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %180, %183
  %185 = load i32, i32* @CMDEND, align 4
  %186 = or i32 %184, %185
  %187 = call i32 @cpu_to_le16(i32 %186)
  %188 = load i32*, i32** %4, align 8
  %189 = load i32, i32* %5, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %5, align 4
  %191 = zext i32 %189 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  store i32 %187, i32* %192, align 4
  br label %193

193:                                              ; preds = %196, %178
  %194 = load i32, i32* %5, align 4
  %195 = icmp ult i32 %194, 12
  br i1 %195, label %196, label %204

196:                                              ; preds = %193
  %197 = load i32, i32* @IGN, align 4
  %198 = call i32 @cpu_to_le16(i32 %197)
  %199 = load i32*, i32** %4, align 8
  %200 = load i32, i32* %5, align 4
  %201 = add i32 %200, 1
  store i32 %201, i32* %5, align 4
  %202 = zext i32 %200 to i64
  %203 = getelementptr inbounds i32, i32* %199, i64 %202
  store i32 %198, i32* %203, align 4
  br label %193

204:                                              ; preds = %193
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
