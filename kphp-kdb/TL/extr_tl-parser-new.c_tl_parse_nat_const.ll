; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_nat_const.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_nat_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator_tree = type { i64, i32, i32 }
%struct.tree = type { i64, i32, i64*, i32 }

@type_nat_const = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"tl_parse_nat_const: s = %d, val = %.*s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Nat const can not preceed with %%\0A\00", align 1
@TL_FAIL = common dso_local global i32 0, align 4
@L = common dso_local global %struct.tl_combinator_tree* null, align 8
@act_nat_const = common dso_local global i32 0, align 4
@type_num_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_combinator_tree* @tl_parse_nat_const(%struct.tree* %0, i32 %1) #0 {
  %3 = alloca %struct.tree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.tree* %0, %struct.tree** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tree*, %struct.tree** %3, align 8
  %8 = getelementptr inbounds %struct.tree, %struct.tree* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @type_nat_const, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.tree*, %struct.tree** %3, align 8
  %15 = getelementptr inbounds %struct.tree, %struct.tree* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.tree*, %struct.tree** %3, align 8
  %23 = getelementptr inbounds %struct.tree, %struct.tree* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tree*, %struct.tree** %3, align 8
  %26 = getelementptr inbounds %struct.tree, %struct.tree* %25, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  %28 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i64* %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = call i32 @TL_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @TL_FAIL, align 4
  br label %34

34:                                               ; preds = %31, %2
  %35 = load %struct.tree*, %struct.tree** %3, align 8
  %36 = getelementptr inbounds %struct.tree, %struct.tree* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @type_nat_const, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.tree*, %struct.tree** %3, align 8
  %43 = getelementptr inbounds %struct.tree, %struct.tree* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** @L, align 8
  %50 = call i32 @TL_INIT(%struct.tl_combinator_tree* %49)
  %51 = call %struct.tl_combinator_tree* (...) @alloc_ctree_node()
  store %struct.tl_combinator_tree* %51, %struct.tl_combinator_tree** @L, align 8
  %52 = load i32, i32* @act_nat_const, align 4
  %53 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** @L, align 8
  %54 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @type_num_value, align 4
  %56 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** @L, align 8
  %57 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %76, %34
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.tree*, %struct.tree** %3, align 8
  %61 = getelementptr inbounds %struct.tree, %struct.tree* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = load i64, i64* %6, align 8
  %66 = mul nsw i64 %65, 10
  %67 = load %struct.tree*, %struct.tree** %3, align 8
  %68 = getelementptr inbounds %struct.tree, %struct.tree* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %66, %73
  %75 = sub nsw i64 %74, 48
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %64
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %58

79:                                               ; preds = %58
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** @L, align 8
  %82 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** @L, align 8
  ret %struct.tl_combinator_tree* %83
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i64*) #1

declare dso_local i32 @TL_ERROR(i8*) #1

declare dso_local i32 @TL_INIT(%struct.tl_combinator_tree*) #1

declare dso_local %struct.tl_combinator_tree* @alloc_ctree_node(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
