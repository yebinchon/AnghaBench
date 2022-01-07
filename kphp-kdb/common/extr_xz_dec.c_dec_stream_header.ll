; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_dec_stream_header.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_dec_stream_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@HEADER_MAGIC = common dso_local global i32 0, align 4
@HEADER_MAGIC_SIZE = common dso_local global i32 0, align 4
@XZ_FORMAT_ERROR = common dso_local global i32 0, align 4
@XZ_DATA_ERROR = common dso_local global i32 0, align 4
@XZ_OPTIONS_ERROR = common dso_local global i32 0, align 4
@XZ_CHECK_CRC32 = common dso_local global i64 0, align 8
@XZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xz_dec*)* @dec_stream_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dec_stream_header(%struct.xz_dec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xz_dec*, align 8
  store %struct.xz_dec* %0, %struct.xz_dec** %3, align 8
  %4 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %5 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load i32, i32* @HEADER_MAGIC, align 4
  %9 = load i32, i32* @HEADER_MAGIC_SIZE, align 4
  %10 = call i32 @memeq(i64* %7, i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @XZ_FORMAT_ERROR, align 4
  store i32 %13, i32* %2, align 4
  br label %68

14:                                               ; preds = %1
  %15 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %16 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* @HEADER_MAGIC_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = call i64 @xz_crc32(i64* %21, i32 2, i32 0)
  %23 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %24 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* @HEADER_MAGIC_SIZE, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = getelementptr inbounds i64, i64* %29, i64 2
  %31 = call i64 @get_le32(i64* %30)
  %32 = icmp ne i64 %22, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %14
  %34 = load i32, i32* @XZ_DATA_ERROR, align 4
  store i32 %34, i32* %2, align 4
  br label %68

35:                                               ; preds = %14
  %36 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %37 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* @HEADER_MAGIC_SIZE, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @XZ_OPTIONS_ERROR, align 4
  store i32 %46, i32* %2, align 4
  br label %68

47:                                               ; preds = %35
  %48 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %49 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* @HEADER_MAGIC_SIZE, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %58 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %60 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @XZ_CHECK_CRC32, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %47
  %65 = load i32, i32* @XZ_OPTIONS_ERROR, align 4
  store i32 %65, i32* %2, align 4
  br label %68

66:                                               ; preds = %47
  %67 = load i32, i32* @XZ_OK, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %64, %45, %33, %12
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @memeq(i64*, i32, i32) #1

declare dso_local i64 @xz_crc32(i64*, i32, i32) #1

declare dso_local i64 @get_le32(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
