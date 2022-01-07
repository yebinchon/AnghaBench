; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_variable.c_iv_put.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_variable.c_iv_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64*, %struct.TYPE_4__*, i8** }

@MRB_IV_SEGMENT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i64, i8*)* @iv_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iv_put(i32* %0, %struct.TYPE_5__* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %150

18:                                               ; preds = %4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %9, align 8
  br label %22

22:                                               ; preds = %93, %18
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %98

25:                                               ; preds = %22
  store i64 0, i64* %13, align 8
  br label %26

26:                                               ; preds = %90, %25
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* @MRB_IV_SEGMENT_SIZE, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %93

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %13, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %14, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %68, label %41

41:                                               ; preds = %30
  %42 = load i64, i64* %13, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp uge i64 %42, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %41
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %13, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 %48, i64* %53, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i8**, i8*** %56, align 8
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  store i8* %54, i8** %59, align 8
  %60 = load i64, i64* %13, align 8
  %61 = add i64 %60, 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  br label %150

68:                                               ; preds = %41, %30
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %70 = icmp ne %struct.TYPE_4__* %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* %14, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %75, %struct.TYPE_4__** %11, align 8
  %76 = load i64, i64* %13, align 8
  store i64 %76, i64* %12, align 8
  br label %89

77:                                               ; preds = %71, %68
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i8**, i8*** %84, align 8
  %86 = load i64, i64* %13, align 8
  %87 = getelementptr inbounds i8*, i8** %85, i64 %86
  store i8* %82, i8** %87, align 8
  br label %150

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %74
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %13, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %13, align 8
  br label %26

93:                                               ; preds = %26
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %94, %struct.TYPE_4__** %10, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  store %struct.TYPE_4__* %97, %struct.TYPE_4__** %9, align 8
  br label %22

98:                                               ; preds = %22
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %104 = icmp ne %struct.TYPE_4__* %103, null
  br i1 %104, label %105, label %118

105:                                              ; preds = %98
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* %12, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  store i64 %106, i64* %111, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i8**, i8*** %114, align 8
  %116 = load i64, i64* %12, align 8
  %117 = getelementptr inbounds i8*, i8** %115, i64 %116
  store i8* %112, i8** %117, align 8
  br label %150

118:                                              ; preds = %98
  %119 = load i32*, i32** %5, align 8
  %120 = call i64 @mrb_malloc(i32* %119, i32 24)
  %121 = inttoptr i64 %120 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %121, %struct.TYPE_4__** %9, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %123 = icmp ne %struct.TYPE_4__* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %118
  br label %150

125:                                              ; preds = %118
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %127, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  store i64 %128, i64* %132, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i8**, i8*** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  store i8* %133, i8** %137, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  store i64 1, i64* %139, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %141 = icmp ne %struct.TYPE_4__* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %125
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  store %struct.TYPE_4__* %143, %struct.TYPE_4__** %145, align 8
  br label %150

146:                                              ; preds = %125
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  store %struct.TYPE_4__* %147, %struct.TYPE_4__** %149, align 8
  br label %150

150:                                              ; preds = %17, %47, %81, %105, %124, %146, %142
  ret void
}

declare dso_local i64 @mrb_malloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
