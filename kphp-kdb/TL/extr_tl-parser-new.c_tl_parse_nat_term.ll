; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_nat_term.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_nat_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator_tree = type { i64 }
%struct.tree = type { i64, i32, i32* }

@type_nat_term = common dso_local global i64 0, align 8
@type_num = common dso_local global i64 0, align 8
@type_num_value = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"nat_term: found type %s\0A\00", align 1
@TL_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_combinator_tree* @tl_parse_nat_term(%struct.tree* %0, i32 %1) #0 {
  %3 = alloca %struct.tree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tl_combinator_tree*, align 8
  store %struct.tree* %0, %struct.tree** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tree*, %struct.tree** %3, align 8
  %7 = getelementptr inbounds %struct.tree, %struct.tree* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @type_nat_term, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.tree*, %struct.tree** %3, align 8
  %14 = getelementptr inbounds %struct.tree, %struct.tree* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.tree*, %struct.tree** %3, align 8
  %20 = getelementptr inbounds %struct.tree, %struct.tree* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call %struct.tl_combinator_tree* @tl_parse_term(i32 %23, i32 %24)
  store %struct.tl_combinator_tree* %25, %struct.tl_combinator_tree** %5, align 8
  %26 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %27 = icmp ne %struct.tl_combinator_tree* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %2
  %29 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %30 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @type_num, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %36 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @type_num_value, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34, %2
  %41 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %42 = icmp ne %struct.tl_combinator_tree* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %45 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @TL_TYPE(i64 %46)
  %48 = call i32 @TL_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %43, %40
  %50 = load i32, i32* @TL_FAIL, align 4
  br label %51

51:                                               ; preds = %49, %34, %28
  %52 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  ret %struct.tl_combinator_tree* %52
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.tl_combinator_tree* @tl_parse_term(i32, i32) #1

declare dso_local i32 @TL_ERROR(i8*, i32) #1

declare dso_local i32 @TL_TYPE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
