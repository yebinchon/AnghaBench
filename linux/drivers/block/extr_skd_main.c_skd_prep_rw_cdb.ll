; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_prep_rw_cdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_prep_rw_cdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_scsi_request = type { i32* }

@READ = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i32 0, align 4
@WRITE_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_scsi_request*, i32, i32, i32)* @skd_prep_rw_cdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_prep_rw_cdb(%struct.skd_scsi_request* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.skd_scsi_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.skd_scsi_request* %0, %struct.skd_scsi_request** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @READ, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i32, i32* @READ_10, align 4
  %14 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %5, align 8
  %15 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  br label %24

18:                                               ; preds = %4
  %19 = load i32, i32* @WRITE_10, align 4
  %20 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %5, align 8
  %21 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %12
  %25 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %5, align 8
  %26 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, -16777216
  %31 = lshr i32 %30, 24
  %32 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %5, align 8
  %33 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 16711680
  %38 = lshr i32 %37, 16
  %39 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %5, align 8
  %40 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 65280
  %45 = lshr i32 %44, 8
  %46 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %5, align 8
  %47 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 255
  %52 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %5, align 8
  %53 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  store i32 %51, i32* %55, align 4
  %56 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %5, align 8
  %57 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 6
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, 65280
  %62 = lshr i32 %61, 8
  %63 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %5, align 8
  %64 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 7
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 255
  %69 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %5, align 8
  %70 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 8
  store i32 %68, i32* %72, align 4
  %73 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %5, align 8
  %74 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 9
  store i32 0, i32* %76, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
