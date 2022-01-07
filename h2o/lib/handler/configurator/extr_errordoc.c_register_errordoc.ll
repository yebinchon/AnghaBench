; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_errordoc.c_register_errordoc.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_errordoc.c_register_errordoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_19__** }
%struct.errordoc_configurator_t = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"url:s,status:*\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"status cannot be an empty sequence\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"status must be a 3-digit scalar or a sequence of 3-digit scalars\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"status must be within range of 400 to 599\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"status %d appears multiple times\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32*, %struct.TYPE_19__*)* @register_errordoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_errordoc(%struct.TYPE_21__* %0, i32* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.errordoc_configurator_t*, align 8
  %9 = alloca %struct.TYPE_19__**, align 8
  %10 = alloca %struct.TYPE_19__**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.errordoc_configurator_t*
  store %struct.errordoc_configurator_t* %21, %struct.errordoc_configurator_t** %8, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %24 = call i64 @h2o_configurator_parse_mapping(%struct.TYPE_21__* %22, %struct.TYPE_19__* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null, %struct.TYPE_19__*** %9, %struct.TYPE_19__*** %10)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %190

27:                                               ; preds = %3
  %28 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %59 [
    i32 129, label %32
    i32 128, label %33
  ]

32:                                               ; preds = %27
  store i64 1, i64* %13, align 8
  br label %64

33:                                               ; preds = %27
  %34 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  %45 = call i32 (%struct.TYPE_21__*, %struct.TYPE_19__*, i8*, ...) @h2o_configurator_errprintf(%struct.TYPE_21__* %42, %struct.TYPE_19__* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %190

46:                                               ; preds = %33
  %47 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %13, align 8
  %53 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %57, align 8
  store %struct.TYPE_19__** %58, %struct.TYPE_19__*** %10, align 8
  br label %64

59:                                               ; preds = %27
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %61 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  %63 = call i32 (%struct.TYPE_21__*, %struct.TYPE_19__*, i8*, ...) @h2o_configurator_errprintf(%struct.TYPE_21__* %60, %struct.TYPE_19__* %62, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %190

64:                                               ; preds = %46, %32
  %65 = load i64, i64* %13, align 8
  %66 = mul i64 4, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32* @alloca(i32 %67)
  store i32* %68, i32** %14, align 8
  store i64 0, i64* %11, align 8
  br label %69

69:                                               ; preds = %135, %64
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %13, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %138

73:                                               ; preds = %69
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %75 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %75, i64 %76
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = load i32*, i32** %14, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = call i64 @h2o_configurator_scanf(%struct.TYPE_21__* %74, %struct.TYPE_19__* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  store i32 -1, i32* %4, align 4
  br label %190

85:                                               ; preds = %73
  %86 = load i32*, i32** %14, align 8
  %87 = load i64, i64* %11, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp sle i32 400, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load i32*, i32** %14, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp sle i32 %95, 599
  br i1 %96, label %104, label %97

97:                                               ; preds = %91, %85
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %99 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %99, i64 %100
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %101, align 8
  %103 = call i32 (%struct.TYPE_21__*, %struct.TYPE_19__*, i8*, ...) @h2o_configurator_errprintf(%struct.TYPE_21__* %98, %struct.TYPE_19__* %102, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %190

104:                                              ; preds = %91
  store i64 0, i64* %12, align 8
  br label %105

105:                                              ; preds = %131, %104
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* %11, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %134

109:                                              ; preds = %105
  %110 = load i32*, i32** %14, align 8
  %111 = load i64, i64* %12, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %14, align 8
  %115 = load i64, i64* %11, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %113, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %109
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %121 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %122 = load i64, i64* %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %121, i64 %122
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %123, align 8
  %125 = load i32*, i32** %14, align 8
  %126 = load i64, i64* %11, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (%struct.TYPE_21__*, %struct.TYPE_19__*, i8*, ...) @h2o_configurator_errprintf(%struct.TYPE_21__* %120, %struct.TYPE_19__* %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %128)
  store i32 -1, i32* %4, align 4
  br label %190

130:                                              ; preds = %109
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %12, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %12, align 8
  br label %105

134:                                              ; preds = %105
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %11, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %11, align 8
  br label %69

138:                                              ; preds = %69
  %139 = load %struct.errordoc_configurator_t*, %struct.errordoc_configurator_t** %8, align 8
  %140 = getelementptr inbounds %struct.errordoc_configurator_t, %struct.errordoc_configurator_t* %139, i32 0, i32 1
  %141 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @SIZE_MAX, align 4
  %147 = call i32 @h2o_strdup(i32* %140, i32 %145, i32 %146)
  store i32 %147, i32* %15, align 4
  store i64 0, i64* %11, align 8
  br label %148

148:                                              ; preds = %186, %138
  %149 = load i64, i64* %11, align 8
  %150 = load i64, i64* %13, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %189

152:                                              ; preds = %148
  %153 = load %struct.errordoc_configurator_t*, %struct.errordoc_configurator_t** %8, align 8
  %154 = getelementptr inbounds %struct.errordoc_configurator_t, %struct.errordoc_configurator_t* %153, i32 0, i32 1
  %155 = load %struct.errordoc_configurator_t*, %struct.errordoc_configurator_t** %8, align 8
  %156 = getelementptr inbounds %struct.errordoc_configurator_t, %struct.errordoc_configurator_t* %155, i32 0, i32 0
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %156, align 8
  %158 = load %struct.errordoc_configurator_t*, %struct.errordoc_configurator_t** %8, align 8
  %159 = getelementptr inbounds %struct.errordoc_configurator_t, %struct.errordoc_configurator_t* %158, i32 0, i32 0
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %162, 1
  %164 = call i32 @h2o_vector_reserve(i32* %154, %struct.TYPE_22__* %157, i64 %163)
  %165 = load %struct.errordoc_configurator_t*, %struct.errordoc_configurator_t** %8, align 8
  %166 = getelementptr inbounds %struct.errordoc_configurator_t, %struct.errordoc_configurator_t* %165, i32 0, i32 0
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %168, align 8
  %170 = load %struct.errordoc_configurator_t*, %struct.errordoc_configurator_t** %8, align 8
  %171 = getelementptr inbounds %struct.errordoc_configurator_t, %struct.errordoc_configurator_t* %170, i32 0, i32 0
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %173, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i64 %174
  store %struct.TYPE_20__* %176, %struct.TYPE_20__** %16, align 8
  %177 = load i32*, i32** %14, align 8
  %178 = load i64, i64* %11, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %15, align 4
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %152
  %187 = load i64, i64* %11, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %11, align 8
  br label %148

189:                                              ; preds = %148
  store i32 0, i32* %4, align 4
  br label %190

190:                                              ; preds = %189, %119, %97, %84, %59, %41, %26
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i64 @h2o_configurator_parse_mapping(%struct.TYPE_21__*, %struct.TYPE_19__*, i8*, i32*, %struct.TYPE_19__***, %struct.TYPE_19__***) #1

declare dso_local i32 @h2o_configurator_errprintf(%struct.TYPE_21__*, %struct.TYPE_19__*, i8*, ...) #1

declare dso_local i32* @alloca(i32) #1

declare dso_local i64 @h2o_configurator_scanf(%struct.TYPE_21__*, %struct.TYPE_19__*, i8*, i32*) #1

declare dso_local i32 @h2o_strdup(i32*, i32, i32) #1

declare dso_local i32 @h2o_vector_reserve(i32*, %struct.TYPE_22__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
