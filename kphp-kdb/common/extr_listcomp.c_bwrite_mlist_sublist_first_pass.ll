; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_mlist_sublist_first_pass.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_mlist_sublist_first_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitwriter = type { i32 }
%struct.left_subtree_bits_array = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitwriter*, i32*, i32*, i32, i32, i32, %struct.left_subtree_bits_array*, i32)* @bwrite_mlist_sublist_first_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwrite_mlist_sublist_first_pass(%struct.bitwriter* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, %struct.left_subtree_bits_array* %6, i32 %7) #0 {
  %9 = alloca %struct.bitwriter*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.left_subtree_bits_array*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.bitwriter* %0, %struct.bitwriter** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.left_subtree_bits_array* %6, %struct.left_subtree_bits_array** %15, align 8
  store i32 %7, i32* %16, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %12, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %17, align 4
  %29 = icmp sle i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %8
  br label %143

31:                                               ; preds = %8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %32, %33
  %35 = ashr i32 %34, 1
  store i32 %35, i32* %18, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %18, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sub nsw i32 %40, %43
  store i32 %44, i32* %19, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %50, %51
  %53 = add nsw i32 %49, %52
  store i32 %53, i32* %20, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %18, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %20, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %21, align 4
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %20, align 4
  %63 = sub nsw i32 %61, %62
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %22, align 4
  %65 = load %struct.bitwriter*, %struct.bitwriter** %9, align 8
  %66 = load i32, i32* %21, align 4
  %67 = load i32, i32* %22, align 4
  %68 = call i32 @bwrite_interpolative_encode_value(%struct.bitwriter* %65, i32 %66, i32 %67)
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %31
  %72 = load %struct.bitwriter*, %struct.bitwriter** %9, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @bwrite_gamma_code(%struct.bitwriter* %72, i32 %77)
  br label %79

79:                                               ; preds = %71, %31
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %125

83:                                               ; preds = %79
  %84 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %15, align 8
  %85 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %15, align 8
  %88 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ult i64 %86, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %15, align 8
  %94 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %15, align 8
  %97 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32* %99, i32** %23, align 8
  %100 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %15, align 8
  %101 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %101, align 8
  %104 = load %struct.bitwriter*, %struct.bitwriter** %9, align 8
  %105 = call i32 @bwrite_get_bits_written(%struct.bitwriter* %104)
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %24, align 4
  %107 = load %struct.bitwriter*, %struct.bitwriter** %9, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %15, align 8
  %114 = load i32, i32* %16, align 4
  call void @bwrite_mlist_sublist_first_pass(%struct.bitwriter* %107, i32* %108, i32* %109, i32 %110, i32 %111, i32 %112, %struct.left_subtree_bits_array* %113, i32 %114)
  %115 = load %struct.bitwriter*, %struct.bitwriter** %9, align 8
  %116 = call i32 @bwrite_get_bits_written(%struct.bitwriter* %115)
  %117 = load i32, i32* %24, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %24, align 4
  %119 = load i32, i32* %24, align 4
  %120 = load i32*, i32** %23, align 8
  store i32 %119, i32* %120, align 4
  %121 = load %struct.bitwriter*, %struct.bitwriter** %9, align 8
  %122 = load i32, i32* %24, align 4
  %123 = add nsw i32 %122, 1
  %124 = call i32 @bwrite_gamma_code(%struct.bitwriter* %121, i32 %123)
  br label %134

125:                                              ; preds = %79
  %126 = load %struct.bitwriter*, %struct.bitwriter** %9, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %15, align 8
  %133 = load i32, i32* %16, align 4
  call void @bwrite_mlist_sublist_first_pass(%struct.bitwriter* %126, i32* %127, i32* %128, i32 %129, i32 %130, i32 %131, %struct.left_subtree_bits_array* %132, i32 %133)
  br label %134

134:                                              ; preds = %125, %83
  %135 = load %struct.bitwriter*, %struct.bitwriter** %9, align 8
  %136 = load i32*, i32** %10, align 8
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %15, align 8
  %142 = load i32, i32* %16, align 4
  call void @bwrite_mlist_sublist_first_pass(%struct.bitwriter* %135, i32* %136, i32* %137, i32 %138, i32 %139, i32 %140, %struct.left_subtree_bits_array* %141, i32 %142)
  br label %143

143:                                              ; preds = %134, %30
  ret void
}

declare dso_local i32 @bwrite_interpolative_encode_value(%struct.bitwriter*, i32, i32) #1

declare dso_local i32 @bwrite_gamma_code(%struct.bitwriter*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bwrite_get_bits_written(%struct.bitwriter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
