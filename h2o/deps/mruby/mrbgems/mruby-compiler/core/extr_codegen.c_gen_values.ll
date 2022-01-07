; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_gen_values.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_gen_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

@NODE_SPLAT = common dso_local global i64 0, align 8
@CALL_MAXARGS = common dso_local global i32 0, align 4
@NODE_ARRAY = common dso_local global i64 0, align 8
@VAL = common dso_local global i32 0, align 4
@OP_ARRAY = common dso_local global i32 0, align 4
@OP_ARYCAT = common dso_local global i32 0, align 4
@OP_ARYPUSH = common dso_local global i32 0, align 4
@NOVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32, i32)* @gen_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_values(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %150, %4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %162

15:                                               ; preds = %12
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @nint(i32 %20)
  %22 = load i64, i64* @NODE_SPLAT, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @CALL_MAXARGS, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp sge i32 %27, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %15
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %150

34:                                               ; preds = %31, %15
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %134

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @nint(i32 %50)
  %52 = load i64, i64* @NODE_ARRAY, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %43
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* @VAL, align 4
  %62 = call i32 @codegen(i32* %55, %struct.TYPE_5__* %60, i32 %61)
  %63 = call i32 (...) @pop()
  br label %94

64:                                               ; preds = %43, %40, %37
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @pop_n(i32 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @OP_ARRAY, align 4
  %69 = call i32 (...) @cursp()
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @genop_2(i32* %67, i32 %68, i32 %69, i32 %70)
  %72 = call i32 (...) @push()
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* @VAL, align 4
  %78 = call i32 @codegen(i32* %73, %struct.TYPE_5__* %76, i32 %77)
  %79 = call i32 (...) @pop()
  %80 = call i32 (...) @pop()
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %64
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* @OP_ARYCAT, align 4
  %86 = call i32 (...) @cursp()
  %87 = call i32 @genop_1(i32* %84, i32 %85, i32 %86)
  br label %93

88:                                               ; preds = %64
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* @OP_ARYPUSH, align 4
  %91 = call i32 (...) @cursp()
  %92 = call i32 @genop_1(i32* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %88, %83
  br label %94

94:                                               ; preds = %93, %54
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  store %struct.TYPE_4__* %97, %struct.TYPE_4__** %7, align 8
  br label %98

98:                                               ; preds = %129, %94
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %100 = icmp ne %struct.TYPE_4__* %99, null
  br i1 %100, label %101, label %133

101:                                              ; preds = %98
  %102 = call i32 (...) @push()
  %103 = load i32*, i32** %6, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i32, i32* @VAL, align 4
  %108 = call i32 @codegen(i32* %103, %struct.TYPE_5__* %106, i32 %107)
  %109 = call i32 (...) @pop()
  %110 = call i32 (...) @pop()
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @nint(i32 %115)
  %117 = load i64, i64* @NODE_SPLAT, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %101
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* @OP_ARYCAT, align 4
  %122 = call i32 (...) @cursp()
  %123 = call i32 @genop_1(i32* %120, i32 %121, i32 %122)
  br label %129

124:                                              ; preds = %101
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* @OP_ARYPUSH, align 4
  %127 = call i32 (...) @cursp()
  %128 = call i32 @genop_1(i32* %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %124, %119
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  store %struct.TYPE_4__* %132, %struct.TYPE_4__** %7, align 8
  br label %98

133:                                              ; preds = %98
  br label %149

134:                                              ; preds = %34
  br label %135

135:                                              ; preds = %138, %134
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %137 = icmp ne %struct.TYPE_4__* %136, null
  br i1 %137, label %138, label %148

138:                                              ; preds = %135
  %139 = load i32*, i32** %6, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = load i32, i32* @NOVAL, align 4
  %144 = call i32 @codegen(i32* %139, %struct.TYPE_5__* %142, i32 %143)
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  store %struct.TYPE_4__* %147, %struct.TYPE_4__** %7, align 8
  br label %135

148:                                              ; preds = %135
  br label %149

149:                                              ; preds = %148, %133
  store i32 -1, i32* %5, align 4
  br label %164

150:                                              ; preds = %31
  %151 = load i32*, i32** %6, align 8
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @codegen(i32* %151, %struct.TYPE_5__* %154, i32 %155)
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  store %struct.TYPE_4__* %161, %struct.TYPE_4__** %7, align 8
  br label %12

162:                                              ; preds = %12
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %162, %149
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i64 @nint(i32) #1

declare dso_local i32 @codegen(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @pop(...) #1

declare dso_local i32 @pop_n(i32) #1

declare dso_local i32 @genop_2(i32*, i32, i32, i32) #1

declare dso_local i32 @cursp(...) #1

declare dso_local i32 @push(...) #1

declare dso_local i32 @genop_1(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
