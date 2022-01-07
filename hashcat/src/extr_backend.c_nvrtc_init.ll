; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_nvrtc_init.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_nvrtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c"libnvrtc.so\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"libnvrtc.so.1\00", align 1
@nvrtcAddNameExpression = common dso_local global i32 0, align 4
@NVRTC_NVRTCADDNAMEEXPRESSION = common dso_local global i32 0, align 4
@NVRTC = common dso_local global i32 0, align 4
@nvrtcCompileProgram = common dso_local global i32 0, align 4
@NVRTC_NVRTCCOMPILEPROGRAM = common dso_local global i32 0, align 4
@nvrtcCreateProgram = common dso_local global i32 0, align 4
@NVRTC_NVRTCCREATEPROGRAM = common dso_local global i32 0, align 4
@nvrtcDestroyProgram = common dso_local global i32 0, align 4
@NVRTC_NVRTCDESTROYPROGRAM = common dso_local global i32 0, align 4
@nvrtcGetLoweredName = common dso_local global i32 0, align 4
@NVRTC_NVRTCGETLOWEREDNAME = common dso_local global i32 0, align 4
@nvrtcGetPTX = common dso_local global i32 0, align 4
@NVRTC_NVRTCGETPTX = common dso_local global i32 0, align 4
@nvrtcGetPTXSize = common dso_local global i32 0, align 4
@NVRTC_NVRTCGETPTXSIZE = common dso_local global i32 0, align 4
@nvrtcGetProgramLog = common dso_local global i32 0, align 4
@NVRTC_NVRTCGETPROGRAMLOG = common dso_local global i32 0, align 4
@nvrtcGetProgramLogSize = common dso_local global i32 0, align 4
@NVRTC_NVRTCGETPROGRAMLOGSIZE = common dso_local global i32 0, align 4
@nvrtcGetErrorString = common dso_local global i32 0, align 4
@NVRTC_NVRTCGETERRORSTRING = common dso_local global i32 0, align 4
@nvrtcVersion = common dso_local global i32 0, align 4
@NVRTC_NVRTCVERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvrtc_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = call i32 @memset(%struct.TYPE_9__* %13, i32 0, i32 8)
  %15 = call i8* @hc_dlopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = call i8* @hc_dlopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %90

34:                                               ; preds = %28
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = load i32, i32* @nvrtcAddNameExpression, align 4
  %37 = load i32, i32* @NVRTC_NVRTCADDNAMEEXPRESSION, align 4
  %38 = load i32, i32* @NVRTC, align 4
  %39 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %35, i32 %36, i32 %37, i32 %38, i32 1)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = load i32, i32* @nvrtcCompileProgram, align 4
  %42 = load i32, i32* @NVRTC_NVRTCCOMPILEPROGRAM, align 4
  %43 = load i32, i32* @NVRTC, align 4
  %44 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %40, i32 %41, i32 %42, i32 %43, i32 1)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = load i32, i32* @nvrtcCreateProgram, align 4
  %47 = load i32, i32* @NVRTC_NVRTCCREATEPROGRAM, align 4
  %48 = load i32, i32* @NVRTC, align 4
  %49 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %45, i32 %46, i32 %47, i32 %48, i32 1)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = load i32, i32* @nvrtcDestroyProgram, align 4
  %52 = load i32, i32* @NVRTC_NVRTCDESTROYPROGRAM, align 4
  %53 = load i32, i32* @NVRTC, align 4
  %54 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %50, i32 %51, i32 %52, i32 %53, i32 1)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = load i32, i32* @nvrtcGetLoweredName, align 4
  %57 = load i32, i32* @NVRTC_NVRTCGETLOWEREDNAME, align 4
  %58 = load i32, i32* @NVRTC, align 4
  %59 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %55, i32 %56, i32 %57, i32 %58, i32 1)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = load i32, i32* @nvrtcGetPTX, align 4
  %62 = load i32, i32* @NVRTC_NVRTCGETPTX, align 4
  %63 = load i32, i32* @NVRTC, align 4
  %64 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %60, i32 %61, i32 %62, i32 %63, i32 1)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = load i32, i32* @nvrtcGetPTXSize, align 4
  %67 = load i32, i32* @NVRTC_NVRTCGETPTXSIZE, align 4
  %68 = load i32, i32* @NVRTC, align 4
  %69 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %65, i32 %66, i32 %67, i32 %68, i32 1)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = load i32, i32* @nvrtcGetProgramLog, align 4
  %72 = load i32, i32* @NVRTC_NVRTCGETPROGRAMLOG, align 4
  %73 = load i32, i32* @NVRTC, align 4
  %74 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %70, i32 %71, i32 %72, i32 %73, i32 1)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = load i32, i32* @nvrtcGetProgramLogSize, align 4
  %77 = load i32, i32* @NVRTC_NVRTCGETPROGRAMLOGSIZE, align 4
  %78 = load i32, i32* @NVRTC, align 4
  %79 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %75, i32 %76, i32 %77, i32 %78, i32 1)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = load i32, i32* @nvrtcGetErrorString, align 4
  %82 = load i32, i32* @NVRTC_NVRTCGETERRORSTRING, align 4
  %83 = load i32, i32* @NVRTC, align 4
  %84 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %80, i32 %81, i32 %82, i32 %83, i32 1)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = load i32, i32* @nvrtcVersion, align 4
  %87 = load i32, i32* @NVRTC_NVRTCVERSION, align 4
  %88 = load i32, i32* @NVRTC, align 4
  %89 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %85, i32 %86, i32 %87, i32 %88, i32 1)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %34, %33
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i8* @hc_dlopen(i8*) #1

declare dso_local i32 @HC_LOAD_FUNC(%struct.TYPE_9__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
