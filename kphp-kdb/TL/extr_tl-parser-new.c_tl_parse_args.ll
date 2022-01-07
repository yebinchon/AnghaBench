; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_args.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator_tree = type { i32 }
%struct.tree = type { i64, i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"tl_parse_args T->type = %d\0A\00", align 1
@type_optional_arg_def = common dso_local global i64 0, align 8
@type_args = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_combinator_tree* @tl_parse_args(%struct.tree* %0) #0 {
  %2 = alloca %struct.tl_combinator_tree*, align 8
  %3 = alloca %struct.tree*, align 8
  store %struct.tree* %0, %struct.tree** %3, align 8
  %4 = load %struct.tree*, %struct.tree** %3, align 8
  %5 = getelementptr inbounds %struct.tree, %struct.tree* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @type_optional_arg_def, align 8
  %8 = sub nsw i64 %6, %7
  %9 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load %struct.tree*, %struct.tree** %3, align 8
  %11 = getelementptr inbounds %struct.tree, %struct.tree* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @type_args, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.tree*, %struct.tree** %3, align 8
  %18 = getelementptr inbounds %struct.tree, %struct.tree* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.tree*, %struct.tree** %3, align 8
  %24 = getelementptr inbounds %struct.tree, %struct.tree* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %58 [
    i32 131, label %30
    i32 130, label %37
    i32 129, label %44
    i32 128, label %51
  ]

30:                                               ; preds = %1
  %31 = load %struct.tree*, %struct.tree** %3, align 8
  %32 = getelementptr inbounds %struct.tree, %struct.tree* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = call %struct.tl_combinator_tree* @tl_parse_args134(%struct.TYPE_3__* %35)
  store %struct.tl_combinator_tree* %36, %struct.tl_combinator_tree** %2, align 8
  br label %60

37:                                               ; preds = %1
  %38 = load %struct.tree*, %struct.tree** %3, align 8
  %39 = getelementptr inbounds %struct.tree, %struct.tree* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %40, i64 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = call %struct.tl_combinator_tree* @tl_parse_args2(%struct.TYPE_3__* %42)
  store %struct.tl_combinator_tree* %43, %struct.tl_combinator_tree** %2, align 8
  br label %60

44:                                               ; preds = %1
  %45 = load %struct.tree*, %struct.tree** %3, align 8
  %46 = getelementptr inbounds %struct.tree, %struct.tree* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %47, i64 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call %struct.tl_combinator_tree* @tl_parse_args134(%struct.TYPE_3__* %49)
  store %struct.tl_combinator_tree* %50, %struct.tl_combinator_tree** %2, align 8
  br label %60

51:                                               ; preds = %1
  %52 = load %struct.tree*, %struct.tree** %3, align 8
  %53 = getelementptr inbounds %struct.tree, %struct.tree* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %54, i64 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = call %struct.tl_combinator_tree* @tl_parse_args134(%struct.TYPE_3__* %56)
  store %struct.tl_combinator_tree* %57, %struct.tl_combinator_tree** %2, align 8
  br label %60

58:                                               ; preds = %1
  %59 = call i32 @assert(i32 0)
  store %struct.tl_combinator_tree* null, %struct.tl_combinator_tree** %2, align 8
  br label %60

60:                                               ; preds = %58, %51, %44, %37, %30
  %61 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %2, align 8
  ret %struct.tl_combinator_tree* %61
}

declare dso_local i32 @vkprintf(i32, i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.tl_combinator_tree* @tl_parse_args134(%struct.TYPE_3__*) #1

declare dso_local %struct.tl_combinator_tree* @tl_parse_args2(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
