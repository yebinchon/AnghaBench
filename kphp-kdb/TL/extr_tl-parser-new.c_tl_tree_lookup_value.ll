; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_tree_lookup_value.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_tree_lookup_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator_tree = type { i64, i8*, %struct.tl_combinator_tree*, %struct.tl_combinator_tree* }

@act_var = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_tree_lookup_value(%struct.tl_combinator_tree* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tl_combinator_tree*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.tl_combinator_tree*, align 8
  store %struct.tl_combinator_tree* %0, %struct.tl_combinator_tree** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  %9 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %10 = icmp ne %struct.tl_combinator_tree* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %64

12:                                               ; preds = %3
  %13 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %14 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @act_var, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %20 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %64

25:                                               ; preds = %18, %12
  %26 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %27 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @act_var, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load i32**, i32*** %7, align 8
  %33 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %34 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call %struct.tl_combinator_tree* @tl_get_var_value(i32** %32, i8* %35)
  store %struct.tl_combinator_tree* %36, %struct.tl_combinator_tree** %8, align 8
  %37 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %8, align 8
  %38 = icmp ne %struct.tl_combinator_tree* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %64

40:                                               ; preds = %31
  %41 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %8, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32**, i32*** %7, align 8
  %44 = call i32 @tl_tree_lookup_value(%struct.tl_combinator_tree* %41, i8* %42, i32** %43)
  store i32 %44, i32* %4, align 4
  br label %64

45:                                               ; preds = %25
  %46 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %47 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %46, i32 0, i32 3
  %48 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %47, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i32**, i32*** %7, align 8
  %51 = call i32 @tl_tree_lookup_value(%struct.tl_combinator_tree* %48, i8* %49, i32** %50)
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %64

54:                                               ; preds = %45
  %55 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %56 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %55, i32 0, i32 2
  %57 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %56, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32**, i32*** %7, align 8
  %60 = call i32 @tl_tree_lookup_value(%struct.tl_combinator_tree* %57, i8* %58, i32** %59)
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %64

63:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %62, %53, %40, %39, %24, %11
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.tl_combinator_tree* @tl_get_var_value(i32**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
