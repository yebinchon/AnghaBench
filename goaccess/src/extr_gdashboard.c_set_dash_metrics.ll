; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_set_dash_metrics.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_set_dash_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i64, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_23__, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_35__, %struct.TYPE_33__, %struct.TYPE_31__, i64, i64, i32, %struct.TYPE_29__, i8*, i32, i8*, i32 }
%struct.TYPE_35__ = type { i8* }
%struct.TYPE_33__ = type { i8* }
%struct.TYPE_31__ = type { i8* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_22__ = type { i8*, %struct.TYPE_36__, %struct.TYPE_34__, %struct.TYPE_32__, i64, i64, %struct.TYPE_30__, i32, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_30__ = type { i32 }

@conf = common dso_local global %struct.TYPE_28__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__**, %struct.TYPE_22__*, i64, i32)* @set_dash_metrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dash_metrics(%struct.TYPE_25__** %0, %struct.TYPE_22__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_25__**, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_25__** %0, %struct.TYPE_25__*** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %10, align 8
  store i8* null, i8** %11, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %198

18:                                               ; preds = %4
  %19 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 0
  store i32* %25, i32** %12, align 8
  %26 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i64 %36
  store %struct.TYPE_24__* %37, %struct.TYPE_24__** %9, align 8
  %38 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 1
  store %struct.TYPE_23__* %44, %struct.TYPE_23__** %10, align 8
  %45 = call %struct.TYPE_27__* (...) @new_gmetrics()
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 1
  store %struct.TYPE_27__* %45, %struct.TYPE_27__** %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %18
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @render_child_node(i8* %56)
  br label %62

58:                                               ; preds = %18
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  br label %62

62:                                               ; preds = %58, %53
  %63 = phi i8* [ %57, %53 ], [ %61, %58 ]
  store i8* %63, i8** %11, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %66 = call i32 @set_max_values(%struct.TYPE_23__* %64, %struct.TYPE_22__* %65)
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 10
  store i32 %69, i32* %73, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @get_percentage(i32 %76, i32 %79)
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 9
  store i8* %80, i8** %84, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 8
  store i32 %87, i32* %91, align 8
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @get_percentage(i32 %94, i32 %97)
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 7
  store i8* %98, i8** %102, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @filesize_str(i32 %106)
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %111, i32 0, i32 0
  store i32 %107, i32* %112, align 4
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 @xstrdup(i8* %113)
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 5
  store i32 %114, i32* %118, align 8
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @conf, i32 0, i32 2), align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %62
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 4
  store i64 %129, i64* %133, align 8
  br label %134

134:                                              ; preds = %126, %121, %62
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @conf, i32 0, i32 1), align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %134
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 3
  store i64 %145, i64* %149, align 8
  br label %150

150:                                              ; preds = %142, %137, %134
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @conf, i32 0, i32 0), align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  br label %185

154:                                              ; preds = %150
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @usecs_to_str(i32 %158)
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %163, i32 0, i32 0
  store i8* %159, i8** %164, align 8
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @usecs_to_str(i32 %168)
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %173, i32 0, i32 0
  store i8* %169, i8** %174, align 8
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i8* @usecs_to_str(i32 %178)
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %183, i32 0, i32 0
  store i8* %179, i8** %184, align 8
  br label %185

185:                                              ; preds = %154, %153
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load i8*, i8** %11, align 8
  %190 = call i32 @free(i8* %189)
  br label %191

191:                                              ; preds = %188, %185
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %194 = call i32 @set_metrics_len(%struct.TYPE_23__* %192, %struct.TYPE_24__* %193)
  %195 = load i32*, i32** %12, align 8
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %191, %17
  ret void
}

declare dso_local %struct.TYPE_27__* @new_gmetrics(...) #1

declare dso_local i8* @render_child_node(i8*) #1

declare dso_local i32 @set_max_values(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i8* @get_percentage(i32, i32) #1

declare dso_local i32 @filesize_str(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i8* @usecs_to_str(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @set_metrics_len(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
