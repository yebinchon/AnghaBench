; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_change_entry_flags_common.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_change_entry_flags_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBCATS = common dso_local global i32 0, align 4
@Y_MULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @change_entry_flags_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_entry_flags_common(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @SUBCATS, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %15, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @SUBCATS, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %19, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @load_o_tree_sub(i32* %11, i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @load_o_tree_sub(i32* %12, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @load_g_tree_sub(i32* %13, i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @load_g_tree_sub(i32* %14, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (...) @lrand48()
  %37 = call i32 @listree_delete_small(i32* %11, i32 %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (...) @lrand48()
  %40 = call i32 @listree_insert_small(i32* %12, i32 %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @Y_MULT, align 4
  %44 = mul nsw i32 %42, %43
  %45 = call i32 @listree_delete_small(i32* %13, i32 %41, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @Y_MULT, align 4
  %49 = mul nsw i32 %47, %48
  %50 = call i32 @listree_insert_small(i32* %14, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %26, %4
  ret void
}

declare dso_local i32 @load_o_tree_sub(i32*, i32) #1

declare dso_local i32 @load_g_tree_sub(i32*, i32) #1

declare dso_local i32 @listree_delete_small(i32*, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @listree_insert_small(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
