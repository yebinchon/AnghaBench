; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_term.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator_tree = type { i32 }
%struct.tree = type { i64, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"tl_parse_term: s = %d\0A\00", align 1
@type_term = common dso_local global i64 0, align 8
@type_percent = common dso_local global i64 0, align 8
@L = common dso_local global %struct.tl_combinator_tree* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_combinator_tree* @tl_parse_term(%struct.tree* %0, i32 %1) #0 {
  %3 = alloca %struct.tree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.tree*, %struct.tree** %3, align 8
  %9 = getelementptr inbounds %struct.tree, %struct.tree* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @type_term, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %35, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.tree*, %struct.tree** %3, align 8
  %18 = getelementptr inbounds %struct.tree, %struct.tree* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.tree*, %struct.tree** %3, align 8
  %23 = getelementptr inbounds %struct.tree, %struct.tree* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @type_percent, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %21, %15
  %34 = phi i1 [ false, %15 ], [ %32, %21 ]
  br i1 %34, label %35, label %40

35:                                               ; preds = %33
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %15

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.tree*, %struct.tree** %3, align 8
  %43 = getelementptr inbounds %struct.tree, %struct.tree* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** @L, align 8
  %49 = call i32 @TL_INIT(%struct.tl_combinator_tree* %48)
  br label %50

50:                                               ; preds = %56, %40
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.tree*, %struct.tree** %3, align 8
  %53 = getelementptr inbounds %struct.tree, %struct.tree* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load %struct.tree*, %struct.tree** %3, align 8
  %58 = getelementptr inbounds %struct.tree, %struct.tree* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %59, i64 %61
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @tl_parse_any_term(%struct.TYPE_2__* %63, i32 %64)
  %66 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** @L, align 8
  %67 = call i32 @TL_TRY(i32 %65, %struct.tl_combinator_tree* %66)
  store i32 0, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %50

70:                                               ; preds = %50
  %71 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** @L, align 8
  ret %struct.tl_combinator_tree* %71
}

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TL_INIT(%struct.tl_combinator_tree*) #1

declare dso_local i32 @TL_TRY(i32, %struct.tl_combinator_tree*) #1

declare dso_local i32 @tl_parse_any_term(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
