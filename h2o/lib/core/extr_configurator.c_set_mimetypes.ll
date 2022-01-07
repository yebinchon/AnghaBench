; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_configurator.c_set_mimetypes.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_configurator.c_set_mimetypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_21__** }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"extensions:a\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"is_compressible:*,priority:*\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"YES,NO\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"normal,highest\00", align 1
@H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@H2O_MIME_ATTRIBUTE_PRIORITY_HIGHEST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"logic flaw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_21__*)* @set_mimetypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mimetypes(i32* %0, i32* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_21__**, align 8
  %14 = alloca %struct.TYPE_21__**, align 8
  %15 = alloca %struct.TYPE_21__**, align 8
  %16 = alloca %struct.TYPE_22__, align 4
  %17 = alloca %struct.TYPE_21__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 130
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %202, %3
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %25, %30
  br i1 %31, label %32, label %205

32:                                               ; preds = %24
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %40, align 8
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %10, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  store %struct.TYPE_21__* %50, %struct.TYPE_21__** %11, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %53 = call i64 @assert_is_mimetype(i32* %51, %struct.TYPE_21__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %206

56:                                               ; preds = %32
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  switch i64 %59, label %199 [
    i64 129, label %60
    i64 128, label %78
    i64 130, label %117
  ]

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %63 = call i32 @assert_is_extension(i32* %61, %struct.TYPE_21__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  br label %206

66:                                               ; preds = %60
  %67 = load i32*, i32** %6, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @h2o_mimemap_define_mimetype(i32* %67, i32 %72, i32 %76, %struct.TYPE_22__* null)
  br label %201

78:                                               ; preds = %56
  store i64 0, i64* %9, align 8
  br label %79

79:                                               ; preds = %113, %78
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %80, %85
  br i1 %86, label %87, label %116

87:                                               ; preds = %79
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %92, i64 %93
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %94, align 8
  store %struct.TYPE_21__* %95, %struct.TYPE_21__** %12, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %98 = call i32 @assert_is_extension(i32* %96, %struct.TYPE_21__* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  store i32 -1, i32* %4, align 4
  br label %206

101:                                              ; preds = %87
  %102 = load i32*, i32** %6, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @h2o_mimemap_define_mimetype(i32* %102, i32 %107, i32 %111, %struct.TYPE_22__* null)
  br label %113

113:                                              ; preds = %101
  %114 = load i64, i64* %9, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %9, align 8
  br label %79

116:                                              ; preds = %79
  br label %201

117:                                              ; preds = %56
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @h2o_mimemap_get_default_attributes(i32 %121, %struct.TYPE_22__* %16)
  %123 = load i32*, i32** %5, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %125 = call i32 @h2o_configurator_parse_mapping(i32* %123, %struct.TYPE_21__* %124, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_21__*** %15, %struct.TYPE_21__*** %13, %struct.TYPE_21__*** %14)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  store i32 -1, i32* %4, align 4
  br label %206

128:                                              ; preds = %117
  %129 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %13, align 8
  %130 = icmp ne %struct.TYPE_21__** %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = load i32*, i32** %5, align 8
  %133 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %13, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = call i32 @h2o_configurator_get_one_of(i32* %132, %struct.TYPE_21__* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  switch i32 %135, label %140 [
    i32 0, label %136
    i32 1, label %138
  ]

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  store i32 1, i32* %137, align 4
  br label %141

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  store i32 0, i32* %139, align 4
  br label %141

140:                                              ; preds = %131
  store i32 -1, i32* %4, align 4
  br label %206

141:                                              ; preds = %138, %136
  br label %142

142:                                              ; preds = %141, %128
  %143 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %144 = icmp ne %struct.TYPE_21__** %143, null
  br i1 %144, label %145, label %158

145:                                              ; preds = %142
  %146 = load i32*, i32** %5, align 8
  %147 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %147, align 8
  %149 = call i32 @h2o_configurator_get_one_of(i32* %146, %struct.TYPE_21__* %148, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  switch i32 %149, label %156 [
    i32 0, label %150
    i32 1, label %153
  ]

150:                                              ; preds = %145
  %151 = load i32, i32* @H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL, align 4
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  store i32 %151, i32* %152, align 4
  br label %157

153:                                              ; preds = %145
  %154 = load i32, i32* @H2O_MIME_ATTRIBUTE_PRIORITY_HIGHEST, align 4
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  store i32 %154, i32* %155, align 4
  br label %157

156:                                              ; preds = %145
  store i32 -1, i32* %4, align 4
  br label %206

157:                                              ; preds = %153, %150
  br label %158

158:                                              ; preds = %157, %142
  store i64 0, i64* %9, align 8
  br label %159

159:                                              ; preds = %195, %158
  %160 = load i64, i64* %9, align 8
  %161 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %15, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %160, %166
  br i1 %167, label %168, label %198

168:                                              ; preds = %159
  %169 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %15, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %173, align 8
  %175 = load i64, i64* %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %174, i64 %175
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %176, align 8
  store %struct.TYPE_21__* %177, %struct.TYPE_21__** %17, align 8
  %178 = load i32*, i32** %5, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %180 = call i32 @assert_is_extension(i32* %178, %struct.TYPE_21__* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %168
  store i32 -1, i32* %4, align 4
  br label %206

183:                                              ; preds = %168
  %184 = load i32*, i32** %6, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, 1
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @h2o_mimemap_define_mimetype(i32* %184, i32 %189, i32 %193, %struct.TYPE_22__* %16)
  br label %195

195:                                              ; preds = %183
  %196 = load i64, i64* %9, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %9, align 8
  br label %159

198:                                              ; preds = %159
  br label %201

199:                                              ; preds = %56
  %200 = call i32 @h2o_fatal(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %201

201:                                              ; preds = %199, %198, %116, %66
  br label %202

202:                                              ; preds = %201
  %203 = load i64, i64* %8, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %8, align 8
  br label %24

205:                                              ; preds = %24
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %205, %182, %156, %140, %127, %100, %65, %55
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @assert_is_mimetype(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @assert_is_extension(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @h2o_mimemap_define_mimetype(i32*, i32, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @h2o_mimemap_get_default_attributes(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @h2o_configurator_parse_mapping(i32*, %struct.TYPE_21__*, i8*, i8*, %struct.TYPE_21__***, %struct.TYPE_21__***, %struct.TYPE_21__***) #1

declare dso_local i32 @h2o_configurator_get_one_of(i32*, %struct.TYPE_21__*, i8*) #1

declare dso_local i32 @h2o_fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
