; ModuleID = '/home/carl/AnghaBench/jq/src/extr_compile.c_block_compile.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_compile.c_block_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bytecode = type { %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.locfile = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @block_compile(i32 %0, %struct.bytecode** %1, %struct.locfile* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bytecode**, align 8
  %7 = alloca %struct.locfile*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bytecode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.bytecode** %1, %struct.bytecode*** %6, align 8
  store %struct.locfile* %2, %struct.locfile** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = call i8* @jv_mem_alloc(i32 32)
  %14 = bitcast i8* %13 to %struct.bytecode*
  store %struct.bytecode* %14, %struct.bytecode** %9, align 8
  %15 = load %struct.bytecode*, %struct.bytecode** %9, align 8
  %16 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.bytecode*, %struct.bytecode** %9, align 8
  %18 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = call i8* @jv_mem_alloc(i32 4)
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  %21 = load %struct.bytecode*, %struct.bytecode** %9, align 8
  %22 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %21, i32 0, i32 0
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @count_cfunctions(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.bytecode*, %struct.bytecode** %9, align 8
  %26 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @jv_mem_calloc(i32 4, i32 %29)
  %31 = load %struct.bytecode*, %struct.bytecode** %9, align 8
  %32 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %30, i32* %34, align 4
  %35 = call i32 (...) @jv_array()
  %36 = load %struct.bytecode*, %struct.bytecode** %9, align 8
  %37 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 4
  %40 = call i32 (...) @jv_object()
  %41 = call i32 @jv_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 (...) @jv_null()
  %43 = call i32 @jv_object_set(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.bytecode*, %struct.bytecode** %9, align 8
  %45 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = call i32 (...) @jv_invalid()
  store i32 %46, i32* %11, align 4
  %47 = load %struct.bytecode*, %struct.bytecode** %9, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.locfile*, %struct.locfile** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @compile(%struct.bytecode* %47, i32 %48, %struct.locfile* %49, i32 %50, i32* %11)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @jv_free(i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @jv_free(i32 %54)
  %56 = load %struct.bytecode*, %struct.bytecode** %9, align 8
  %57 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %4
  %68 = load %struct.bytecode*, %struct.bytecode** %9, align 8
  %69 = call i32 @bytecode_free(%struct.bytecode* %68)
  %70 = load %struct.bytecode**, %struct.bytecode*** %6, align 8
  store %struct.bytecode* null, %struct.bytecode** %70, align 8
  br label %74

71:                                               ; preds = %4
  %72 = load %struct.bytecode*, %struct.bytecode** %9, align 8
  %73 = load %struct.bytecode**, %struct.bytecode*** %6, align 8
  store %struct.bytecode* %72, %struct.bytecode** %73, align 8
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i32, i32* %12, align 4
  ret i32 %75
}

declare dso_local i8* @jv_mem_alloc(i32) #1

declare dso_local i32 @count_cfunctions(i32) #1

declare dso_local i32 @jv_mem_calloc(i32, i32) #1

declare dso_local i32 @jv_array(...) #1

declare dso_local i32 @jv_object_set(i32, i32, i32) #1

declare dso_local i32 @jv_object(...) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i32 @jv_null(...) #1

declare dso_local i32 @jv_invalid(...) #1

declare dso_local i32 @compile(%struct.bytecode*, i32, %struct.locfile*, i32, i32*) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bytecode_free(%struct.bytecode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
