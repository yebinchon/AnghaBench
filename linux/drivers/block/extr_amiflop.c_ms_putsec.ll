; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_ms_putsec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_ms_putsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dos_header = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ms_putsec.hdr = internal global %struct.dos_header { i32 0, i32 0, i32 0, i32 2, i32 0, %struct.TYPE_4__ { i32 78, i32 78, i32 78, i32 78, i32 78, i32 78, i32 78, i32 78, i32 78, i32 78, i32 78, i32 78, i32 78, i32 78, i32 78, i32 78, i32 78, i32 78, i32 78, i32 78, i32 78, i32 78 }, i32 0, i32 0, i32 0, i32 0 }, align 4
@ms_putsec.crc = internal global [2 x i32] [i32 0, i32 20046], align 4
@unit = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32, i64*, i32)* @ms_putsec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @ms_putsec(i32 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 3
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %16, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 6
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i64*, i64** %5, align 8
  %15 = getelementptr inbounds i64, i64* %14, i32 1
  store i64* %15, i64** %5, align 8
  store i64 2863311530, i64* %14, align 8
  br label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %7, align 4
  br label %10

19:                                               ; preds = %10
  %20 = load i64*, i64** %5, align 8
  %21 = getelementptr inbounds i64, i64* %20, i32 1
  store i64* %21, i64** %5, align 8
  store i64 1149846665, i64* %20, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %23, i64** %5, align 8
  store i64 1149850964, i64* %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @unit, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @unit, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %29, %37
  store i32 %38, i32* getelementptr inbounds (%struct.dos_header, %struct.dos_header* @ms_putsec.hdr, i32 0, i32 1), align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @unit, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @unit, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = srem i32 %44, %52
  store i32 %53, i32* getelementptr inbounds (%struct.dos_header, %struct.dos_header* @ms_putsec.hdr, i32 0, i32 2), align 4
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* getelementptr inbounds (%struct.dos_header, %struct.dos_header* @ms_putsec.hdr, i32 0, i32 3), align 4
  %56 = call i32 @dos_hdr_crc(%struct.dos_header* @ms_putsec.hdr)
  store i32 %56, i32* getelementptr inbounds (%struct.dos_header, %struct.dos_header* @ms_putsec.hdr, i32 0, i32 4), align 4
  %57 = load i64*, i64** %5, align 8
  %58 = bitcast i64* %57 to i32*
  %59 = call i32 @dos_encode_block(i32* %58, i8* bitcast (i32* getelementptr inbounds (%struct.dos_header, %struct.dos_header* @ms_putsec.hdr, i32 0, i32 1) to i8*), i32 28)
  %60 = load i64*, i64** %5, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 14
  store i64* %61, i64** %5, align 8
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %68, %19
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 6
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i64*, i64** %5, align 8
  %67 = getelementptr inbounds i64, i64* %66, i32 1
  store i64* %67, i64** %5, align 8
  store i64 2863311530, i64* %66, align 8
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %62

71:                                               ; preds = %62
  %72 = load i64*, i64** %5, align 8
  %73 = getelementptr inbounds i64, i64* %72, i32 1
  store i64* %73, i64** %5, align 8
  store i64 1149846665, i64* %72, align 8
  %74 = load i64*, i64** %5, align 8
  %75 = getelementptr inbounds i64, i64* %74, i32 1
  store i64* %75, i64** %5, align 8
  store i64 1149850949, i64* %74, align 8
  %76 = load i64*, i64** %5, align 8
  %77 = bitcast i64* %76 to i32*
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @unit, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = load i32, i32* %6, align 4
  %86 = mul nsw i32 %85, 512
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = call i32 @dos_encode_block(i32* %77, i8* %88, i32 512)
  %90 = load i64*, i64** %5, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 256
  store i64* %91, i64** %5, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @unit, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = mul nsw i32 %98, 512
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %97, %100
  %102 = call i32 @dos_data_crc(i64 %101)
  store i32 %102, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @ms_putsec.crc, i64 0, i64 0), align 4
  %103 = load i64*, i64** %5, align 8
  %104 = bitcast i64* %103 to i32*
  %105 = call i32 @dos_encode_block(i32* %104, i8* bitcast ([2 x i32]* @ms_putsec.crc to i8*), i32 4)
  %106 = load i64*, i64** %5, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 2
  store i64* %107, i64** %5, align 8
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %114, %71
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 38
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i64*, i64** %5, align 8
  %113 = getelementptr inbounds i64, i64* %112, i32 1
  store i64* %113, i64** %5, align 8
  store i64 2455016020, i64* %112, align 8
  br label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %108

117:                                              ; preds = %108
  %118 = load i64*, i64** %5, align 8
  ret i64* %118
}

declare dso_local i32 @dos_hdr_crc(%struct.dos_header*) #1

declare dso_local i32 @dos_encode_block(i32*, i8*, i32) #1

declare dso_local i32 @dos_data_crc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
