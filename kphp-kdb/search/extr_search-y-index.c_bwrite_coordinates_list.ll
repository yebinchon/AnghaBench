; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-index.c_bwrite_coordinates_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-index.c_bwrite_coordinates_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitwriter = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.list_encoder = type { %struct.TYPE_4__, i32 (%struct.list_encoder*, i32)* }
%struct.TYPE_4__ = type { i32, i32 }

@tot_items = common dso_local global i64 0, align 8
@coordinate_bits = common dso_local global i32 0, align 4
@item_positions = common dso_local global i32* null, align 8
@le_golomb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitwriter*, %struct.TYPE_5__*, i32)* @bwrite_coordinates_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwrite_coordinates_list(%struct.bitwriter* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca %struct.bitwriter*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_encoder, align 8
  %9 = alloca i32, align 4
  store %struct.bitwriter* %0, %struct.bitwriter** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @tot_items, align 8
  %19 = icmp ult i64 %17, %18
  br label %20

20:                                               ; preds = %14, %3
  %21 = phi i1 [ false, %3 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %25 = call i64 @bwrite_get_bits_written(%struct.bitwriter* %24)
  %26 = load i32, i32* @coordinate_bits, align 4
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* @coordinate_bits, align 4
  %30 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @bwrite_gamma_code(%struct.bitwriter* %30, i32 %31)
  %33 = load i32*, i32** @item_positions, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %20
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sle i32 %42, %43
  br label %45

45:                                               ; preds = %41, %20
  %46 = phi i1 [ false, %20 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32*, i32** @item_positions, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %57 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %60 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @le_golomb, align 4
  %63 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %64 = call i64 @bwrite_get_bits_written(%struct.bitwriter* %63)
  %65 = call i32 @list_encoder_init(%struct.list_encoder* %8, i32 %54, i32 %55, i32 %58, i32 %61, i32 %62, i64 %64)
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %122, %45
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %125

70:                                               ; preds = %66
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %76, 1
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = icmp sle i32 %84, %85
  br label %87

87:                                               ; preds = %78, %70
  %88 = phi i1 [ false, %70 ], [ %86, %78 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %87
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %100, %106
  br label %108

108:                                              ; preds = %93, %87
  %109 = phi i1 [ true, %87 ], [ %107, %93 ]
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %8, i32 0, i32 1
  %113 = load i32 (%struct.list_encoder*, i32)*, i32 (%struct.list_encoder*, i32)** %112, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %119, 1
  %121 = call i32 %113(%struct.list_encoder* %8, i32 %120)
  br label %122

122:                                              ; preds = %108
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %66

125:                                              ; preds = %66
  %126 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %8, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %130 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %8, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %135 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load %struct.bitwriter*, %struct.bitwriter** %4, align 8
  %137 = call i64 @bwrite_get_bits_written(%struct.bitwriter* %136)
  %138 = load i32, i32* @coordinate_bits, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* @coordinate_bits, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @bwrite_get_bits_written(%struct.bitwriter*) #1

declare dso_local i32 @bwrite_gamma_code(%struct.bitwriter*, i32) #1

declare dso_local i32 @list_encoder_init(%struct.list_encoder*, i32, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
