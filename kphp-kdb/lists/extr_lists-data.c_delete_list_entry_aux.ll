; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_delete_list_entry_aux.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_delete_list_entry_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBCATS = common dso_local global i32 0, align 4
@Y_MULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @delete_list_entry_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_list_entry_aux(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @SUBCATS, align 4
  %13 = sub nsw i32 %12, 1
  %14 = and i32 %11, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @load_o_tree_sub(i32* %8, i32 %15)
  %17 = call i32 @load_g_tree(i32* %9)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @load_g_tree_sub(i32* %10, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (...) @lrand48()
  %22 = call i32 @listree_delete_small(i32* %8, i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @Y_MULT, align 4
  %26 = mul nsw i32 %24, %25
  %27 = call i32 @listree_delete_small(i32* %9, i32 %23, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @Y_MULT, align 4
  %31 = mul nsw i32 %29, %30
  %32 = call i32 @listree_delete_small(i32* %10, i32 %28, i32 %31)
  ret void
}

declare dso_local i32 @load_o_tree_sub(i32*, i32) #1

declare dso_local i32 @load_g_tree(i32*) #1

declare dso_local i32 @load_g_tree_sub(i32*, i32) #1

declare dso_local i32 @listree_delete_small(i32*, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
