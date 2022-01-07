; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_gen_literal_array.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_gen_literal_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@VAL = common dso_local global i32 0, align 4
@OP_STRCAT = common dso_local global i32 0, align 4
@OP_ARRAY = common dso_local global i32 0, align 4
@NOVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i64, i32)* @gen_literal_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_literal_array(i32* %0, %struct.TYPE_6__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %102

13:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %77, %13
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %81

17:                                               ; preds = %14
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @nint(i32 %22)
  switch i32 %23, label %63 [
    i32 128, label %24
    i32 131, label %41
    i32 129, label %50
  ]

24:                                               ; preds = %17
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = icmp eq %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nint(i32 %36)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %63

40:                                               ; preds = %29, %24
  br label %41

41:                                               ; preds = %17, %40
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i32, i32* @VAL, align 4
  %47 = call i32 @codegen(i32* %42, %struct.TYPE_7__* %45, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %63

50:                                               ; preds = %17
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @gen_intern(i32* %59)
  br label %61

61:                                               ; preds = %58, %53
  br label %62

62:                                               ; preds = %61, %50
  br label %63

63:                                               ; preds = %17, %62, %41, %39
  br label %64

64:                                               ; preds = %67, %63
  %65 = load i32, i32* %10, align 4
  %66 = icmp sge i32 %65, 2
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = call i32 (...) @pop()
  %69 = call i32 (...) @pop()
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* @OP_STRCAT, align 4
  %72 = call i32 (...) @cursp()
  %73 = call i32 @genop_1(i32* %70, i32 %71, i32 %72)
  %74 = call i32 (...) @push()
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %10, align 4
  br label %64

77:                                               ; preds = %64
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %6, align 8
  br label %14

81:                                               ; preds = %14
  %82 = load i32, i32* %10, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  %87 = load i64, i64* %7, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @gen_intern(i32* %90)
  br label %92

92:                                               ; preds = %89, %84
  br label %93

93:                                               ; preds = %92, %81
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @pop_n(i32 %94)
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* @OP_ARRAY, align 4
  %98 = call i32 (...) @cursp()
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @genop_2(i32* %96, i32 %97, i32 %98, i32 %99)
  %101 = call i32 (...) @push()
  br label %125

102:                                              ; preds = %4
  br label %103

103:                                              ; preds = %120, %102
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = icmp ne %struct.TYPE_6__* %104, null
  br i1 %105, label %106, label %124

106:                                              ; preds = %103
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @nint(i32 %111)
  switch i32 %112, label %120 [
    i32 131, label %113
    i32 130, label %113
  ]

113:                                              ; preds = %106, %106
  %114 = load i32*, i32** %5, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load i32, i32* @NOVAL, align 4
  %119 = call i32 @codegen(i32* %114, %struct.TYPE_7__* %117, i32 %118)
  br label %120

120:                                              ; preds = %113, %106
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  store %struct.TYPE_6__* %123, %struct.TYPE_6__** %6, align 8
  br label %103

124:                                              ; preds = %103
  br label %125

125:                                              ; preds = %124, %93
  ret void
}

declare dso_local i32 @nint(i32) #1

declare dso_local i32 @codegen(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @gen_intern(i32*) #1

declare dso_local i32 @pop(...) #1

declare dso_local i32 @genop_1(i32*, i32, i32) #1

declare dso_local i32 @cursp(...) #1

declare dso_local i32 @push(...) #1

declare dso_local i32 @pop_n(i32) #1

declare dso_local i32 @genop_2(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
