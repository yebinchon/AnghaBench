; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_DemoCompleted.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_DemoCompleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32, double, i8**, i32, i32 }
%struct.TYPE_5__ = type { i8* }

@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@cl_timedemo = common dso_local global %struct.TYPE_6__* null, align 8
@clc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [58 x i8] c"%i frames %3.1f seconds %3.1f fps %d.0/%.1f/%d.0/%.1f ms\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@cl_timedemoLog = common dso_local global %struct.TYPE_5__* null, align 8
@MAX_TIMEDEMO_DURATIONS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"# %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s written\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Couldn't open %s for writing\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_DemoCompleted() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = load i32, i32* @MAX_STRING_CHARS, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cl_timedemo, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %107

13:                                               ; preds = %0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cl_timedemo, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %107

18:                                               ; preds = %13
  %19 = call i32 (...) @Sys_Milliseconds()
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %106

24:                                               ; preds = %18
  %25 = trunc i64 %8 to i32
  %26 = load double, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 1), align 8
  %27 = load i32, i32* %3, align 4
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %28, 1.000000e+03
  %30 = fptosi double %29 to i32
  %31 = load double, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 1), align 8
  %32 = fmul double %31, 1.000000e+03
  %33 = load i32, i32* %3, align 4
  %34 = sitofp i32 %33 to double
  %35 = fdiv double %32, %34
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 4), align 4
  %37 = load i32, i32* %3, align 4
  %38 = sitofp i32 %37 to float
  %39 = load double, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 1), align 8
  %40 = fptrunc double %39 to float
  %41 = fdiv float %38, %40
  %42 = fptosi float %41 to i32
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 3), align 8
  %44 = call i32 (...) @CL_DemoFrameDurationSDev()
  %45 = call i32 @Com_sprintf(i8* %10, i32 %25, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), double %26, i32 %30, double %35, i32 %36, i32 %42, i32 %43, i32 %44)
  %46 = call i32 @Com_Printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cl_timedemoLog, align 8
  %48 = icmp ne %struct.TYPE_5__* %47, null
  br i1 %48, label %49, label %105

49:                                               ; preds = %24
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cl_timedemoLog, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %105

55:                                               ; preds = %49
  %56 = load double, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 1), align 8
  %57 = fsub double %56, 1.000000e+00
  %58 = load i32, i32* @MAX_TIMEDEMO_DURATIONS, align 4
  %59 = sitofp i32 %58 to double
  %60 = fcmp ogt double %57, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @MAX_TIMEDEMO_DURATIONS, align 4
  store i32 %62, i32* %5, align 4
  br label %67

63:                                               ; preds = %55
  %64 = load double, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 1), align 8
  %65 = fsub double %64, 1.000000e+00
  %66 = fptosi double %65 to i32
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %61
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cl_timedemoLog, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @FS_FOpenFileWrite(i8* %70)
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %67
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @FS_Printf(i64 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %10)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %89, %74
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load i64, i64* %6, align 8
  %83 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 2), align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @FS_Printf(i64 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %77

92:                                               ; preds = %77
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @FS_FCloseFile(i64 %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cl_timedemoLog, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @Com_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %97)
  br label %104

99:                                               ; preds = %67
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cl_timedemoLog, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %99, %92
  br label %105

105:                                              ; preds = %104, %49, %24
  br label %106

106:                                              ; preds = %105, %18
  br label %107

107:                                              ; preds = %106, %13, %0
  %108 = load i32, i32* @qtrue, align 4
  %109 = call i32 @CL_Disconnect(i32 %108)
  %110 = call i32 (...) @CL_NextDemo()
  %111 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %111)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Sys_Milliseconds(...) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, double, i32, double, i32, i32, i32, i32) #2

declare dso_local i32 @CL_DemoFrameDurationSDev(...) #2

declare dso_local i32 @Com_Printf(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @FS_FOpenFileWrite(i8*) #2

declare dso_local i32 @FS_Printf(i64, i8*, i8*) #2

declare dso_local i32 @FS_FCloseFile(i64) #2

declare dso_local i32 @CL_Disconnect(i32) #2

declare dso_local i32 @CL_NextDemo(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
