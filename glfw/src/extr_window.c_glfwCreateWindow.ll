; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_window.c_glfwCreateWindow.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_window.c_glfwCreateWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_21__, %struct.TYPE_23__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_22__ = type { i32, i32, i8*, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_20__, %struct.TYPE_23__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32 }

@GLFW_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid window size %ix%i\00", align 1
@_glfw = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@GLFW_CURSOR_NORMAL = common dso_local global i32 0, align 4
@GLFW_DONT_CARE = common dso_local global i8* null, align 8
@GLFW_NO_API = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @glfwCreateWindow(i32 %0, i32 %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_24__, align 4
  %13 = alloca %struct.TYPE_25__, align 8
  %14 = alloca %struct.TYPE_22__, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = icmp sge i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = call i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32* null)
  %29 = load i32, i32* %7, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* %8, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31, %5
  %35 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @_glfwInputError(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  store i32* null, i32** %6, align 8
  br label %184

39:                                               ; preds = %31
  %40 = bitcast %struct.TYPE_24__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 8 bitcast (%struct.TYPE_24__* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @_glfw, i32 0, i32 0, i32 3) to i8*), i64 12, i1 false)
  %41 = bitcast %struct.TYPE_25__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 bitcast (%struct.TYPE_25__* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @_glfw, i32 0, i32 0, i32 2) to i8*), i64 16, i1 false)
  %42 = bitcast %struct.TYPE_22__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 bitcast (%struct.TYPE_22__* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @_glfw, i32 0, i32 0, i32 1) to i8*), i64 64, i1 false)
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 2
  store i8* %47, i8** %48, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = bitcast i32* %49 to %struct.TYPE_23__*
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  store %struct.TYPE_23__* %50, %struct.TYPE_23__** %51, align 8
  %52 = call i32 @_glfwIsValidContextConfig(%struct.TYPE_25__* %13)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %39
  store i32* null, i32** %6, align 8
  br label %184

55:                                               ; preds = %39
  %56 = call %struct.TYPE_23__* @calloc(i32 1, i32 112)
  store %struct.TYPE_23__* %56, %struct.TYPE_23__** %15, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @_glfw, i32 0, i32 1), align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 14
  store %struct.TYPE_23__* %57, %struct.TYPE_23__** %59, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_23__* %60, %struct.TYPE_23__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @_glfw, i32 0, i32 1), align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 13
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 13
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 13
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 5
  store i32 %70, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 13
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 4
  store i32 %75, i32* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 13
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @_glfw, i32 0, i32 0, i32 0), align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 13
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  store i32* %88, i32** %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 10
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 12
  store i32 %92, i32* %94, align 4
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 9
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 11
  store i32 %96, i32* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 8
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 10
  store i32 %100, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 9
  store i32 %104, i32* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @GLFW_CURSOR_NORMAL, align 4
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 7
  store i32 %111, i32* %113, align 8
  %114 = load i8*, i8** @GLFW_DONT_CARE, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 6
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** @GLFW_DONT_CARE, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** @GLFW_DONT_CARE, align 8
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  %123 = load i8*, i8** @GLFW_DONT_CARE, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  %126 = load i8*, i8** @GLFW_DONT_CARE, align 8
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** @GLFW_DONT_CARE, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %133 = call i32 @_glfwPlatformCreateWindow(%struct.TYPE_23__* %132, %struct.TYPE_22__* %14, %struct.TYPE_25__* %13, %struct.TYPE_24__* %12)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %55
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %137 = bitcast %struct.TYPE_23__* %136 to i32*
  %138 = call i32 @glfwDestroyWindow(i32* %137)
  store i32* null, i32** %6, align 8
  br label %184

139:                                              ; preds = %55
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @GLFW_NO_API, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %139
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %146 = call i32 @_glfwRefreshContextAttribs(%struct.TYPE_23__* %145, %struct.TYPE_25__* %13)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %150 = bitcast %struct.TYPE_23__* %149 to i32*
  %151 = call i32 @glfwDestroyWindow(i32* %150)
  store i32* null, i32** %6, align 8
  br label %184

152:                                              ; preds = %144
  br label %153

153:                                              ; preds = %152, %139
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %164 = call i32 @_glfwCenterCursorInContentArea(%struct.TYPE_23__* %163)
  br label %165

165:                                              ; preds = %162, %158
  br label %181

166:                                              ; preds = %153
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %166
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %172 = call i32 @_glfwPlatformShowWindow(%struct.TYPE_23__* %171)
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %178 = call i32 @_glfwPlatformFocusWindow(%struct.TYPE_23__* %177)
  br label %179

179:                                              ; preds = %176, %170
  br label %180

180:                                              ; preds = %179, %166
  br label %181

181:                                              ; preds = %180, %165
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %183 = bitcast %struct.TYPE_23__* %182 to i32*
  store i32* %183, i32** %6, align 8
  br label %184

184:                                              ; preds = %181, %148, %135, %54, %34
  %185 = load i32*, i32** %6, align 8
  ret i32* %185
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32*) #1

declare dso_local i32 @_glfwInputError(i32, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_glfwIsValidContextConfig(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_23__* @calloc(i32, i32) #1

declare dso_local i32 @_glfwPlatformCreateWindow(%struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @glfwDestroyWindow(i32*) #1

declare dso_local i32 @_glfwRefreshContextAttribs(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @_glfwCenterCursorInContentArea(%struct.TYPE_23__*) #1

declare dso_local i32 @_glfwPlatformShowWindow(%struct.TYPE_23__*) #1

declare dso_local i32 @_glfwPlatformFocusWindow(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
