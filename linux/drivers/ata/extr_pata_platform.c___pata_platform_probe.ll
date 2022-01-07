; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_platform.c___pata_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_platform.c___pata_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.resource = type { i64, i32 }
%struct.scsi_host_template = type { i32 }
%struct.ata_host = type { %struct.ata_port** }
%struct.ata_port = type { i32, %struct.TYPE_3__, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32, i32, i32* }

@IORESOURCE_MEM = common dso_local global i64 0, align 8
@IRQF_TRIGGER_MASK = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ata_sff_port_ops = common dso_local global i32 0, align 4
@ata_cable_unknown = common dso_local global i32 0, align 4
@pata_platform_set_mode = common dso_local global i32 0, align 4
@ata_sff_data_xfer = common dso_local global i32 0, align 4
@ata_sff_data_xfer32 = common dso_local global i32 0, align 4
@ATA_FLAG_SLAVE_POSS = common dso_local global i32 0, align 4
@ATA_FLAG_PIO_POLLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no IRQ, using PIO polling\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to map IO/CTL base\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s cmd 0x%llx ctl 0x%llx\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mmio\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ioport\00", align 1
@ata_sff_interrupt = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pata_platform_probe(%struct.device* %0, %struct.resource* %1, %struct.resource* %2, %struct.resource* %3, i32 %4, i32 %5, %struct.scsi_host_template* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca %struct.resource*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.scsi_host_template*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ata_host*, align 8
  %19 = alloca %struct.ata_port*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %10, align 8
  store %struct.resource* %1, %struct.resource** %11, align 8
  store %struct.resource* %2, %struct.resource** %12, align 8
  store %struct.resource* %3, %struct.resource** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.scsi_host_template* %6, %struct.scsi_host_template** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %23 = load %struct.resource*, %struct.resource** %11, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IORESOURCE_MEM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %8
  %29 = load %struct.resource*, %struct.resource** %12, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IORESOURCE_MEM, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %28, %8
  %35 = phi i1 [ false, %8 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %20, align 4
  %37 = load %struct.resource*, %struct.resource** %13, align 8
  %38 = icmp ne %struct.resource* %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load %struct.resource*, %struct.resource** %13, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load %struct.resource*, %struct.resource** %13, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %21, align 4
  %48 = load %struct.resource*, %struct.resource** %13, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @IRQF_TRIGGER_MASK, align 4
  %52 = sext i32 %51 to i64
  %53 = and i64 %50, %52
  %54 = load i32, i32* @IRQF_SHARED, align 4
  %55 = sext i32 %54 to i64
  %56 = or i64 %53, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %22, align 4
  br label %58

58:                                               ; preds = %44, %39, %34
  %59 = load %struct.device*, %struct.device** %10, align 8
  %60 = call %struct.ata_host* @ata_host_alloc(%struct.device* %59, i32 1)
  store %struct.ata_host* %60, %struct.ata_host** %18, align 8
  %61 = load %struct.ata_host*, %struct.ata_host** %18, align 8
  %62 = icmp ne %struct.ata_host* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %224

66:                                               ; preds = %58
  %67 = load %struct.ata_host*, %struct.ata_host** %18, align 8
  %68 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %67, i32 0, i32 0
  %69 = load %struct.ata_port**, %struct.ata_port*** %68, align 8
  %70 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %69, i64 0
  %71 = load %struct.ata_port*, %struct.ata_port** %70, align 8
  store %struct.ata_port* %71, %struct.ata_port** %19, align 8
  %72 = load %struct.device*, %struct.device** %10, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call %struct.TYPE_4__* @devm_kzalloc(%struct.device* %72, i32 24, i32 %73)
  %75 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %76 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %75, i32 0, i32 3
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %76, align 8
  %77 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %78 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  store i32* @ata_sff_port_ops, i32** %80, align 8
  %81 = load i32, i32* @ata_cable_unknown, align 4
  %82 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %83 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i32 %81, i32* %85, align 8
  %86 = load i32, i32* @pata_platform_set_mode, align 4
  %87 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %88 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %87, i32 0, i32 3
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %66
  %94 = load i32, i32* @ata_sff_data_xfer, align 4
  %95 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %96 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %95, i32 0, i32 3
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 8
  br label %105

99:                                               ; preds = %66
  %100 = load i32, i32* @ata_sff_data_xfer32, align 4
  %101 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %102 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %101, i32 0, i32 3
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 8
  br label %105

105:                                              ; preds = %99, %93
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %108 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @ATA_FLAG_SLAVE_POSS, align 4
  %110 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %111 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load i32, i32* %21, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %105
  %117 = load i32, i32* @ATA_FLAG_PIO_POLLING, align 4
  %118 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %119 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %123 = call i32 (%struct.ata_port*, i8*, ...) @ata_port_desc(%struct.ata_port* %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %124

124:                                              ; preds = %116, %105
  %125 = load i32, i32* %20, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %148

127:                                              ; preds = %124
  %128 = load %struct.device*, %struct.device** %10, align 8
  %129 = load %struct.resource*, %struct.resource** %11, align 8
  %130 = getelementptr inbounds %struct.resource, %struct.resource* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.resource*, %struct.resource** %11, align 8
  %133 = call i32 @resource_size(%struct.resource* %132)
  %134 = call i8* @devm_ioremap(%struct.device* %128, i32 %131, i32 %133)
  %135 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %136 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  store i8* %134, i8** %137, align 8
  %138 = load %struct.device*, %struct.device** %10, align 8
  %139 = load %struct.resource*, %struct.resource** %12, align 8
  %140 = getelementptr inbounds %struct.resource, %struct.resource* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.resource*, %struct.resource** %12, align 8
  %143 = call i32 @resource_size(%struct.resource* %142)
  %144 = call i8* @devm_ioremap(%struct.device* %138, i32 %141, i32 %143)
  %145 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %146 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store i8* %144, i8** %147, align 8
  br label %169

148:                                              ; preds = %124
  %149 = load %struct.device*, %struct.device** %10, align 8
  %150 = load %struct.resource*, %struct.resource** %11, align 8
  %151 = getelementptr inbounds %struct.resource, %struct.resource* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.resource*, %struct.resource** %11, align 8
  %154 = call i32 @resource_size(%struct.resource* %153)
  %155 = call i8* @devm_ioport_map(%struct.device* %149, i32 %152, i32 %154)
  %156 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %157 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 2
  store i8* %155, i8** %158, align 8
  %159 = load %struct.device*, %struct.device** %10, align 8
  %160 = load %struct.resource*, %struct.resource** %12, align 8
  %161 = getelementptr inbounds %struct.resource, %struct.resource* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.resource*, %struct.resource** %12, align 8
  %164 = call i32 @resource_size(%struct.resource* %163)
  %165 = call i8* @devm_ioport_map(%struct.device* %159, i32 %162, i32 %164)
  %166 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %167 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  store i8* %165, i8** %168, align 8
  br label %169

169:                                              ; preds = %148, %127
  %170 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %171 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %177 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %186, label %181

181:                                              ; preds = %175, %169
  %182 = load %struct.device*, %struct.device** %10, align 8
  %183 = call i32 @dev_err(%struct.device* %182, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %9, align 4
  br label %224

186:                                              ; preds = %175
  %187 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %188 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %192 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  store i8* %190, i8** %193, align 8
  %194 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %195 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %194, i32 0, i32 1
  %196 = load i32, i32* %14, align 4
  %197 = call i32 @pata_platform_setup_port(%struct.TYPE_3__* %195, i32 %196)
  %198 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  %199 = load i32, i32* %20, align 4
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %203 = load %struct.resource*, %struct.resource** %11, align 8
  %204 = getelementptr inbounds %struct.resource, %struct.resource* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = load %struct.resource*, %struct.resource** %12, align 8
  %208 = getelementptr inbounds %struct.resource, %struct.resource* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = call i32 (%struct.ata_port*, i8*, ...) @ata_port_desc(%struct.ata_port* %198, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %202, i64 %206, i64 %210)
  %212 = load %struct.ata_host*, %struct.ata_host** %18, align 8
  %213 = load i32, i32* %21, align 4
  %214 = load i32, i32* %21, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %186
  %217 = load i32*, i32** @ata_sff_interrupt, align 8
  br label %219

218:                                              ; preds = %186
  br label %219

219:                                              ; preds = %218, %216
  %220 = phi i32* [ %217, %216 ], [ null, %218 ]
  %221 = load i32, i32* %22, align 4
  %222 = load %struct.scsi_host_template*, %struct.scsi_host_template** %16, align 8
  %223 = call i32 @ata_host_activate(%struct.ata_host* %212, i32 %213, i32* %220, i32 %221, %struct.scsi_host_template* %222)
  store i32 %223, i32* %9, align 4
  br label %224

224:                                              ; preds = %219, %181, %63
  %225 = load i32, i32* %9, align 4
  ret i32 %225
}

declare dso_local %struct.ata_host* @ata_host_alloc(%struct.device*, i32) #1

declare dso_local %struct.TYPE_4__* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ata_port_desc(%struct.ata_port*, i8*, ...) #1

declare dso_local i8* @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i8* @devm_ioport_map(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pata_platform_setup_port(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ata_host_activate(%struct.ata_host*, i32, i32*, i32, %struct.scsi_host_template*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
