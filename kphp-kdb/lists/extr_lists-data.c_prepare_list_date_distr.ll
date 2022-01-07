; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_prepare_list_date_distr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_prepare_list_date_distr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_RES = common dso_local global i32 0, align 4
@metafile_mode = common dso_local global i64 0, align 8
@R = common dso_local global i64 0, align 8
@R_end = common dso_local global i64 0, align 8
@barray_account_date = common dso_local global i32 0, align 4
@in_array = common dso_local global i32 0, align 4
@btree_account_date = common dso_local global i32 0, align 4
@in_tree = common dso_local global i32 0, align 4
@OTree = common dso_local global i32 0, align 4
@carray_account_date = common dso_local global i32 0, align 4
@ctree_account_date = common dso_local global i32 0, align 4
@account_min_date = common dso_local global i32 0, align 4
@account_max_date = common dso_local global i32 0, align 4
@account_date_step = common dso_local global i32 0, align 4
@account_date_buckets = common dso_local global i32 0, align 4
@MAXINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_list_date_distr(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %11, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp uge i32 %27, 16
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %19, %5
  store i32 -1, i32* %6, align 4
  br label %104

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load i32, i32* %11, align 4
  %35 = srem i32 %33, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load i32, i32* %11, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @MAX_RES, align 4
  %46 = sub nsw i32 %45, 2
  %47 = icmp sgt i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %30
  store i32 -1, i32* %6, align 4
  br label %104

49:                                               ; preds = %43
  %50 = load i64, i64* @metafile_mode, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @prepare_list_metafile(i32 %53, i32 1)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 -2, i32* %6, align 4
  br label %104

57:                                               ; preds = %52, %49
  %58 = load i64, i64* @R, align 8
  store i64 %58, i64* @R_end, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32* @__get_list_f(i32 %59, i32 2)
  store i32* %60, i32** %14, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @conv_list_id(i32 %64)
  %66 = icmp slt i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 -1, i32 0
  store i32 %68, i32* %6, align 4
  br label %104

69:                                               ; preds = %57
  %70 = load i32*, i32** %14, align 8
  %71 = call i32 @unpack_metafile_pointers(i32* %70)
  %72 = load i64, i64* @R, align 8
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 2
  %75 = mul nsw i32 %74, 4
  %76 = call i32 @memset(i64 %72, i32 0, i32 %75)
  store i32* %15, i32** %16, align 8
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %69
  %80 = load i32, i32* @barray_account_date, align 4
  store i32 %80, i32* @in_array, align 4
  %81 = load i32, i32* @btree_account_date, align 4
  store i32 %81, i32* @in_tree, align 4
  store i32* @OTree, i32** %16, align 8
  br label %89

82:                                               ; preds = %69
  %83 = load i32, i32* @carray_account_date, align 4
  store i32 %83, i32* @in_array, align 4
  %84 = load i32, i32* @ctree_account_date, align 4
  store i32 %84, i32* @in_tree, align 4
  %85 = load i32*, i32** %16, align 8
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %86, 7
  %88 = call i32 @load_o_tree_sub(i32* %85, i32 %87)
  br label %89

89:                                               ; preds = %82, %79
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* @account_min_date, align 4
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* @account_max_date, align 4
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* @account_date_step, align 4
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* @account_date_buckets, align 4
  %94 = load i32*, i32** %16, align 8
  %95 = load i32, i32* @MAXINT, align 4
  %96 = call i32 @listree_get_range(i32* %94, i32 0, i32 %95)
  %97 = load i64, i64* @R, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  %101 = add nsw i64 %100, 2
  store i64 %101, i64* @R_end, align 8
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 2
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %89, %63, %56, %48, %29
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i64 @prepare_list_metafile(i32, i32) #1

declare dso_local i32* @__get_list_f(i32, i32) #1

declare dso_local i64 @conv_list_id(i32) #1

declare dso_local i32 @unpack_metafile_pointers(i32*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @load_o_tree_sub(i32*, i32) #1

declare dso_local i32 @listree_get_range(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
