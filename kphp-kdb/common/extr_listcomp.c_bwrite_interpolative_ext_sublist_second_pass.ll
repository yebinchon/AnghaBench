; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_interpolative_ext_sublist_second_pass.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_interpolative_ext_sublist_second_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitwriter = type { i32 }
%struct.left_subtree_bits_array = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitwriter*, i32*, i32, i32, i32, %struct.left_subtree_bits_array*, i32*)* @bwrite_interpolative_ext_sublist_second_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwrite_interpolative_ext_sublist_second_pass(%struct.bitwriter* %0, i32* %1, i32 %2, i32 %3, i32 %4, %struct.left_subtree_bits_array* %5, i32* %6) #0 {
  %8 = alloca %struct.bitwriter*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.left_subtree_bits_array*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.bitwriter* %0, %struct.bitwriter** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.left_subtree_bits_array* %5, %struct.left_subtree_bits_array** %13, align 8
  store i32* %6, i32** %14, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp sle i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %7
  br label %143

29:                                               ; preds = %7
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %30, %31
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %16, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %16, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sub nsw i32 %38, %41
  store i32 %42, i32* %17, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %10, align 4
  %50 = sub nsw i32 %48, %49
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %18, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %18, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %18, align 4
  %61 = sub nsw i32 %59, %60
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %20, align 4
  %63 = load %struct.bitwriter*, %struct.bitwriter** %8, align 8
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %20, align 4
  %66 = call i32 @bwrite_interpolative_encode_value(%struct.bitwriter* %63, i32 %64, i32 %65)
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %127

70:                                               ; preds = %29
  %71 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %13, align 8
  %72 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %13, align 8
  %75 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %73, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %13, align 8
  %81 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %13, align 8
  %84 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %21, align 4
  %88 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %13, align 8
  %89 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %103

94:                                               ; preds = %70
  %95 = load i32, i32* %21, align 4
  %96 = add nsw i32 %95, 1
  %97 = call i64 @get_gamma_code_length(i32 %96)
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %97
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  br label %103

103:                                              ; preds = %94, %70
  %104 = load %struct.bitwriter*, %struct.bitwriter** %8, align 8
  %105 = load i32, i32* %21, align 4
  %106 = add nsw i32 %105, 1
  %107 = call i32 @bwrite_gamma_code(%struct.bitwriter* %104, i32 %106)
  %108 = load %struct.bitwriter*, %struct.bitwriter** %8, align 8
  %109 = call i32 @bwrite_get_bits_written(%struct.bitwriter* %108)
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %22, align 4
  %111 = load %struct.bitwriter*, %struct.bitwriter** %8, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %13, align 8
  %117 = load i32*, i32** %14, align 8
  call void @bwrite_interpolative_ext_sublist_second_pass(%struct.bitwriter* %111, i32* %112, i32 %113, i32 %114, i32 %115, %struct.left_subtree_bits_array* %116, i32* %117)
  %118 = load %struct.bitwriter*, %struct.bitwriter** %8, align 8
  %119 = call i32 @bwrite_get_bits_written(%struct.bitwriter* %118)
  %120 = load i32, i32* %22, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %22, align 4
  %122 = load i32, i32* %21, align 4
  %123 = load i32, i32* %22, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  br label %135

127:                                              ; preds = %29
  %128 = load %struct.bitwriter*, %struct.bitwriter** %8, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %13, align 8
  %134 = load i32*, i32** %14, align 8
  call void @bwrite_interpolative_ext_sublist_second_pass(%struct.bitwriter* %128, i32* %129, i32 %130, i32 %131, i32 %132, %struct.left_subtree_bits_array* %133, i32* %134)
  br label %135

135:                                              ; preds = %127, %103
  %136 = load %struct.bitwriter*, %struct.bitwriter** %8, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %13, align 8
  %142 = load i32*, i32** %14, align 8
  call void @bwrite_interpolative_ext_sublist_second_pass(%struct.bitwriter* %136, i32* %137, i32 %138, i32 %139, i32 %140, %struct.left_subtree_bits_array* %141, i32* %142)
  br label %143

143:                                              ; preds = %135, %28
  ret void
}

declare dso_local i32 @bwrite_interpolative_encode_value(%struct.bitwriter*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_gamma_code_length(i32) #1

declare dso_local i32 @bwrite_gamma_code(%struct.bitwriter*, i32) #1

declare dso_local i32 @bwrite_get_bits_written(%struct.bitwriter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
