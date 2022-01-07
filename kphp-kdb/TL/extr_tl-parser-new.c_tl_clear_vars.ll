; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_clear_vars.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_clear_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vars = common dso_local global i32* null, align 8
@namespace_level = common dso_local global i64 0, align 8
@tl_del_var = common dso_local global i32 0, align 4
@last_num_var = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_clear_vars() #0 {
  %1 = load i32*, i32** @vars, align 8
  %2 = load i64, i64* @namespace_level, align 8
  %3 = getelementptr inbounds i32, i32* %1, i64 %2
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @tl_del_var, align 4
  %6 = call i32 @tree_act_tl_var(i32 %4, i32 %5)
  %7 = load i32*, i32** @vars, align 8
  %8 = load i64, i64* @namespace_level, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @tree_clear_tl_var(i32 %10)
  %12 = load i32*, i32** @vars, align 8
  %13 = load i64, i64* @namespace_level, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 %11, i32* %14, align 4
  %15 = load i64*, i64** @last_num_var, align 8
  %16 = load i64, i64* @namespace_level, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  store i64 0, i64* %17, align 8
  ret void
}

declare dso_local i32 @tree_act_tl_var(i32, i32) #1

declare dso_local i32 @tree_clear_tl_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
