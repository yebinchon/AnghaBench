; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_any_term.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_any_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator_tree = type { i32 }
%struct.tree = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"type = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_combinator_tree* @tl_parse_any_term(%struct.tree* %0, i32 %1) #0 {
  %3 = alloca %struct.tl_combinator_tree*, align 8
  %4 = alloca %struct.tree*, align 8
  %5 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.tree*, %struct.tree** %4, align 8
  %7 = getelementptr inbounds %struct.tree, %struct.tree* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %37 [
    i32 129, label %9
    i32 133, label %13
    i32 131, label %17
    i32 135, label %21
    i32 132, label %25
    i32 134, label %29
    i32 130, label %33
    i32 128, label %33
  ]

9:                                                ; preds = %2
  %10 = load %struct.tree*, %struct.tree** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.tl_combinator_tree* @tl_parse_type_term(%struct.tree* %10, i32 %11)
  store %struct.tl_combinator_tree* %12, %struct.tl_combinator_tree** %3, align 8
  br label %44

13:                                               ; preds = %2
  %14 = load %struct.tree*, %struct.tree** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.tl_combinator_tree* @tl_parse_nat_term(%struct.tree* %14, i32 %15)
  store %struct.tl_combinator_tree* %16, %struct.tl_combinator_tree** %3, align 8
  br label %44

17:                                               ; preds = %2
  %18 = load %struct.tree*, %struct.tree** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.tl_combinator_tree* @tl_parse_term(%struct.tree* %18, i32 %19)
  store %struct.tl_combinator_tree* %20, %struct.tl_combinator_tree** %3, align 8
  br label %44

21:                                               ; preds = %2
  %22 = load %struct.tree*, %struct.tree** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.tl_combinator_tree* @tl_parse_expr(%struct.tree* %22, i32 %23)
  store %struct.tl_combinator_tree* %24, %struct.tl_combinator_tree** %3, align 8
  br label %44

25:                                               ; preds = %2
  %26 = load %struct.tree*, %struct.tree** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.tl_combinator_tree* @tl_parse_subexpr(%struct.tree* %26, i32 %27)
  store %struct.tl_combinator_tree* %28, %struct.tl_combinator_tree** %3, align 8
  br label %44

29:                                               ; preds = %2
  %30 = load %struct.tree*, %struct.tree** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.tl_combinator_tree* @tl_parse_nat_const(%struct.tree* %30, i32 %31)
  store %struct.tl_combinator_tree* %32, %struct.tl_combinator_tree** %3, align 8
  br label %44

33:                                               ; preds = %2, %2
  %34 = load %struct.tree*, %struct.tree** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call %struct.tl_combinator_tree* @tl_parse_ident(%struct.tree* %34, i32 %35)
  store %struct.tl_combinator_tree* %36, %struct.tl_combinator_tree** %3, align 8
  br label %44

37:                                               ; preds = %2
  %38 = load i32, i32* @stderr, align 4
  %39 = load %struct.tree*, %struct.tree** %4, align 8
  %40 = getelementptr inbounds %struct.tree, %struct.tree* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = call i32 @assert(i32 0)
  store %struct.tl_combinator_tree* null, %struct.tl_combinator_tree** %3, align 8
  br label %44

44:                                               ; preds = %37, %33, %29, %25, %21, %17, %13, %9
  %45 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %3, align 8
  ret %struct.tl_combinator_tree* %45
}

declare dso_local %struct.tl_combinator_tree* @tl_parse_type_term(%struct.tree*, i32) #1

declare dso_local %struct.tl_combinator_tree* @tl_parse_nat_term(%struct.tree*, i32) #1

declare dso_local %struct.tl_combinator_tree* @tl_parse_term(%struct.tree*, i32) #1

declare dso_local %struct.tl_combinator_tree* @tl_parse_expr(%struct.tree*, i32) #1

declare dso_local %struct.tl_combinator_tree* @tl_parse_subexpr(%struct.tree*, i32) #1

declare dso_local %struct.tl_combinator_tree* @tl_parse_nat_const(%struct.tree*, i32) #1

declare dso_local %struct.tl_combinator_tree* @tl_parse_ident(%struct.tree*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
