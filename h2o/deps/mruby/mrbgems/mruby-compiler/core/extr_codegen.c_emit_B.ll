; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_emit_B.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_emit_B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64*, i64*, i64 }

@MAXARG_S = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"too big code block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64, i64)* @emit_B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_B(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @MAXARG_S, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAXARG_S, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = call i32 @codegen_error(%struct.TYPE_5__* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %10
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp uge i64 %20, %23
  br i1 %24, label %25, label %72

25:                                               ; preds = %19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = mul i64 %28, 2
  store i64 %29, i64* %27, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MAXARG_S, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load i64, i64* @MAXARG_S, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %25
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = mul i64 8, %46
  %48 = trunc i64 %47 to i32
  %49 = call i64 @codegen_realloc(%struct.TYPE_5__* %40, i64* %43, i32 %48)
  %50 = inttoptr i64 %49 to i64*
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i64* %50, i64** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %39
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = mul i64 8, %64
  %66 = trunc i64 %65 to i32
  %67 = call i64 @codegen_realloc(%struct.TYPE_5__* %58, i64* %61, i32 %66)
  %68 = inttoptr i64 %67 to i64*
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  store i64* %68, i64** %70, align 8
  br label %71

71:                                               ; preds = %57, %39
  br label %72

72:                                               ; preds = %71, %19
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %108

77:                                               ; preds = %72
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load i64, i64* %5, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %82, %77
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i64*, i64** %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  store i64 %88, i64* %93, align 8
  br label %107

94:                                               ; preds = %82
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = sub i64 %98, 1
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* %5, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  store i64 %101, i64* %106, align 8
  br label %107

107:                                              ; preds = %94, %85
  br label %108

108:                                              ; preds = %107, %72
  %109 = load i64, i64* %6, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* %5, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64 %109, i64* %114, align 8
  ret void
}

declare dso_local i32 @codegen_error(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @codegen_realloc(%struct.TYPE_5__*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
