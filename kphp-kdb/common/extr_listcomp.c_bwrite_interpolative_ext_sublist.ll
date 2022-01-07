; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_interpolative_ext_sublist.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_interpolative_ext_sublist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitwriter = type { i8* }
%struct.left_subtree_bits_array = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwrite_interpolative_ext_sublist(%struct.bitwriter* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.bitwriter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.bitwriter, align 8
  %14 = alloca i8, align 1
  %15 = alloca %struct.left_subtree_bits_array, align 8
  %16 = alloca i32, align 4
  store %struct.bitwriter* %0, %struct.bitwriter** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %17 = load %struct.bitwriter*, %struct.bitwriter** %7, align 8
  %18 = call i32 @memcpy(%struct.bitwriter* %13, %struct.bitwriter* %17, i32 8)
  %19 = load %struct.bitwriter*, %struct.bitwriter** %7, align 8
  %20 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %14, align 1
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @get_subtree_array_size(i32 %23, i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %15, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %16, align 4
  %29 = call i32 @dyn_mark(i32 %28)
  %30 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %15, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i32 @zmalloc(i32 %34)
  %36 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %15, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %15, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.bitwriter*, %struct.bitwriter** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @bwrite_interpolative_ext_sublist_first_pass(%struct.bitwriter* %38, i32* %39, i32 %40, i32 %41, i32 %42, %struct.left_subtree_bits_array* %15)
  %44 = load %struct.bitwriter*, %struct.bitwriter** %7, align 8
  %45 = call i32 @memcpy(%struct.bitwriter* %44, %struct.bitwriter* %13, i32 8)
  %46 = load i8, i8* %14, align 1
  %47 = load %struct.bitwriter*, %struct.bitwriter** %7, align 8
  %48 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8 %46, i8* %49, align 1
  %50 = getelementptr inbounds %struct.left_subtree_bits_array, %struct.left_subtree_bits_array* %15, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %6
  %54 = load i32*, i32** %12, align 8
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %6
  %56 = load %struct.bitwriter*, %struct.bitwriter** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @bwrite_interpolative_ext_sublist_second_pass(%struct.bitwriter* %56, i32* %57, i32 %58, i32 %59, i32 %60, %struct.left_subtree_bits_array* %15, i32* %61)
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @dyn_release(i32 %63)
  ret void
}

declare dso_local i32 @memcpy(%struct.bitwriter*, %struct.bitwriter*, i32) #1

declare dso_local i32 @get_subtree_array_size(i32, i32, i32) #1

declare dso_local i32 @dyn_mark(i32) #1

declare dso_local i32 @zmalloc(i32) #1

declare dso_local i32 @bwrite_interpolative_ext_sublist_first_pass(%struct.bitwriter*, i32*, i32, i32, i32, %struct.left_subtree_bits_array*) #1

declare dso_local i32 @bwrite_interpolative_ext_sublist_second_pass(%struct.bitwriter*, i32*, i32, i32, i32, %struct.left_subtree_bits_array*, i32*) #1

declare dso_local i32 @dyn_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
