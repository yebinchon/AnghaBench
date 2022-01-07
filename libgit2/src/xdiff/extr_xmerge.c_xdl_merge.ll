; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xmerge.c_xdl_merge.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xmerge.c_xdl_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { i64, i32* }
%struct.TYPE_23__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdl_merge(%struct.TYPE_24__* %0, %struct.TYPE_24__* %1, %struct.TYPE_24__* %2, %struct.TYPE_22__* %3, %struct.TYPE_25__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_23__, align 4
  %15 = alloca %struct.TYPE_23__, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %11, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %17, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %27 = call i64 @xdl_do_diff(%struct.TYPE_24__* %24, %struct.TYPE_24__* %25, %struct.TYPE_21__* %26, %struct.TYPE_23__* %14)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %170

30:                                               ; preds = %5
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %34 = call i64 @xdl_do_diff(%struct.TYPE_24__* %31, %struct.TYPE_24__* %32, %struct.TYPE_21__* %33, %struct.TYPE_23__* %15)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @xdl_free_env(%struct.TYPE_23__* %14)
  store i32 -1, i32* %6, align 4
  br label %170

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @xdl_change_compact(i32* %39, i32* %40, i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @xdl_change_compact(i32* %47, i32* %48, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = call i64 @xdl_build_script(%struct.TYPE_23__* %14, i32** %12)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54, %46, %38
  %58 = call i32 @xdl_free_env(%struct.TYPE_23__* %14)
  store i32 -1, i32* %6, align 4
  br label %170

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @xdl_change_compact(i32* %60, i32* %61, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @xdl_change_compact(i32* %68, i32* %69, i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = call i64 @xdl_build_script(%struct.TYPE_23__* %15, i32** %13)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75, %67, %59
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @xdl_free_script(i32* %79)
  %81 = call i32 @xdl_free_env(%struct.TYPE_23__* %14)
  %82 = call i32 @xdl_free_env(%struct.TYPE_23__* %15)
  store i32 -1, i32* %6, align 4
  br label %170

83:                                               ; preds = %75
  store i32 0, i32* %16, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %119, label %86

86:                                               ; preds = %83
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i8* @xdl_malloc(i64 %89)
  %91 = bitcast i8* %90 to i32*
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  store i32* %91, i32** %93, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %86
  %99 = load i32*, i32** %13, align 8
  %100 = call i32 @xdl_free_script(i32* %99)
  %101 = call i32 @xdl_free_env(%struct.TYPE_23__* %14)
  %102 = call i32 @xdl_free_env(%struct.TYPE_23__* %15)
  store i32 -1, i32* %6, align 4
  br label %170

103:                                              ; preds = %86
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @memcpy(i32* %106, i32 %109, i64 %112)
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  br label %162

119:                                              ; preds = %83
  %120 = load i32*, i32** %13, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %155, label %122

122:                                              ; preds = %119
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i8* @xdl_malloc(i64 %125)
  %127 = bitcast i8* %126 to i32*
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 1
  store i32* %127, i32** %129, align 8
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %122
  %135 = load i32*, i32** %12, align 8
  %136 = call i32 @xdl_free_script(i32* %135)
  %137 = call i32 @xdl_free_env(%struct.TYPE_23__* %14)
  %138 = call i32 @xdl_free_env(%struct.TYPE_23__* %15)
  store i32 -1, i32* %6, align 4
  br label %170

139:                                              ; preds = %122
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @memcpy(i32* %142, i32 %145, i64 %148)
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  br label %161

155:                                              ; preds = %119
  %156 = load i32*, i32** %12, align 8
  %157 = load i32*, i32** %13, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %160 = call i32 @xdl_do_merge(%struct.TYPE_23__* %14, i32* %156, %struct.TYPE_23__* %15, i32* %157, %struct.TYPE_22__* %158, %struct.TYPE_25__* %159)
  store i32 %160, i32* %16, align 4
  br label %161

161:                                              ; preds = %155, %139
  br label %162

162:                                              ; preds = %161, %103
  %163 = load i32*, i32** %12, align 8
  %164 = call i32 @xdl_free_script(i32* %163)
  %165 = load i32*, i32** %13, align 8
  %166 = call i32 @xdl_free_script(i32* %165)
  %167 = call i32 @xdl_free_env(%struct.TYPE_23__* %14)
  %168 = call i32 @xdl_free_env(%struct.TYPE_23__* %15)
  %169 = load i32, i32* %16, align 4
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %162, %134, %98, %78, %57, %36, %29
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i64 @xdl_do_diff(%struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @xdl_free_env(%struct.TYPE_23__*) #1

declare dso_local i64 @xdl_change_compact(i32*, i32*, i32) #1

declare dso_local i64 @xdl_build_script(%struct.TYPE_23__*, i32**) #1

declare dso_local i32 @xdl_free_script(i32*) #1

declare dso_local i8* @xdl_malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @xdl_do_merge(%struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*, %struct.TYPE_22__*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
