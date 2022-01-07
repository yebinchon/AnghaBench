; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_render_metrics.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_render_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@conf = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i32, i32)* @render_metrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_metrics(%struct.TYPE_20__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 (...) @get_xpos()
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.TYPE_19__* @output_lookup(i32 %14)
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %9, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 11
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @render_hits(%struct.TYPE_20__* %21, i32 %22, i32* %7)
  br label %24

24:                                               ; preds = %20, %3
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 9
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @render_hits_percent(%struct.TYPE_20__* %30, i32 %31, i32* %7)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 10
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @render_visitors(%struct.TYPE_20__* %39, i32 %40, i32* %7)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 9
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @render_visitors_percent(%struct.TYPE_20__* %48, i32 %49, i32* %7)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @conf, i32 0, i32 3), align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @render_bw(%struct.TYPE_20__* %60, i32 %61, i32* %7)
  br label %63

63:                                               ; preds = %59, %54, %51
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @conf, i32 0, i32 2), align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @render_avgts(%struct.TYPE_20__* %72, i32 %73, i32* %7)
  br label %75

75:                                               ; preds = %71, %68, %63
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @conf, i32 0, i32 2), align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @render_cumts(%struct.TYPE_20__* %84, i32 %85, i32* %7)
  br label %87

87:                                               ; preds = %83, %80, %75
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @conf, i32 0, i32 2), align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @render_maxts(%struct.TYPE_20__* %96, i32 %97, i32* %7)
  br label %99

99:                                               ; preds = %95, %92, %87
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @conf, i32 0, i32 1), align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @render_method(%struct.TYPE_20__* %108, i32 %109, i32* %7)
  br label %111

111:                                              ; preds = %107, %104, %99
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @conf, i32 0, i32 0), align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @render_proto(%struct.TYPE_20__* %120, i32 %121, i32* %7)
  br label %123

123:                                              ; preds = %119, %116, %111
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @render_data(%struct.TYPE_20__* %129, i32 %130, i32* %7)
  br label %132

132:                                              ; preds = %128, %123
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %137, %132
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145, %137
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @render_bars(%struct.TYPE_20__* %149, i32 %150, i32* %7)
  br label %152

152:                                              ; preds = %148, %145, %140
  ret void
}

declare dso_local i32 @get_xpos(...) #1

declare dso_local %struct.TYPE_19__* @output_lookup(i32) #1

declare dso_local i32 @render_hits(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @render_hits_percent(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @render_visitors(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @render_visitors_percent(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @render_bw(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @render_avgts(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @render_cumts(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @render_maxts(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @render_method(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @render_proto(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @render_data(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @render_bars(%struct.TYPE_20__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
