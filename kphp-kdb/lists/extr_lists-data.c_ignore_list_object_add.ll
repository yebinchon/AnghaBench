; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_ignore_list_object_add.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_ignore_list_object_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ignore_list_object_add.lkey = internal global i32 0, align 4
@ignore_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ignore_list_object_add(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @combine_ltree_x(i32 %5, i32 %6, i32* @ignore_list_object_add.lkey)
  %8 = load i32, i32* @ignore_tree, align 4
  %9 = load i32, i32* @ignore_list_object_add.lkey, align 4
  %10 = call i32 (...) @lrand48()
  %11 = call i32 @ltree_insert(i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* @ignore_tree, align 4
  ret void
}

declare dso_local i32 @combine_ltree_x(i32, i32, i32*) #1

declare dso_local i32 @ltree_insert(i32, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
