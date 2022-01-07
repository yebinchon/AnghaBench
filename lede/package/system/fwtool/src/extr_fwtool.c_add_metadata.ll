; ModuleID = '/home/carl/AnghaBench/lede/package/system/fwtool/src/extr_fwtool.c_add_metadata.c'
source_filename = "/home/carl/AnghaBench/lede/package/system/fwtool/src/extr_fwtool.c_add_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwimage_trailer = type { i32, i32 }
%struct.fwimage_header = type { i32 }

@FWIMAGE_INFO = common dso_local global i32 0, align 4
@firmware_file = common dso_local global i32 0, align 4
@metadata_file = common dso_local global i32 0, align 4
@METADATA_MAXLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwimage_trailer*)* @add_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_metadata(%struct.fwimage_trailer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fwimage_trailer*, align 8
  %4 = alloca %struct.fwimage_header, align 4
  store %struct.fwimage_trailer* %0, %struct.fwimage_trailer** %3, align 8
  %5 = bitcast %struct.fwimage_header* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 4, i1 false)
  %6 = load i32, i32* @FWIMAGE_INFO, align 4
  %7 = load %struct.fwimage_trailer*, %struct.fwimage_trailer** %3, align 8
  %8 = getelementptr inbounds %struct.fwimage_trailer, %struct.fwimage_trailer* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load %struct.fwimage_trailer*, %struct.fwimage_trailer** %3, align 8
  %10 = getelementptr inbounds %struct.fwimage_trailer, %struct.fwimage_trailer* %9, i32 0, i32 0
  store i32 12, i32* %10, align 4
  %11 = load %struct.fwimage_trailer*, %struct.fwimage_trailer** %3, align 8
  %12 = call i32 @trailer_update_crc(%struct.fwimage_trailer* %11, %struct.fwimage_header* %4, i32 4)
  %13 = load i32, i32* @firmware_file, align 4
  %14 = call i32 @fwrite(%struct.fwimage_header* %4, i32 4, i32 1, i32 %13)
  %15 = load i32, i32* @metadata_file, align 4
  %16 = load i32, i32* @firmware_file, align 4
  %17 = load %struct.fwimage_trailer*, %struct.fwimage_trailer** %3, align 8
  %18 = load i32, i32* @METADATA_MAXLEN, align 4
  %19 = call i64 @append_data(i32 %15, i32 %16, %struct.fwimage_trailer* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @firmware_file, align 4
  %24 = load %struct.fwimage_trailer*, %struct.fwimage_trailer** %3, align 8
  %25 = call i32 @append_trailer(i32 %23, %struct.fwimage_trailer* %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %21
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @trailer_update_crc(%struct.fwimage_trailer*, %struct.fwimage_header*, i32) #2

declare dso_local i32 @fwrite(%struct.fwimage_header*, i32, i32, i32) #2

declare dso_local i64 @append_data(i32, i32, %struct.fwimage_trailer*, i32) #2

declare dso_local i32 @append_trailer(i32, %struct.fwimage_trailer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
