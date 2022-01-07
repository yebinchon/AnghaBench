; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_reuse_partial_packfile_from_bitmap.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_reuse_partial_packfile_from_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_index = type { i64, %struct.packed_git*, %struct.bitmap*, %struct.TYPE_3__* }
%struct.packed_git = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bitmap = type { i64, i32* }
%struct.TYPE_3__ = type { %struct.revindex_entry* }
%struct.revindex_entry = type { i32 }

@reuse_partial_packfile_from_bitmap.REUSE_PERCENT = internal constant double 9.000000e-01, align 8
@BITS_IN_EWORD = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reuse_partial_packfile_from_bitmap(%struct.bitmap_index* %0, %struct.packed_git** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap_index*, align 8
  %7 = alloca %struct.packed_git**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bitmap*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.bitmap_index* %0, %struct.bitmap_index** %6, align 8
  store %struct.packed_git** %1, %struct.packed_git*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %15 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %14, i32 0, i32 2
  %16 = load %struct.bitmap*, %struct.bitmap** %15, align 8
  store %struct.bitmap* %16, %struct.bitmap** %10, align 8
  store i64 0, i64* %13, align 8
  %17 = load %struct.bitmap*, %struct.bitmap** %10, align 8
  %18 = call i32 @assert(%struct.bitmap* %17)
  store i64 0, i64* %12, align 8
  br label %19

19:                                               ; preds = %48, %4
  %20 = load i64, i64* %12, align 8
  %21 = load %struct.bitmap*, %struct.bitmap** %10, align 8
  %22 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %19
  %26 = load %struct.bitmap*, %struct.bitmap** %10, align 8
  %27 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %12, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  %34 = load %struct.bitmap*, %struct.bitmap** %10, align 8
  %35 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %39, -1
  %41 = call i64 @ewah_bit_ctz64(i32 %40)
  %42 = load i64, i64* %13, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %13, align 8
  br label %51

44:                                               ; preds = %25
  %45 = load i64, i64* @BITS_IN_EWORD, align 8
  %46 = load i64, i64* %13, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %13, align 8
  br label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %12, align 8
  br label %19

51:                                               ; preds = %33, %19
  %52 = load i64, i64* %13, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %107

55:                                               ; preds = %51
  %56 = load i64, i64* %13, align 8
  %57 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %58 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %57, i32 0, i32 1
  %59 = load %struct.packed_git*, %struct.packed_git** %58, align 8
  %60 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp uge i64 %56, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %55
  %64 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %65 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %64, i32 0, i32 1
  %66 = load %struct.packed_git*, %struct.packed_git** %65, align 8
  %67 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %8, align 8
  store i64 %68, i64* %69, align 8
  %70 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %71 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load i32*, i32** %9, align 8
  store i32 -1, i32* %72, align 4
  %73 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %74 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %73, i32 0, i32 1
  %75 = load %struct.packed_git*, %struct.packed_git** %74, align 8
  %76 = load %struct.packed_git**, %struct.packed_git*** %7, align 8
  store %struct.packed_git* %75, %struct.packed_git** %76, align 8
  store i32 0, i32* %5, align 4
  br label %107

77:                                               ; preds = %55
  %78 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %79 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %78, i32 0, i32 2
  %80 = load %struct.bitmap*, %struct.bitmap** %79, align 8
  %81 = call double @bitmap_popcount(%struct.bitmap* %80)
  %82 = fmul double %81, 9.000000e-01
  %83 = fptoui double %82 to i64
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %11, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  store i32 -1, i32* %5, align 4
  br label %107

88:                                               ; preds = %77
  %89 = load i64, i64* %13, align 8
  %90 = load i64*, i64** %8, align 8
  store i64 %89, i64* %90, align 8
  %91 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %92 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %91, i32 0, i32 0
  store i64 %89, i64* %92, align 8
  %93 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %94 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %93, i32 0, i32 1
  %95 = load %struct.packed_git*, %struct.packed_git** %94, align 8
  %96 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i64, i64* %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  %103 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %104 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %103, i32 0, i32 1
  %105 = load %struct.packed_git*, %struct.packed_git** %104, align 8
  %106 = load %struct.packed_git**, %struct.packed_git*** %7, align 8
  store %struct.packed_git* %105, %struct.packed_git** %106, align 8
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %88, %87, %63, %54
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @assert(%struct.bitmap*) #1

declare dso_local i64 @ewah_bit_ctz64(i32) #1

declare dso_local double @bitmap_popcount(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
