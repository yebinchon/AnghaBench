; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_dump.c_get_filename_table_size.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_dump.c_get_filename_table_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_7__**, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_7__*, i32**, i32*)* @get_filename_table_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_filename_table_size(i32* %0, %struct.TYPE_7__* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32**, i32*** %7, align 8
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  store i64 0, i64* %10, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %11, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @mrb_assert(i32* %20)
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %77, %4
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %80

28:                                               ; preds = %22
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %31, i64 %33
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %13, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @find_filename_index(i32* %36, i32 %38, i32 %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %76

44:                                               ; preds = %28
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 4, %52
  %54 = trunc i64 %53 to i32
  %55 = call i64 @mrb_realloc(i32* %48, i32* %49, i32 %54)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %9, align 8
  %57 = load i32**, i32*** %7, align 8
  store i32* %56, i32** %57, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mrb_sym2name_len(i32* %67, i32 %70, i64* %14)
  %72 = load i64, i64* %14, align 8
  %73 = add i64 4, %72
  %74 = load i64, i64* %10, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %10, align 8
  br label %76

76:                                               ; preds = %44, %28
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %22

80:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %101, %80
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %81
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %91, i64 %93
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i32**, i32*** %7, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = call i64 @get_filename_table_size(i32* %88, %struct.TYPE_7__* %95, i32** %96, i32* %97)
  %99 = load i64, i64* %10, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %10, align 8
  br label %101

101:                                              ; preds = %87
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %81

104:                                              ; preds = %81
  %105 = load i64, i64* %10, align 8
  ret i64 %105
}

declare dso_local i32 @mrb_assert(i32*) #1

declare dso_local i32 @find_filename_index(i32*, i32, i32) #1

declare dso_local i64 @mrb_realloc(i32*, i32*, i32) #1

declare dso_local i32 @mrb_sym2name_len(i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
