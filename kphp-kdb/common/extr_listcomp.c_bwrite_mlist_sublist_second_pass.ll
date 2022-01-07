; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_mlist_sublist_second_pass.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_mlist_sublist_second_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitwriter = type { i32 }
%struct.left_subtree_bits_array = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitwriter*, i32*, i32*, i32, i32, i32, %struct.left_subtree_bits_array*, i32*, i32)* @bwrite_mlist_sublist_second_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwrite_mlist_sublist_second_pass(%struct.bitwriter* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, %struct.left_subtree_bits_array* %6, i32* %7, i32 %8) #0 {
  %10 = alloca %struct.bitwriter*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.left_subtree_bits_array*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.bitwriter* %0, %struct.bitwriter** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.left_subtree_bits_array* %6, %struct.left_subtree_bits_array** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %13, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %19, align 4
  %31 = icmp sle i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %9
  br label %164

33:                                               ; preds = %9
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = add nsw i32 %34, %35
  %37 = ashr i32 %36, 1
  store i32 %37, i32* %20, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %20, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %21, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %13, align 4
  %54 = sub nsw i32 %52, %53
  %55 = add nsw i32 %51, %54
  store i32 %55, i32* %22, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %20, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %22, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %23, align 4
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* %22, align 4
  %65 = sub nsw i32 %63, %64
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %24, align 4
  %67 = load %struct.bitwriter*, %struct.bitwriter** %10, align 8
  %68 = load i32, i32* %23, align 4
  %69 = load i32, i32* %24, align 4
  %70 = call i32 @bwrite_interpolative_encode_value(%struct.bitwriter* %67, i32 %68, i32 %69)
  %71 = load i32, i32* %18, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %33
  %74 = load %struct.bitwriter*, %struct.bitwriter** %10, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %20, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @bwrite_gamma_code(%struct.bitwriter* %74, i32 %79)
  br label %81

81:                                               ; preds = %73, %33
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %144

85:                                               ; preds = %81
  %86 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %16, align 8
  %87 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %16, align 8
  %90 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %88, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %16, align 8
  %96 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %16, align 8
  %99 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %25, align 4
  %103 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %16, align 8
  %104 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = load i32*, i32** %17, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %85
  %110 = load i32, i32* %25, align 4
  %111 = add nsw i32 %110, 1
  %112 = call i64 @get_gamma_code_length(i32 %111)
  %113 = load i32*, i32** %17, align 8
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %112
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 4
  br label %118

118:                                              ; preds = %109, %85
  %119 = load %struct.bitwriter*, %struct.bitwriter** %10, align 8
  %120 = load i32, i32* %25, align 4
  %121 = add nsw i32 %120, 1
  %122 = call i32 @bwrite_gamma_code(%struct.bitwriter* %119, i32 %121)
  %123 = load %struct.bitwriter*, %struct.bitwriter** %10, align 8
  %124 = call i32 @bwrite_get_bits_written(%struct.bitwriter* %123)
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %26, align 4
  %126 = load %struct.bitwriter*, %struct.bitwriter** %10, align 8
  %127 = load i32*, i32** %11, align 8
  %128 = load i32*, i32** %12, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %16, align 8
  %133 = load i32*, i32** %17, align 8
  %134 = load i32, i32* %18, align 4
  call void @bwrite_mlist_sublist_second_pass(%struct.bitwriter* %126, i32* %127, i32* %128, i32 %129, i32 %130, i32 %131, %struct.left_subtree_bits_array* %132, i32* %133, i32 %134)
  %135 = load %struct.bitwriter*, %struct.bitwriter** %10, align 8
  %136 = call i32 @bwrite_get_bits_written(%struct.bitwriter* %135)
  %137 = load i32, i32* %26, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %26, align 4
  %139 = load i32, i32* %25, align 4
  %140 = load i32, i32* %26, align 4
  %141 = icmp eq i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  br label %154

144:                                              ; preds = %81
  %145 = load %struct.bitwriter*, %struct.bitwriter** %10, align 8
  %146 = load i32*, i32** %11, align 8
  %147 = load i32*, i32** %12, align 8
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* %15, align 4
  %151 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %16, align 8
  %152 = load i32*, i32** %17, align 8
  %153 = load i32, i32* %18, align 4
  call void @bwrite_mlist_sublist_second_pass(%struct.bitwriter* %145, i32* %146, i32* %147, i32 %148, i32 %149, i32 %150, %struct.left_subtree_bits_array* %151, i32* %152, i32 %153)
  br label %154

154:                                              ; preds = %144, %118
  %155 = load %struct.bitwriter*, %struct.bitwriter** %10, align 8
  %156 = load i32*, i32** %11, align 8
  %157 = load i32*, i32** %12, align 8
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %15, align 4
  %161 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %16, align 8
  %162 = load i32*, i32** %17, align 8
  %163 = load i32, i32* %18, align 4
  call void @bwrite_mlist_sublist_second_pass(%struct.bitwriter* %155, i32* %156, i32* %157, i32 %158, i32 %159, i32 %160, %struct.left_subtree_bits_array* %161, i32* %162, i32 %163)
  br label %164

164:                                              ; preds = %154, %32
  ret void
}

declare dso_local i32 @bwrite_interpolative_encode_value(%struct.bitwriter*, i32, i32) #1

declare dso_local i32 @bwrite_gamma_code(%struct.bitwriter*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_gamma_code_length(i32) #1

declare dso_local i32 @bwrite_get_bits_written(%struct.bitwriter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
