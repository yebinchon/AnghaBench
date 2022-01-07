; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_write_array.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_write_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator_tree = type { i32, i32 }

@schema_version = common dso_local global i32 0, align 4
@TLS_TREE_ARRAY = common dso_local global i32 0, align 4
@TLS_ARRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_array(%struct.tl_combinator_tree* %0, i32** %1, i32* %2) #0 {
  %4 = alloca %struct.tl_combinator_tree*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  store %struct.tl_combinator_tree* %0, %struct.tl_combinator_tree** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @schema_version, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32, i32* @TLS_TREE_ARRAY, align 4
  %11 = call i32 @wint(i32 %10)
  br label %21

12:                                               ; preds = %3
  %13 = load i32, i32* @schema_version, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @TLS_ARRAY, align 4
  %17 = call i32 @wint(i32 %16)
  br label %20

18:                                               ; preds = %12
  %19 = call i32 @wint(i32 -8)
  br label %20

20:                                               ; preds = %18, %15
  br label %21

21:                                               ; preds = %20, %9
  %22 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %23 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32**, i32*** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @write_tree(i32 %24, i32 0, i32** %25, i32* %26)
  %28 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %29 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32**, i32*** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @write_tree(i32 %30, i32 0, i32** %31, i32* %32)
  ret void
}

declare dso_local i32 @wint(i32) #1

declare dso_local i32 @write_tree(i32, i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
