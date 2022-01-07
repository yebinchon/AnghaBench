; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_ibm.c_find_vol1_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_ibm.c_find_vol1_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32, i32 }
%struct.hd_geometry = type { i32 }
%union.label_t = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vtoc_format1_label = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"VOL1/%8s:\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@_ascebc = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parsed_partitions*, %struct.hd_geometry*, i32, i8*, %union.label_t*)* @find_vol1_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_vol1_partitions(%struct.parsed_partitions* %0, %struct.hd_geometry* %1, i32 %2, i8* %3, %union.label_t* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.parsed_partitions*, align 8
  %8 = alloca %struct.hd_geometry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %union.label_t*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [64 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.vtoc_format1_label, align 8
  %20 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %7, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %union.label_t* %4, %union.label_t** %11, align 8
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @snprintf(i8* %21, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load %struct.parsed_partitions*, %struct.parsed_partitions** %7, align 8
  %25 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = call i32 @strlcat(i32 %26, i8* %27, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = ashr i32 %30, 9
  store i32 %31, i32* %20, align 4
  %32 = load %union.label_t*, %union.label_t** %11, align 8
  %33 = bitcast %union.label_t* %32 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.hd_geometry*, %struct.hd_geometry** %8, align 8
  %36 = call i32 @cchhb2blk(i32* %34, %struct.hd_geometry* %35)
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %38 = load %struct.parsed_partitions*, %struct.parsed_partitions** %7, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %20, align 4
  %41 = mul nsw i32 %39, %40
  %42 = call i8* @read_part_sector(%struct.parsed_partitions* %38, i32 %41, i32* %15)
  store i8* %42, i8** %16, align 8
  br label %43

43:                                               ; preds = %128, %78, %5
  %44 = load i8*, i8** %16, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %144

46:                                               ; preds = %43
  %47 = load i8*, i8** %16, align 8
  %48 = call i32 @memcpy(%struct.vtoc_format1_label* %19, i8* %47, i32 16)
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @put_dev_sector(i32 %49)
  %51 = getelementptr inbounds %struct.vtoc_format1_label, %struct.vtoc_format1_label* %19, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** @_ascebc, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 52
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %78, label %57

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.vtoc_format1_label, %struct.vtoc_format1_label* %19, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** @_ascebc, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 53
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %78, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.vtoc_format1_label, %struct.vtoc_format1_label* %19, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** @_ascebc, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 55
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.vtoc_format1_label, %struct.vtoc_format1_label* %19, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** @_ascebc, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 57
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %71, %64, %57, %46
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  %81 = load %struct.parsed_partitions*, %struct.parsed_partitions** %7, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %20, align 4
  %84 = mul nsw i32 %82, %83
  %85 = call i8* @read_part_sector(%struct.parsed_partitions* %81, i32 %84, i32* %15)
  store i8* %85, i8** %16, align 8
  br label %43

86:                                               ; preds = %71
  %87 = getelementptr inbounds %struct.vtoc_format1_label, %struct.vtoc_format1_label* %19, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** @_ascebc, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 49
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.vtoc_format1_label, %struct.vtoc_format1_label* %19, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** @_ascebc, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 56
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %144

101:                                              ; preds = %93, %86
  %102 = getelementptr inbounds %struct.vtoc_format1_label, %struct.vtoc_format1_label* %19, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load %struct.hd_geometry*, %struct.hd_geometry** %8, align 8
  %105 = call i32 @cchh2blk(i32* %103, %struct.hd_geometry* %104)
  store i32 %105, i32* %17, align 4
  %106 = getelementptr inbounds %struct.vtoc_format1_label, %struct.vtoc_format1_label* %19, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load %struct.hd_geometry*, %struct.hd_geometry** %8, align 8
  %109 = call i32 @cchh2blk(i32* %107, %struct.hd_geometry* %108)
  %110 = load i32, i32* %17, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load %struct.hd_geometry*, %struct.hd_geometry** %8, align 8
  %113 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %111, %114
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %17, align 4
  %118 = mul nsw i32 %117, %116
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* %18, align 4
  %121 = mul nsw i32 %120, %119
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.parsed_partitions*, %struct.parsed_partitions** %7, align 8
  %124 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp sge i32 %122, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %101
  br label %144

128:                                              ; preds = %101
  %129 = load %struct.parsed_partitions*, %struct.parsed_partitions** %7, align 8
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %18, align 4
  %134 = call i32 @put_partition(%struct.parsed_partitions* %129, i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  %139 = load %struct.parsed_partitions*, %struct.parsed_partitions** %7, align 8
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %20, align 4
  %142 = mul nsw i32 %140, %141
  %143 = call i8* @read_part_sector(%struct.parsed_partitions* %139, i32 %142, i32* %15)
  store i8* %143, i8** %16, align 8
  br label %43

144:                                              ; preds = %127, %100, %43
  %145 = load %struct.parsed_partitions*, %struct.parsed_partitions** %7, align 8
  %146 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @PAGE_SIZE, align 4
  %149 = call i32 @strlcat(i32 %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  %150 = load i8*, i8** %16, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %144
  store i32 -1, i32* %6, align 4
  br label %154

153:                                              ; preds = %144
  store i32 1, i32* %6, align 4
  br label %154

154:                                              ; preds = %153, %152
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @cchhb2blk(i32*, %struct.hd_geometry*) #1

declare dso_local i8* @read_part_sector(%struct.parsed_partitions*, i32, i32*) #1

declare dso_local i32 @memcpy(%struct.vtoc_format1_label*, i8*, i32) #1

declare dso_local i32 @put_dev_sector(i32) #1

declare dso_local i32 @cchh2blk(i32*, %struct.hd_geometry*) #1

declare dso_local i32 @put_partition(%struct.parsed_partitions*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
