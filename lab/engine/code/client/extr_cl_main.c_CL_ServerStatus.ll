; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_ServerStatus.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_ServerStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i64, i32, i32 }

@MAX_SERVERSTATUSREQUESTS = common dso_local global i32 0, align 4
@cl_serverStatusList = common dso_local global %struct.TYPE_9__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@NA_UNSPEC = common dso_local global i32 0, align 4
@cl_serverStatusResendTime = common dso_local global %struct.TYPE_8__* null, align 8
@NS_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"getstatus\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CL_ServerStatus(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @MAX_SERVERSTATUSREQUESTS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cl_serverStatusList, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @qtrue, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cl_serverStatusList, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 8
  br label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %14

34:                                               ; preds = %14
  %35 = load i32, i32* @qfalse, align 4
  store i32 %35, i32* %4, align 4
  br label %139

36:                                               ; preds = %3
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @NA_UNSPEC, align 4
  %39 = call i32 @NET_StringToAdr(i8* %37, i32* %9, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @qfalse, align 4
  store i32 %42, i32* %4, align 4
  br label %139

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = call %struct.TYPE_7__* @CL_GetServerStatus(i32 %44)
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %10, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @qtrue, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @qfalse, align 4
  store i32 %52, i32* %4, align 4
  br label %139

53:                                               ; preds = %43
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @NET_CompareAdr(i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %109

60:                                               ; preds = %53
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @Q_strncpyz(i8* %66, i32 %69, i32 %70)
  %72 = load i32, i32* @qtrue, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* @qtrue, align 4
  store i32 %77, i32* %4, align 4
  br label %139

78:                                               ; preds = %60
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i64 (...) @Com_Milliseconds()
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cl_serverStatusResendTime, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %82, %85
  %87 = icmp slt i64 %81, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %78
  %89 = load i32, i32* @qfalse, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @qtrue, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @qfalse, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 4
  store i64 0, i64* %99, align 8
  %100 = call i64 (...) @Com_Milliseconds()
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* @NS_CLIENT, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @NET_OutOfBandPrint(i32 %103, i32 %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %106 = load i32, i32* @qfalse, align 4
  store i32 %106, i32* %4, align 4
  br label %139

107:                                              ; preds = %78
  br label %108

108:                                              ; preds = %107
  br label %137

109:                                              ; preds = %53
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %136

114:                                              ; preds = %109
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @qfalse, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @qtrue, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @qfalse, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = call i64 (...) @Com_Milliseconds()
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  store i64 %127, i64* %129, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 4
  store i64 0, i64* %131, align 8
  %132 = load i32, i32* @NS_CLIENT, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @NET_OutOfBandPrint(i32 %132, i32 %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %135 = load i32, i32* @qfalse, align 4
  store i32 %135, i32* %4, align 4
  br label %139

136:                                              ; preds = %109
  br label %137

137:                                              ; preds = %136, %108
  %138 = load i32, i32* @qfalse, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %137, %114, %88, %65, %48, %41, %34
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @NET_StringToAdr(i8*, i32*, i32) #1

declare dso_local %struct.TYPE_7__* @CL_GetServerStatus(i32) #1

declare dso_local i64 @NET_CompareAdr(i32, i32) #1

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #1

declare dso_local i64 @Com_Milliseconds(...) #1

declare dso_local i32 @NET_OutOfBandPrint(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
