; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_set_column_colors.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_set_column_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@column_colors = common dso_local global i8** null, align 8
@column_colors_max = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @graph_set_column_colors(i8** %0, i16 zeroext %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i16, align 2
  store i8** %0, i8*** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load i8**, i8*** %3, align 8
  store i8** %5, i8*** @column_colors, align 8
  %6 = load i16, i16* %4, align 2
  store i16 %6, i16* @column_colors_max, align 2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
