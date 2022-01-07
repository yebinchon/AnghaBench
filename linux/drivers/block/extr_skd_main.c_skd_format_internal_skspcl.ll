; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_format_internal_skspcl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_format_internal_skspcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { %struct.skd_special_context }
%struct.skd_special_context = type { i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, %struct.fit_sg_descriptor* }
%struct.fit_sg_descriptor = type { i64, i64, i32, i64, i32 }
%struct.TYPE_4__ = type { %struct.skd_scsi_request*, %struct.fit_msg_hdr }
%struct.skd_scsi_request = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.fit_msg_hdr = type { i32, i32 }

@FIT_PROTOCOL_ID_SOFIT = common dso_local global i32 0, align 4
@FIT_SGD_CONTROL_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skd_device*)* @skd_format_internal_skspcl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_format_internal_skspcl(%struct.skd_device* %0) #0 {
  %2 = alloca %struct.skd_device*, align 8
  %3 = alloca %struct.skd_special_context*, align 8
  %4 = alloca %struct.fit_sg_descriptor*, align 8
  %5 = alloca %struct.fit_msg_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.skd_scsi_request*, align 8
  store %struct.skd_device* %0, %struct.skd_device** %2, align 8
  %8 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %9 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %8, i32 0, i32 0
  store %struct.skd_special_context* %9, %struct.skd_special_context** %3, align 8
  %10 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %11 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %12, align 8
  %14 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %13, i64 0
  store %struct.fit_sg_descriptor* %14, %struct.fit_sg_descriptor** %4, align 8
  %15 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %16 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store %struct.fit_msg_hdr* %18, %struct.fit_msg_hdr** %5, align 8
  %19 = load i32, i32* @FIT_PROTOCOL_ID_SOFIT, align 4
  %20 = load %struct.fit_msg_hdr*, %struct.fit_msg_hdr** %5, align 8
  %21 = getelementptr inbounds %struct.fit_msg_hdr, %struct.fit_msg_hdr* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.fit_msg_hdr*, %struct.fit_msg_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.fit_msg_hdr, %struct.fit_msg_hdr* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %25 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %27, align 8
  %29 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %28, i64 0
  store %struct.skd_scsi_request* %29, %struct.skd_scsi_request** %7, align 8
  %30 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %7, align 8
  %31 = call i32 @memset(%struct.skd_scsi_request* %30, i32 0, i32 4)
  %32 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %33 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @cpu_to_be64(i32 %36)
  %38 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %7, align 8
  %39 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %42 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* @FIT_SGD_CONTROL_LAST, align 4
  %45 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %4, align 8
  %46 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %4, align 8
  %48 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %50 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %4, align 8
  %53 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %4, align 8
  %55 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %4, align 8
  %57 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  ret i32 1
}

declare dso_local i32 @memset(%struct.skd_scsi_request*, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
