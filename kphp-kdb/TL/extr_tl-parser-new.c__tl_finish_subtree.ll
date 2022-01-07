; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c__tl_finish_subtree.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c__tl_finish_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator_tree = type { i64, i32, i64, i64, %struct.TYPE_2__*, %struct.tl_combinator_tree*, %struct.tl_type* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.tl_type = type { i32 }

@type_type = common dso_local global i64 0, align 8
@act_arg = common dso_local global i64 0, align 8
@act_type = common dso_local global i64 0, align 8
@type_num = common dso_local global i64 0, align 8
@type_num_value = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_tl_finish_subtree(%struct.tl_combinator_tree* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tl_combinator_tree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.tl_type*, align 8
  store %struct.tl_combinator_tree* %0, %struct.tl_combinator_tree** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %10 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @type_type, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %17 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %23 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @act_arg, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %29 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @act_type, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %27, %3
  %34 = phi i1 [ true, %3 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %39 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %42 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  %43 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %44 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @act_type, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %33
  %49 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %50 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %49, i32 0, i32 6
  %51 = load %struct.tl_type*, %struct.tl_type** %50, align 8
  store %struct.tl_type* %51, %struct.tl_type** %8, align 8
  %52 = load %struct.tl_type*, %struct.tl_type** %8, align 8
  %53 = ptrtoint %struct.tl_type* %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.tl_type*, %struct.tl_type** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @tl_type_set_params(%struct.tl_type* %55, i32 %56, i64 %57)
  store i32 %58, i32* %4, align 4
  br label %122

59:                                               ; preds = %33
  %60 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %61 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @type_type, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %69 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %68, i32 0, i32 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %67, %59
  %75 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %76 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %75, i32 0, i32 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @type_num, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %90, label %82

82:                                               ; preds = %74
  %83 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %84 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %83, i32 0, i32 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @type_num_value, align 8
  %89 = icmp eq i64 %87, %88
  br label %90

90:                                               ; preds = %82, %74, %67
  %91 = phi i1 [ true, %74 ], [ true, %67 ], [ %89, %82 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %95 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %94, i32 0, i32 5
  %96 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  %99 = load i64, i64* %7, align 8
  %100 = mul nsw i64 %99, 2
  %101 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %102 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %101, i32 0, i32 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @type_num, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %116, label %108

108:                                              ; preds = %90
  %109 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %110 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %109, i32 0, i32 4
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @type_num_value, align 8
  %115 = icmp eq i64 %113, %114
  br label %116

116:                                              ; preds = %108, %90
  %117 = phi i1 [ true, %90 ], [ %115, %108 ]
  %118 = zext i1 %117 to i32
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %100, %119
  %121 = call i32 @_tl_finish_subtree(%struct.tl_combinator_tree* %96, i32 %98, i64 %120)
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %116, %48
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_type_set_params(%struct.tl_type*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
