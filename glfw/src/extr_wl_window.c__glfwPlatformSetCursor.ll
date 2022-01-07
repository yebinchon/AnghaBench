; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_window.c__glfwPlatformSetCursor.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_window.c__glfwPlatformSetCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i64, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_21__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32*, %struct.wl_cursor*, %struct.wl_cursor* }
%struct.wl_cursor = type { i32 }

@_glfw = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@mainWindow = common dso_local global i64 0, align 8
@GLFW_CURSOR_DISABLED = common dso_local global i64 0, align 8
@GLFW_CURSOR_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"left_ptr\00", align 1
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Wayland: Standard cursor not found\00", align 1
@GLFW_CURSOR_HIDDEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformSetCursor(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.wl_cursor*, align 8
  %6 = alloca %struct.wl_cursor*, align 8
  %7 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  store %struct.wl_cursor* null, %struct.wl_cursor** %6, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 1), align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %107

11:                                               ; preds = %2
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %15, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 4), align 8
  %18 = icmp ne %struct.TYPE_19__* %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @mainWindow, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19, %11
  br label %107

28:                                               ; preds = %19
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GLFW_CURSOR_DISABLED, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %36 = call i64 @isPointerLocked(%struct.TYPE_19__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %40 = call i32 @unlockPointer(%struct.TYPE_19__* %39)
  br label %41

41:                                               ; preds = %38, %34, %28
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @GLFW_CURSOR_NORMAL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %41
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %49 = icmp ne %struct.TYPE_21__* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = call i32 @setCursorImage(%struct.TYPE_19__* %51, %struct.TYPE_20__* %53)
  br label %80

55:                                               ; preds = %47
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 3), align 8
  %57 = call %struct.wl_cursor* @wl_cursor_theme_get_cursor(i64 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.wl_cursor* %57, %struct.wl_cursor** %5, align 8
  %58 = load %struct.wl_cursor*, %struct.wl_cursor** %5, align 8
  %59 = icmp ne %struct.wl_cursor* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %62 = call i32 @_glfwInputError(i32 %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %107

63:                                               ; preds = %55
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 2), align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 2), align 8
  %68 = call %struct.wl_cursor* @wl_cursor_theme_get_cursor(i64 %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.wl_cursor* %68, %struct.wl_cursor** %6, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = bitcast %struct.TYPE_20__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %70, i8 0, i64 48, i1 false)
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %72 = load %struct.wl_cursor*, %struct.wl_cursor** %5, align 8
  %73 = ptrtoint %struct.wl_cursor* %72 to i32
  store i32 %73, i32* %71, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %75 = load %struct.wl_cursor*, %struct.wl_cursor** %6, align 8
  %76 = ptrtoint %struct.wl_cursor* %75 to i32
  store i32 %76, i32* %74, align 4
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  store i32 0, i32* %77, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %79 = call i32 @setCursorImage(%struct.TYPE_19__* %78, %struct.TYPE_20__* %7)
  br label %80

80:                                               ; preds = %69, %50
  br label %107

81:                                               ; preds = %41
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @GLFW_CURSOR_DISABLED, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %89 = call i64 @isPointerLocked(%struct.TYPE_19__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %93 = call i32 @lockPointer(%struct.TYPE_19__* %92)
  br label %94

94:                                               ; preds = %91, %87
  br label %106

95:                                               ; preds = %81
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @GLFW_CURSOR_HIDDEN, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 1), align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 0), align 8
  %104 = call i32 @wl_pointer_set_cursor(i32 %102, i32 %103, i32* null, i32 0, i32 0)
  br label %105

105:                                              ; preds = %101, %95
  br label %106

106:                                              ; preds = %105, %94
  br label %107

107:                                              ; preds = %10, %27, %60, %106, %80
  ret void
}

declare dso_local i64 @isPointerLocked(%struct.TYPE_19__*) #1

declare dso_local i32 @unlockPointer(%struct.TYPE_19__*) #1

declare dso_local i32 @setCursorImage(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local %struct.wl_cursor* @wl_cursor_theme_get_cursor(i64, i8*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @lockPointer(%struct.TYPE_19__*) #1

declare dso_local i32 @wl_pointer_set_cursor(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
