; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_interpolative_ext_sublist_first_pass.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_interpolative_ext_sublist_first_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitwriter = type { i32 }
%struct.left_subtree_bits_array = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitwriter*, i32*, i32, i32, i32, %struct.left_subtree_bits_array*)* @bwrite_interpolative_ext_sublist_first_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwrite_interpolative_ext_sublist_first_pass(%struct.bitwriter* %0, i32* %1, i32 %2, i32 %3, i32 %4, %struct.left_subtree_bits_array* %5) #0 {
  %7 = alloca %struct.bitwriter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.left_subtree_bits_array*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.bitwriter* %0, %struct.bitwriter** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.left_subtree_bits_array* %5, %struct.left_subtree_bits_array** %12, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp sle i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  br label %122

27:                                               ; preds = %6
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %28, %29
  %31 = ashr i32 %30, 1
  store i32 %31, i32* %14, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %14, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %15, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %46, %47
  %49 = add nsw i32 %45, %48
  store i32 %49, i32* %16, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %16, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %16, align 4
  %59 = sub nsw i32 %57, %58
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %18, align 4
  %61 = load %struct.bitwriter*, %struct.bitwriter** %7, align 8
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %18, align 4
  %64 = call i32 @bwrite_interpolative_encode_value(%struct.bitwriter* %61, i32 %62, i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %108

68:                                               ; preds = %27
  %69 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %12, align 8
  %70 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %12, align 8
  %73 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %12, align 8
  %79 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %12, align 8
  %82 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32* %84, i32** %19, align 8
  %85 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %12, align 8
  %86 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %86, align 8
  %89 = load %struct.bitwriter*, %struct.bitwriter** %7, align 8
  %90 = call i32 @bwrite_get_bits_written(%struct.bitwriter* %89)
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %20, align 4
  %92 = load %struct.bitwriter*, %struct.bitwriter** %7, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %12, align 8
  call void @bwrite_interpolative_ext_sublist_first_pass(%struct.bitwriter* %92, i32* %93, i32 %94, i32 %95, i32 %96, %struct.left_subtree_bits_array* %97)
  %98 = load %struct.bitwriter*, %struct.bitwriter** %7, align 8
  %99 = call i32 @bwrite_get_bits_written(%struct.bitwriter* %98)
  %100 = load i32, i32* %20, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %20, align 4
  %102 = load i32, i32* %20, align 4
  %103 = load i32*, i32** %19, align 8
  store i32 %102, i32* %103, align 4
  %104 = load %struct.bitwriter*, %struct.bitwriter** %7, align 8
  %105 = load i32, i32* %20, align 4
  %106 = add nsw i32 %105, 1
  %107 = call i32 @bwrite_gamma_code(%struct.bitwriter* %104, i32 %106)
  br label %115

108:                                              ; preds = %27
  %109 = load %struct.bitwriter*, %struct.bitwriter** %7, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %12, align 8
  call void @bwrite_interpolative_ext_sublist_first_pass(%struct.bitwriter* %109, i32* %110, i32 %111, i32 %112, i32 %113, %struct.left_subtree_bits_array* %114)
  br label %115

115:                                              ; preds = %108, %68
  %116 = load %struct.bitwriter*, %struct.bitwriter** %7, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.left_subtree_bits_array*, %struct.left_subtree_bits_array** %12, align 8
  call void @bwrite_interpolative_ext_sublist_first_pass(%struct.bitwriter* %116, i32* %117, i32 %118, i32 %119, i32 %120, %struct.left_subtree_bits_array* %121)
  br label %122

122:                                              ; preds = %115, %26
  ret void
}

declare dso_local i32 @bwrite_interpolative_encode_value(%struct.bitwriter*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bwrite_get_bits_written(%struct.bitwriter*) #1

declare dso_local i32 @bwrite_gamma_code(%struct.bitwriter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
