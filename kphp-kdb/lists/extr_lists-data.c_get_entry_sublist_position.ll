; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_get_entry_sublist_position.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_get_entry_sublist_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@metafile_mode = common dso_local global i64 0, align 8
@SUBCATS = common dso_local global i32 0, align 4
@OTree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_entry_sublist_position(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* @metafile_mode, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @prepare_list_metafile(i32 %15, i32 1)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -2, i32* %4, align 4
  br label %52

19:                                               ; preds = %14, %3
  %20 = load i32, i32* %5, align 4
  %21 = call i32* @__get_list_f(i32 %20, i32 2)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %52

25:                                               ; preds = %19
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @unpack_metafile_pointers(i32* %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SUBCATS, align 4
  %30 = sub nsw i32 %29, 1
  %31 = and i32 %28, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SUBCATS, align 4
  %34 = mul nsw i32 2, %33
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  store i32 -1, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %25
  store i32* %10, i32** %11, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @listree_get_pos_large(i32* @OTree, i32 %43, i32 1)
  store i32 %44, i32* %4, align 4
  br label %52

45:                                               ; preds = %39
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @load_o_tree_sub(i32* %46, i32 %47)
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @listree_get_pos_inderect(i32* %49, i32 %50, i32 1)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %45, %42, %24, %18
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @prepare_list_metafile(i32, i32) #1

declare dso_local i32* @__get_list_f(i32, i32) #1

declare dso_local i32 @unpack_metafile_pointers(i32*) #1

declare dso_local i32 @listree_get_pos_large(i32*, i32, i32) #1

declare dso_local i32 @load_o_tree_sub(i32*, i32) #1

declare dso_local i32 @listree_get_pos_inderect(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
