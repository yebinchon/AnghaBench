; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-index.c_bwrite_ylist_sublist_second_pass.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-index.c_bwrite_ylist_sublist_second_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitwriter = type { i32 }
%struct.left_subtree_bits_array = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitwriter*, i32*, i32*, i32, i32, i32, %struct.left_subtree_bits_array*)* @bwrite_ylist_sublist_second_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwrite_ylist_sublist_second_pass(%struct.bitwriter* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, %struct.left_subtree_bits_array* %6) #0 {
  %8 = alloca %struct.bitwriter*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.left_subtree_bits_array*, align 8
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
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.left_subtree_bits_array* %6, %struct.left_subtree_bits_array** %14, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp sle i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %7
  br label %150

29:                                               ; preds = %7
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %30, %31
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %16, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @get_doc_id(i32* %34, i32* %35, i32 %36)
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %16, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sub nsw i32 %37, %40
  store i32 %41, i32* %17, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @get_doc_id(i32* %42, i32* %43, i32 %44)
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sub nsw i32 %46, %47
  %49 = add nsw i32 %45, %48
  store i32 %49, i32* %18, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @get_doc_id(i32* %50, i32* %51, i32 %52)
  %54 = load i32, i32* %18, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %18, align 4
  %58 = sub nsw i32 %56, %57
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %20, align 4
  %60 = load %struct.bitwriter*, %struct.bitwriter** %8, align 8
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %20, align 4
  %63 = call i32 @bwrite_interpolative_encode_value(%struct.bitwriter* %60, i32 %61, i32 %62)
  %64 = load %struct.bitwriter*, %struct.bitwriter** %8, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %65, i64 %71
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %78, %83
  %85 = call i32 @bwrite_coordinates_list(%struct.bitwriter* %64, i32* %72, i32 %84)
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %134

89:                                               ; preds = %29
  %90 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %14, align 8
  %91 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %14, align 8
  %94 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %92, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %14, align 8
  %100 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %14, align 8
  %103 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %21, align 4
  %107 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %14, align 8
  %108 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %108, align 8
  %111 = load %struct.bitwriter*, %struct.bitwriter** %8, align 8
  %112 = load i32, i32* %21, align 4
  %113 = add nsw i32 %112, 1
  %114 = call i32 @bwrite_gamma_code(%struct.bitwriter* %111, i32 %113)
  %115 = load %struct.bitwriter*, %struct.bitwriter** %8, align 8
  %116 = call i32 @bwrite_get_bits_written(%struct.bitwriter* %115)
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %22, align 4
  %118 = load %struct.bitwriter*, %struct.bitwriter** %8, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %14, align 8
  call void @bwrite_ylist_sublist_second_pass(%struct.bitwriter* %118, i32* %119, i32* %120, i32 %121, i32 %122, i32 %123, %struct.left_subtree_bits_array* %124)
  %125 = load %struct.bitwriter*, %struct.bitwriter** %8, align 8
  %126 = call i32 @bwrite_get_bits_written(%struct.bitwriter* %125)
  %127 = load i32, i32* %22, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %22, align 4
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %22, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  br label %142

134:                                              ; preds = %29
  %135 = load %struct.bitwriter*, %struct.bitwriter** %8, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %14, align 8
  call void @bwrite_ylist_sublist_second_pass(%struct.bitwriter* %135, i32* %136, i32* %137, i32 %138, i32 %139, i32 %140, %struct.left_subtree_bits_array* %141)
  br label %142

142:                                              ; preds = %134, %89
  %143 = load %struct.bitwriter*, %struct.bitwriter** %8, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %14, align 8
  call void @bwrite_ylist_sublist_second_pass(%struct.bitwriter* %143, i32* %144, i32* %145, i32 %146, i32 %147, i32 %148, %struct.left_subtree_bits_array* %149)
  br label %150

150:                                              ; preds = %142, %28
  ret void
}

declare dso_local i32 @get_doc_id(i32*, i32*, i32) #1

declare dso_local i32 @bwrite_interpolative_encode_value(%struct.bitwriter*, i32, i32) #1

declare dso_local i32 @bwrite_coordinates_list(%struct.bitwriter*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bwrite_gamma_code(%struct.bitwriter*, i32) #1

declare dso_local i32 @bwrite_get_bits_written(%struct.bitwriter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
