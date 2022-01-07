; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_render_content.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_render_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }

@DASH_HEAD_POS = common dso_local global i32 0, align 4
@DASH_EMPTY_POS = common dso_local global i32 0, align 4
@conf = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@DASH_DASHES_POS = common dso_local global i32 0, align 4
@DASH_COLS_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_15__*, i32*, i32*, i32*, %struct.TYPE_14__*)* @render_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_content(i32* %0, %struct.TYPE_15__* %1, i32* %2, i32* %3, i32* %4, %struct.TYPE_14__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_14__* %5, %struct.TYPE_14__** %12, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = call i32 (...) @get_data_pos_rows()
  store i32 %23, i32* %19, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* %18, align 4
  %27 = call i32 @getmaxyx(i32* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %18, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %16, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %165, %6
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %168

38:                                               ; preds = %34
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %16, align 4
  %41 = srem i32 %39, %40
  %42 = load i32, i32* @DASH_HEAD_POS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @render_header(i32* %45, %struct.TYPE_15__* %46, i32 %49, i32* %50)
  br label %155

52:                                               ; preds = %38
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %16, align 4
  %55 = srem i32 %53, %54
  %56 = load i32, i32* @DASH_EMPTY_POS, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @conf, i32 0, i32 0), align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @render_description(i32* %62, %struct.TYPE_15__* %63, i32* %64)
  br label %154

66:                                               ; preds = %58, %52
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %16, align 4
  %69 = srem i32 %67, %68
  %70 = load i32, i32* @DASH_EMPTY_POS, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %16, align 4
  %75 = srem i32 %73, %74
  %76 = load i32, i32* %16, align 4
  %77 = sub nsw i32 %76, 1
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %72, %66
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %153

83:                                               ; preds = %72
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %16, align 4
  %86 = srem i32 %84, %85
  %87 = load i32, i32* @DASH_DASHES_POS, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @conf, i32 0, i32 0), align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %152

96:                                               ; preds = %89, %83
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %16, align 4
  %99 = srem i32 %97, %98
  %100 = load i32, i32* @DASH_COLS_POS, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %96
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @conf, i32 0, i32 0), align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %102
  %106 = load i32*, i32** %7, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @render_cols(i32* %106, %struct.TYPE_15__* %107, i32* %108)
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %151

113:                                              ; preds = %102, %96
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %16, align 4
  %116 = srem i32 %114, %115
  %117 = load i32, i32* %19, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %126, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %16, align 4
  %122 = srem i32 %120, %121
  %123 = load i32, i32* %16, align 4
  %124 = sub nsw i32 %123, 2
  %125 = icmp sle i32 %122, %124
  br i1 %125, label %126, label %146

126:                                              ; preds = %119, %113
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %16, align 4
  %129 = srem i32 %127, %128
  %130 = load i32, i32* %19, align 4
  %131 = sub nsw i32 %129, %130
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = load i64, i64* %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %131, %138
  store i32 %139, i32* %15, align 4
  %140 = load i32*, i32** %7, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* %15, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %145 = call i32 @render_data_line(i32* %140, %struct.TYPE_15__* %141, i32* %142, i32 %143, %struct.TYPE_14__* %144)
  br label %150

146:                                              ; preds = %119
  %147 = load i32*, i32** %9, align 8
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %146, %126
  br label %151

151:                                              ; preds = %150, %105
  br label %152

152:                                              ; preds = %151, %92
  br label %153

153:                                              ; preds = %152, %79
  br label %154

154:                                              ; preds = %153, %61
  br label %155

155:                                              ; preds = %154, %44
  %156 = load i32*, i32** %11, align 8
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  %159 = load i32*, i32** %9, align 8
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %17, align 4
  %162 = icmp sge i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  br label %168

164:                                              ; preds = %155
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %14, align 4
  br label %34

168:                                              ; preds = %163, %34
  ret void
}

declare dso_local i32 @get_data_pos_rows(...) #1

declare dso_local i32 @getmaxyx(i32*, i32, i32) #1

declare dso_local i32 @render_header(i32*, %struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @render_description(i32*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @render_cols(i32*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @render_data_line(i32*, %struct.TYPE_15__*, i32*, i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
