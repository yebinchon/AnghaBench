; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_check_constructors_equal.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_check_constructors_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator_tree = type { i32 }

@__tok = common dso_local global i32 0, align 4
@_T = common dso_local global i32** null, align 8
@check_nat_val = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_constructors_equal(%struct.tl_combinator_tree* %0, %struct.tl_combinator_tree* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tl_combinator_tree*, align 8
  %6 = alloca %struct.tl_combinator_tree*, align 8
  %7 = alloca i32**, align 8
  store %struct.tl_combinator_tree* %0, %struct.tl_combinator_tree** %5, align 8
  store %struct.tl_combinator_tree* %1, %struct.tl_combinator_tree** %6, align 8
  store i32** %2, i32*** %7, align 8
  %8 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %9 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %10 = load i32**, i32*** %7, align 8
  %11 = call i32 @uniformize(%struct.tl_combinator_tree* %8, %struct.tl_combinator_tree* %9, i32** %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %21

14:                                               ; preds = %3
  store i32 1, i32* @__tok, align 4
  %15 = load i32**, i32*** %7, align 8
  store i32** %15, i32*** @_T, align 8
  %16 = load i32**, i32*** %7, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @check_nat_val, align 4
  %19 = call i32 @tree_act_var_value(i32* %17, i32 %18)
  %20 = load i32, i32* @__tok, align 4
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %14, %13
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @uniformize(%struct.tl_combinator_tree*, %struct.tl_combinator_tree*, i32**) #1

declare dso_local i32 @tree_act_var_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
