; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_input.c_glfwUpdateGamepadMappings.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_input.c_glfwUpdateGamepadMappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@GLFW_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@_glfw = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GLFW_JOYSTICK_LAST = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glfwUpdateGamepadMappings(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = icmp ne i8* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* @GLFW_FALSE, align 4
  %16 = call i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32 %15)
  br label %17

17:                                               ; preds = %109, %1
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %110

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sge i32 %24, 48
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sle i32 %29, 57
  br i1 %30, label %51, label %31

31:                                               ; preds = %26, %21
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sge i32 %34, 97
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sle i32 %39, 102
  br i1 %40, label %51, label %41

41:                                               ; preds = %36, %31
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sge i32 %44, 65
  br i1 %45, label %46, label %99

46:                                               ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sle i32 %49, 70
  br i1 %50, label %51, label %99

51:                                               ; preds = %46, %36, %26
  %52 = load i8*, i8** %4, align 8
  %53 = call i64 @strcspn(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp ult i64 %54, 1024
  br i1 %55, label %56, label %95

56:                                               ; preds = %51
  %57 = bitcast %struct.TYPE_11__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %57, i8 0, i64 8, i1 false)
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %59 = load i8*, i8** %4, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @memcpy(i8* %58, i8* %59, i64 %60)
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %62
  store i8 0, i8* %63, align 1
  %64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %65 = call i64 @parseMapping(%struct.TYPE_11__* %7, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %56
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.TYPE_11__* @findMapping(i32 %69)
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %8, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = icmp ne %struct.TYPE_11__* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = bitcast %struct.TYPE_11__* %74 to i8*
  %76 = bitcast %struct.TYPE_11__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 8, i1 false)
  br label %93

77:                                               ; preds = %67
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0), align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0), align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 2), align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0), align 8
  %82 = sext i32 %81 to i64
  %83 = mul i64 8, %82
  %84 = trunc i64 %83 to i32
  %85 = call %struct.TYPE_11__* @realloc(%struct.TYPE_11__* %80, i32 %84)
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 2), align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 2), align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0), align 8
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i64 %89
  %91 = bitcast %struct.TYPE_11__* %90 to i8*
  %92 = bitcast %struct.TYPE_11__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 8, i1 false)
  br label %93

93:                                               ; preds = %77, %73
  br label %94

94:                                               ; preds = %93, %56
  br label %95

95:                                               ; preds = %94, %51
  %96 = load i64, i64* %6, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 %96
  store i8* %98, i8** %4, align 8
  br label %109

99:                                               ; preds = %46, %41
  %100 = load i8*, i8** %4, align 8
  %101 = call i64 @strcspn(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 %101
  store i8* %103, i8** %4, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = call i32 @strspn(i8* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %106 = load i8*, i8** %4, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %4, align 8
  br label %109

109:                                              ; preds = %99, %95
  br label %17

110:                                              ; preds = %17
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %130, %110
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @GLFW_JOYSTICK_LAST, align 4
  %114 = icmp sle i32 %112, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %111
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 1), align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i64 %118
  store %struct.TYPE_12__* %119, %struct.TYPE_12__** %9, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %115
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %126 = call i32 @findValidMapping(%struct.TYPE_12__* %125)
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %124, %115
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %3, align 4
  br label %111

133:                                              ; preds = %111
  %134 = load i32, i32* @GLFW_TRUE, align 4
  ret i32 %134
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @parseMapping(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.TYPE_11__* @findMapping(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_11__* @realloc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @findValidMapping(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
