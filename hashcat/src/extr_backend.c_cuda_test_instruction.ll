; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_cuda_test_instruction.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_cuda_test_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64 (i32, i32, i8**)* }
%struct.TYPE_16__ = type { i64 (i32*, i8*, i32, i32*, i32*)* }

@.str = private unnamed_addr constant [17 x i8] c"test_instruction\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"--restrict\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"--gpu-architecture\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"compute_%d%d\00", align 1
@NVRTC_SUCCESS = common dso_local global i64 0, align 8
@CUDA_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i32, i8*)* @cuda_test_instruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuda_test_instruction(%struct.TYPE_13__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x i8*], align 16
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @hc_nvrtcCreateProgram(%struct.TYPE_13__* %22, i32* %10, i8* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32* null)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %123

27:                                               ; preds = %4
  %28 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %28, align 16
  %29 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %29, align 8
  %30 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @hc_asprintf(i8** %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %31, i32 %32)
  %34 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 3
  store i8* null, i8** %34, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %12, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %13, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i64 (i32, i32, i8**)*, i64 (i32, i32, i8**)** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  %47 = call i64 %44(i32 %45, i32 3, i8** %46)
  store i64 %47, i64* %14, align 8
  %48 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 2
  %49 = load i8*, i8** %48, align 16
  %50 = call i32 @hcfree(i8* %49)
  store i64 0, i64* %15, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @hc_nvrtcGetProgramLogSize(%struct.TYPE_13__* %51, i32 %52, i64* %15)
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* @NVRTC_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %27
  %58 = load i64, i64* %15, align 8
  %59 = add i64 %58, 1
  %60 = call i64 @hcmalloc(i64 %59)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %16, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i8*, i8** %16, align 8
  %65 = call i32 @hc_nvrtcGetProgramLog(%struct.TYPE_13__* %62, i32 %63, i8* %64)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %123

68:                                               ; preds = %57
  %69 = load i8*, i8** %16, align 8
  %70 = call i32 @puts(i8* %69)
  %71 = load i8*, i8** %16, align 8
  %72 = call i32 @hcfree(i8* %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = call i32 @hc_nvrtcDestroyProgram(%struct.TYPE_13__* %73, i32* %10)
  store i32 0, i32* %5, align 4
  br label %123

75:                                               ; preds = %27
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @hc_nvrtcGetPTXSize(%struct.TYPE_13__* %76, i32 %77, i64* %17)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %123

81:                                               ; preds = %75
  %82 = load i64, i64* %17, align 8
  %83 = call i64 @hcmalloc(i64 %82)
  %84 = inttoptr i64 %83 to i8*
  store i8* %84, i8** %18, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i8*, i8** %18, align 8
  %88 = call i32 @hc_nvrtcGetPTX(%struct.TYPE_13__* %85, i32 %86, i8* %87)
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i8*, i8** %18, align 8
  %92 = call i32 @hcfree(i8* %91)
  store i32 0, i32* %5, align 4
  br label %123

93:                                               ; preds = %81
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %97, %struct.TYPE_16__** %19, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i64 (i32*, i8*, i32, i32*, i32*)*, i64 (i32*, i8*, i32, i32*, i32*)** %99, align 8
  %101 = load i8*, i8** %18, align 8
  %102 = call i64 %100(i32* %20, i8* %101, i32 0, i32* null, i32* null)
  store i64 %102, i64* %21, align 8
  %103 = load i64, i64* %21, align 8
  %104 = load i64, i64* @CUDA_SUCCESS, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %93
  %107 = load i8*, i8** %18, align 8
  %108 = call i32 @hcfree(i8* %107)
  store i32 0, i32* %5, align 4
  br label %123

109:                                              ; preds = %93
  %110 = load i8*, i8** %18, align 8
  %111 = call i32 @hcfree(i8* %110)
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %113 = load i32, i32* %20, align 4
  %114 = call i32 @hc_cuModuleUnload(%struct.TYPE_13__* %112, i32 %113)
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %123

117:                                              ; preds = %109
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %119 = call i32 @hc_nvrtcDestroyProgram(%struct.TYPE_13__* %118, i32* %10)
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 0, i32* %5, align 4
  br label %123

122:                                              ; preds = %117
  store i32 1, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %121, %116, %106, %90, %80, %68, %67, %26
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @hc_nvrtcCreateProgram(%struct.TYPE_13__*, i32*, i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @hc_asprintf(i8**, i8*, i32, i32) #1

declare dso_local i32 @hcfree(i8*) #1

declare dso_local i32 @hc_nvrtcGetProgramLogSize(%struct.TYPE_13__*, i32, i64*) #1

declare dso_local i64 @hcmalloc(i64) #1

declare dso_local i32 @hc_nvrtcGetProgramLog(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @hc_nvrtcDestroyProgram(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @hc_nvrtcGetPTXSize(%struct.TYPE_13__*, i32, i64*) #1

declare dso_local i32 @hc_nvrtcGetPTX(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @hc_cuModuleUnload(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
