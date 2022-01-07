; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_osmesa_context.c__glfwCreateContextOSMesa.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_osmesa_context.c__glfwCreateContextOSMesa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_19__ = type { i64, i64, i32, i32, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }

@GLFW_OPENGL_ES_API = common dso_local global i64 0, align 8
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"OSMesa: OpenGL ES is not available on OSMesa\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@OSMESA_FORMAT = common dso_local global i32 0, align 4
@OSMESA_RGBA = common dso_local global i32 0, align 4
@OSMESA_DEPTH_BITS = common dso_local global i32 0, align 4
@OSMESA_STENCIL_BITS = common dso_local global i32 0, align 4
@OSMESA_ACCUM_BITS = common dso_local global i32 0, align 4
@GLFW_OPENGL_CORE_PROFILE = common dso_local global i64 0, align 8
@OSMESA_PROFILE = common dso_local global i32 0, align 4
@OSMESA_CORE_PROFILE = common dso_local global i32 0, align 4
@GLFW_OPENGL_COMPAT_PROFILE = common dso_local global i64 0, align 8
@OSMESA_COMPAT_PROFILE = common dso_local global i32 0, align 4
@OSMESA_CONTEXT_MAJOR_VERSION = common dso_local global i32 0, align 4
@OSMESA_CONTEXT_MINOR_VERSION = common dso_local global i32 0, align 4
@GLFW_VERSION_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"OSMesa: Forward-compatible contexts not supported\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"OSMesa: OpenGL profiles unavailable\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"OSMesa: Failed to create context\00", align 1
@makeContextCurrentOSMesa = common dso_local global i32 0, align 4
@swapBuffersOSMesa = common dso_local global i32 0, align 4
@swapIntervalOSMesa = common dso_local global i32 0, align 4
@extensionSupportedOSMesa = common dso_local global i32 0, align 4
@getProcAddressOSMesa = common dso_local global i32 0, align 4
@destroyContextOSMesa = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwCreateContextOSMesa(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [40 x i32], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %14, %17
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %34 = call i32 @_glfwInputError(i32 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %35, i32* %4, align 4
  br label %187

36:                                               ; preds = %3
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = icmp ne %struct.TYPE_14__* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %8, align 8
  br label %49

49:                                               ; preds = %41, %36
  br i1 true, label %50, label %126

50:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  %51 = load i32, i32* @OSMESA_FORMAT, align 4
  %52 = load i32, i32* @OSMESA_RGBA, align 4
  %53 = call i32 @setAttrib(i32 %51, i32 %52)
  %54 = load i32, i32* @OSMESA_DEPTH_BITS, align 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @setAttrib(i32 %54, i32 %57)
  %59 = load i32, i32* @OSMESA_STENCIL_BITS, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @setAttrib(i32 %59, i32 %62)
  %64 = load i32, i32* @OSMESA_ACCUM_BITS, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @setAttrib(i32 %64, i32 %65)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @GLFW_OPENGL_CORE_PROFILE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %50
  %73 = load i32, i32* @OSMESA_PROFILE, align 4
  %74 = load i32, i32* @OSMESA_CORE_PROFILE, align 4
  %75 = call i32 @setAttrib(i32 %73, i32 %74)
  br label %87

76:                                               ; preds = %50
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @GLFW_OPENGL_COMPAT_PROFILE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* @OSMESA_PROFILE, align 4
  %84 = load i32, i32* @OSMESA_COMPAT_PROFILE, align 4
  %85 = call i32 @setAttrib(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %76
  br label %87

87:                                               ; preds = %86, %72
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 1
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %92, %87
  %98 = load i32, i32* @OSMESA_CONTEXT_MAJOR_VERSION, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @setAttrib(i32 %98, i32 %101)
  %103 = load i32, i32* @OSMESA_CONTEXT_MINOR_VERSION, align 4
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @setAttrib(i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %97, %92
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %115 = call i32 @_glfwInputError(i32 %114, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %116 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %116, i32* %4, align 4
  br label %187

117:                                              ; preds = %108
  %118 = call i32 @setAttrib(i32 0, i32 0)
  %119 = getelementptr inbounds [40 x i32], [40 x i32]* %11, i64 0, i64 0
  %120 = load i32*, i32** %8, align 8
  %121 = call i32* @OSMesaCreateContextAttribs(i32* %119, i32* %120)
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  store i32* %121, i32** %125, align 8
  br label %150

126:                                              ; preds = %49
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %133 = call i32 @_glfwInputError(i32 %132, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %134, i32* %4, align 4
  br label %187

135:                                              ; preds = %126
  %136 = load i32, i32* @OSMESA_RGBA, align 4
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32*, i32** %8, align 8
  %145 = call i32* @OSMesaCreateContextExt(i32 %136, i32 %139, i32 %142, i32 %143, i32* %144)
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  store i32* %145, i32** %149, align 8
  br label %150

150:                                              ; preds = %135, %117
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %159 = call i32 @_glfwInputError(i32 %158, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %160 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %160, i32* %4, align 4
  br label %187

161:                                              ; preds = %150
  %162 = load i32, i32* @makeContextCurrentOSMesa, align 4
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 5
  store i32 %162, i32* %165, align 4
  %166 = load i32, i32* @swapBuffersOSMesa, align 4
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 4
  store i32 %166, i32* %169, align 8
  %170 = load i32, i32* @swapIntervalOSMesa, align 4
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 3
  store i32 %170, i32* %173, align 4
  %174 = load i32, i32* @extensionSupportedOSMesa, align 4
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 2
  store i32 %174, i32* %177, align 8
  %178 = load i32, i32* @getProcAddressOSMesa, align 4
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  store i32 %178, i32* %181, align 4
  %182 = load i32, i32* @destroyContextOSMesa, align 4
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  store i32 %182, i32* %185, align 8
  %186 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %161, %157, %131, %113, %32
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32* @OSMesaCreateContextAttribs(i32*, i32*) #1

declare dso_local i32 @setAttrib(i32, i32) #1

declare dso_local i32* @OSMesaCreateContextExt(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
