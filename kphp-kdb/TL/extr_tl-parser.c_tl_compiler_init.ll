; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_compiler_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_compiler_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__**, %struct.TYPE_4__**, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@TL_COMPILER_INITIALIZED_MAGIC = common dso_local global i64 0, align 8
@TL_MIN_HASHMAP_SIZE = common dso_local global i32 0, align 4
@tl_expression_int_hash_compare = common dso_local global i32 0, align 4
@tl_expression_int_hash_compute_hash = common dso_local global i32 0, align 4
@tl_expression_combinator_hash_compare = common dso_local global i32 0, align 4
@tl_expression_combinator_hash_compute_hash = common dso_local global i32 0, align 4
@tl_expression_right_name_hash_compare = common dso_local global i32 0, align 4
@tl_expression_right_name_hash_compute_hash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_compiler_init(%struct.tl_compiler* %0) #0 {
  %2 = alloca %struct.tl_compiler*, align 8
  %3 = alloca i32, align 4
  store %struct.tl_compiler* %0, %struct.tl_compiler** %2, align 8
  %4 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %5 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TL_COMPILER_INITIALIZED_MAGIC, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %105

10:                                               ; preds = %1
  %11 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %12 = call i32 @memset(%struct.tl_compiler* %11, i32 0, i32 56)
  %13 = load i64, i64* @TL_COMPILER_INITIALIZED_MAGIC, align 8
  %14 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %15 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %17 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %16, i32 0, i32 6
  %18 = call i32 @tl_string_buffer_init(i32* %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %84, %10
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %87

22:                                               ; preds = %19
  %23 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %24 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @tl_list_expressions_init(i32* %28)
  %30 = load i32, i32* @TL_MIN_HASHMAP_SIZE, align 4
  %31 = call i8* @tl_hashmap_alloc(i32 %30)
  %32 = bitcast i8* %31 to %struct.TYPE_4__*
  %33 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %34 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %33, i32 0, i32 4
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 %37
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %38, align 8
  %39 = load i32, i32* @tl_expression_int_hash_compare, align 4
  %40 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %41 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %42, i64 %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %39, i32* %47, align 4
  %48 = load i32, i32* @tl_expression_int_hash_compute_hash, align 4
  %49 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %50 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %49, i32 0, i32 4
  %51 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %51, i64 %53
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %48, i32* %56, align 4
  %57 = load i32, i32* @TL_MIN_HASHMAP_SIZE, align 4
  %58 = call i8* @tl_hashmap_alloc(i32 %57)
  %59 = bitcast i8* %58 to %struct.TYPE_5__*
  %60 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %61 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %60, i32 0, i32 3
  %62 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %62, i64 %64
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %65, align 8
  %66 = load i32, i32* @tl_expression_combinator_hash_compare, align 4
  %67 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %68 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %67, i32 0, i32 3
  %69 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %69, i64 %71
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 %66, i32* %74, align 4
  %75 = load i32, i32* @tl_expression_combinator_hash_compute_hash, align 4
  %76 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %77 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %76, i32 0, i32 3
  %78 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %78, i64 %80
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 %75, i32* %83, align 4
  br label %84

84:                                               ; preds = %22
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %19

87:                                               ; preds = %19
  %88 = load i32, i32* @TL_MIN_HASHMAP_SIZE, align 4
  %89 = call i8* @tl_hashmap_alloc(i32 %88)
  %90 = bitcast i8* %89 to %struct.TYPE_6__*
  %91 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %92 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %91, i32 0, i32 2
  store %struct.TYPE_6__* %90, %struct.TYPE_6__** %92, align 8
  %93 = load i32, i32* @tl_expression_right_name_hash_compare, align 4
  %94 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %95 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %94, i32 0, i32 2
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* @tl_expression_right_name_hash_compute_hash, align 4
  %99 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %100 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %99, i32 0, i32 2
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 4
  %103 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %104 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %103, i32 0, i32 1
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %87, %9
  ret void
}

declare dso_local i32 @memset(%struct.tl_compiler*, i32, i32) #1

declare dso_local i32 @tl_string_buffer_init(i32*) #1

declare dso_local i32 @tl_list_expressions_init(i32*) #1

declare dso_local i8* @tl_hashmap_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
