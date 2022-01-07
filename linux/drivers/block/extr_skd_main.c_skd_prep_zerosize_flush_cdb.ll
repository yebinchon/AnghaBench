; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_prep_zerosize_flush_cdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_prep_zerosize_flush_cdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_scsi_request = type { i64* }
%struct.skd_request_context = type { i32 }

@SYNCHRONIZE_CACHE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_scsi_request*, %struct.skd_request_context*)* @skd_prep_zerosize_flush_cdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_prep_zerosize_flush_cdb(%struct.skd_scsi_request* %0, %struct.skd_request_context* %1) #0 {
  %3 = alloca %struct.skd_scsi_request*, align 8
  %4 = alloca %struct.skd_request_context*, align 8
  store %struct.skd_scsi_request* %0, %struct.skd_scsi_request** %3, align 8
  store %struct.skd_request_context* %1, %struct.skd_request_context** %4, align 8
  %5 = load %struct.skd_request_context*, %struct.skd_request_context** %4, align 8
  %6 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = load i64, i64* @SYNCHRONIZE_CACHE, align 8
  %8 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %3, align 8
  %9 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  store i64 %7, i64* %11, align 8
  %12 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %3, align 8
  %13 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %3, align 8
  %17 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %3, align 8
  %21 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %3, align 8
  %25 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %3, align 8
  %29 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %3, align 8
  %33 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 6
  store i64 0, i64* %35, align 8
  %36 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %3, align 8
  %37 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 7
  store i64 0, i64* %39, align 8
  %40 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %3, align 8
  %41 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 8
  store i64 0, i64* %43, align 8
  %44 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %3, align 8
  %45 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 9
  store i64 0, i64* %47, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
