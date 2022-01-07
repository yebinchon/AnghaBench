; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_ui.c_render_overall_statistics.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_ui.c_render_overall_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32* (...)*, i32, i32* (...)* }

@OVERALL_NUM_COLS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i64)* @render_overall_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_overall_statistics(i32* %0, %struct.TYPE_3__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32* null, i32** %7, align 8
  store i32 2, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i64 2, i64* %16, align 8
  br label %19

19:                                               ; preds = %164, %3
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %167

23:                                               ; preds = %19
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @OVERALL_NUM_COLS, align 8
  %26 = urem i64 %24, %25
  store i64 %26, i64* %15, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i64, i64* %15, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 2, i32* %8, align 4
  store i32 2, i32* %9, align 4
  %33 = load i64, i64* %16, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %16, align 8
  br label %35

35:                                               ; preds = %32, %29, %23
  %36 = load i64, i64* %13, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i32* (...)*, i32* (...)** %44, align 8
  %46 = call i32* (...) %45()
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %16, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @render_overall_field(i32* %47, i32 %52, i64 %53, i32 %54, i32* %55)
  store i64 0, i64* %13, align 8
  store i64 0, i64* %11, align 8
  br label %57

57:                                               ; preds = %87, %35
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %57
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @strlen(i32 %66)
  store i64 %67, i64* %17, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @OVERALL_NUM_COLS, align 8
  %70 = urem i64 %68, %69
  %71 = load i64, i64* %15, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %61
  %74 = load i64, i64* %17, align 8
  %75 = load i64, i64* %13, align 8
  %76 = icmp ugt i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %77
  %85 = load i64, i64* %17, align 8
  store i64 %85, i64* %13, align 8
  br label %86

86:                                               ; preds = %84, %77, %73, %61
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %11, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %11, align 8
  br label %57

90:                                               ; preds = %57
  store i64 0, i64* %14, align 8
  store i64 0, i64* %11, align 8
  br label %91

91:                                               ; preds = %121, %90
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %6, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %124

95:                                               ; preds = %91
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = load i64, i64* %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @strlen(i32 %100)
  store i64 %101, i64* %18, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* @OVERALL_NUM_COLS, align 8
  %104 = urem i64 %102, %103
  %105 = load i64, i64* %15, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %95
  %108 = load i64, i64* %18, align 8
  %109 = load i64, i64* %14, align 8
  %110 = icmp ugt i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = load i64, i64* %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %111
  %119 = load i64, i64* %18, align 8
  store i64 %119, i64* %14, align 8
  br label %120

120:                                              ; preds = %118, %111, %107, %95
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %11, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %11, align 8
  br label %91

124:                                              ; preds = %91
  %125 = load i64, i64* %13, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = add i64 %125, %127
  %129 = add i64 %128, 1
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %9, align 4
  %131 = load i64, i64* %14, align 8
  %132 = add i64 %131, 2
  %133 = load i64, i64* %13, align 8
  %134 = add i64 %133, %132
  store i64 %134, i64* %13, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %136 = load i64, i64* %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load i32* (...)*, i32* (...)** %138, align 8
  %140 = call i32* (...) %139()
  store i32* %140, i32** %7, align 8
  %141 = load i32*, i32** %4, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %143 = load i64, i64* %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i64, i64* %16, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @render_overall_value(i32* %141, i32 %146, i64 %147, i32 %148, i32* %149)
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %152 = load i64, i64* %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %124
  %158 = load i64, i64* @OVERALL_NUM_COLS, align 8
  br label %160

159:                                              ; preds = %124
  br label %160

160:                                              ; preds = %159, %157
  %161 = phi i64 [ %158, %157 ], [ 1, %159 ]
  %162 = load i64, i64* %12, align 8
  %163 = add i64 %162, %161
  store i64 %163, i64* %12, align 8
  br label %164

164:                                              ; preds = %160
  %165 = load i64, i64* %10, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %10, align 8
  br label %19

167:                                              ; preds = %19
  ret void
}

declare dso_local i32 @render_overall_field(i32*, i32, i64, i32, i32*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @render_overall_value(i32*, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
