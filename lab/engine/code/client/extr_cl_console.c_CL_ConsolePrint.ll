; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_console.c_CL_ConsolePrint.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_console.c_CL_ConsolePrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { float*, i32, i32, i32, i32, i16*, i64*, i8* }
%struct.TYPE_5__ = type { i64 }

@qfalse = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"[skipnotify]\00", align 1
@qtrue = common dso_local global i8* null, align 8
@cl_noprint = common dso_local global %struct.TYPE_6__* null, align 8
@con = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@COLOR_WHITE = common dso_local global i8 0, align 1
@NUM_CON_TIMES = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ConsolePrint(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** @qfalse, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @Q_strncmp(i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 12)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** @qtrue, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 12
  store i8* %16, i8** %2, align 8
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cl_noprint, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cl_noprint, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %158

26:                                               ; preds = %20, %17
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 7), align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = load float*, float** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 0), align 8
  %31 = getelementptr inbounds float, float* %30, i64 3
  store float 1.000000e+00, float* %31, align 4
  %32 = load float*, float** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 0), align 8
  %33 = getelementptr inbounds float, float* %32, i64 2
  store float 1.000000e+00, float* %33, align 4
  %34 = load float*, float** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 0), align 8
  %35 = getelementptr inbounds float, float* %34, i64 1
  store float 1.000000e+00, float* %35, align 4
  %36 = load float*, float** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 0), align 8
  %37 = getelementptr inbounds float, float* %36, i64 0
  store float 1.000000e+00, float* %37, align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 1), align 8
  %38 = call i32 (...) @Con_CheckResize()
  %39 = load i8*, i8** @qtrue, align 8
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 7), align 8
  br label %40

40:                                               ; preds = %29, %26
  %41 = load i8, i8* @COLOR_WHITE, align 1
  %42 = call zeroext i16 @ColorIndex(i8 signext %41)
  store i16 %42, i16* %6, align 2
  br label %43

43:                                               ; preds = %127, %52, %40
  %44 = load i8*, i8** %2, align 8
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %5, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %128

48:                                               ; preds = %43
  %49 = load i8*, i8** %2, align 8
  %50 = call i64 @Q_IsColorString(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i8*, i8** %2, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = call zeroext i16 @ColorIndex(i8 signext %55)
  store i16 %56, i16* %6, align 2
  %57 = load i8*, i8** %2, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  store i8* %58, i8** %2, align 8
  br label %43

59:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %74, %59
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 1), align 8
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load i8*, i8** %2, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sle i32 %70, 32
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %77

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %60

77:                                               ; preds = %72, %60
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 1), align 8
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 2), align 4
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 1), align 8
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @Con_Linefeed(i8* %88)
  br label %90

90:                                               ; preds = %87, %81, %77
  %91 = load i8*, i8** %2, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %2, align 8
  %93 = load i8, i8* %5, align 1
  %94 = zext i8 %93 to i32
  switch i32 %94, label %99 [
    i32 10, label %95
    i32 13, label %98
  ]

95:                                               ; preds = %90
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @Con_Linefeed(i8* %96)
  br label %127

98:                                               ; preds = %90
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 2), align 4
  br label %127

99:                                               ; preds = %90
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 3), align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 4), align 4
  %102 = srem i32 %100, %101
  store i32 %102, i32* %3, align 4
  %103 = load i16, i16* %6, align 2
  %104 = zext i16 %103 to i32
  %105 = shl i32 %104, 8
  %106 = load i8, i8* %5, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %105, %107
  %109 = trunc i32 %108 to i16
  %110 = load i16*, i16** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 5), align 8
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 1), align 8
  %113 = mul nsw i32 %111, %112
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 2), align 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i16, i16* %110, i64 %116
  store i16 %109, i16* %117, align 2
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 2), align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 2), align 4
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 2), align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 1), align 8
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %99
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 @Con_Linefeed(i8* %124)
  br label %126

126:                                              ; preds = %123, %99
  br label %127

127:                                              ; preds = %126, %98, %95
  br label %43

128:                                              ; preds = %43
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 3), align 8
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %158

131:                                              ; preds = %128
  %132 = load i8*, i8** %7, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %149

134:                                              ; preds = %131
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 3), align 8
  %136 = load i32, i32* @NUM_CON_TIMES, align 4
  %137 = srem i32 %135, %136
  %138 = sub nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  %142 = load i32, i32* @NUM_CON_TIMES, align 4
  %143 = sub nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %141, %134
  %145 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 6), align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  store i64 0, i64* %148, align 8
  br label %157

149:                                              ; preds = %131
  %150 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0), align 8
  %151 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 6), align 8
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 3), align 8
  %153 = load i32, i32* @NUM_CON_TIMES, align 4
  %154 = srem i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %151, i64 %155
  store i64 %150, i64* %156, align 8
  br label %157

157:                                              ; preds = %149, %144
  br label %158

158:                                              ; preds = %25, %157, %128
  ret void
}

declare dso_local i32 @Q_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @Con_CheckResize(...) #1

declare dso_local zeroext i16 @ColorIndex(i8 signext) #1

declare dso_local i64 @Q_IsColorString(i8*) #1

declare dso_local i32 @Con_Linefeed(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
