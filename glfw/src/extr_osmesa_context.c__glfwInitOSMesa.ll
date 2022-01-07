; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_osmesa_context.c__glfwInitOSMesa.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_osmesa_context.c__glfwInitOSMesa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"libOSMesa.so.8\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"libOSMesa.so.6\00", align 1
@__const._glfwInitOSMesa.sonames = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GLFW_TRUE = common dso_local global i32 0, align 4
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"OSMesa: Library not found\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"OSMesaCreateContextExt\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"OSMesaCreateContextAttribs\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"OSMesaDestroyContext\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"OSMesaMakeCurrent\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"OSMesaGetColorBuffer\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"OSMesaGetDepthBuffer\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"OSMesaGetProcAddress\00", align 1
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [45 x i8] c"OSMesa: Failed to load required entry points\00", align 1
@_GLFW_OSMESA_LIBRARY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwInitOSMesa() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [3 x i8*], align 16
  %4 = bitcast [3 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([3 x i8*]* @__const._glfwInitOSMesa.sonames to i8*), i64 24, i1 false)
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %8, i32* %1, align 4
  br label %75

9:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %26, %9
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @_glfw_dlopen(i8* %20)
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %29

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %10

29:                                               ; preds = %24, %10
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %34 = call i32 @_glfwInputError(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %35, i32* %1, align 4
  br label %75

36:                                               ; preds = %29
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), align 8
  %38 = call i64 @_glfw_dlsym(i64 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i64 %38, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 5), align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), align 8
  %40 = call i64 @_glfw_dlsym(i64 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i64 %40, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 7), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), align 8
  %42 = call i64 @_glfw_dlsym(i64 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i64 %42, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), align 8
  %44 = call i64 @_glfw_dlsym(i64 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i64 %44, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), align 8
  %46 = call i64 @_glfw_dlsym(i64 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i64 %46, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), align 8
  %48 = call i64 @_glfw_dlsym(i64 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), align 8
  %50 = call i64 @_glfw_dlsym(i64 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  store i64 %50, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 5), align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %36
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65, %62, %59, %56, %53, %36
  %69 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %70 = call i32 @_glfwInputError(i32 %69, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %71 = call i32 (...) @_glfwTerminateOSMesa()
  %72 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %72, i32* %1, align 4
  br label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %74, i32* %1, align 4
  br label %75

75:                                               ; preds = %73, %68, %32, %7
  %76 = load i32, i32* %1, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @_glfw_dlopen(i8*) #2

declare dso_local i32 @_glfwInputError(i32, i8*) #2

declare dso_local i64 @_glfw_dlsym(i64, i8*) #2

declare dso_local i32 @_glfwTerminateOSMesa(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
