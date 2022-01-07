; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_GetPing.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_GetPing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MAX_PINGREQUESTS = common dso_local global i32 0, align 4
@cl_pinglist = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"cl_maxPing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_GetPing(i32 %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cl_pinglist, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %18, %14, %4
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %29, align 1
  %30 = load i32*, i32** %8, align 8
  store i32 0, i32* %30, align 4
  br label %94

31:                                               ; preds = %18
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cl_pinglist, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @NET_AdrToStringwPort(i32 %38)
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @Q_strncpyz(i8* %40, i8* %41, i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cl_pinglist, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %31
  %53 = call i32 (...) @Sys_Milliseconds()
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cl_pinglist, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %53, %59
  store i32 %60, i32* %10, align 4
  %61 = call i32 @Cvar_VariableIntegerValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 100
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  store i32 100, i32* %11, align 4
  br label %65

65:                                               ; preds = %64, %52
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %69, %65
  br label %71

71:                                               ; preds = %70, %31
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cl_pinglist, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cl_pinglist, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cl_pinglist, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @CL_SetServerInfoByAddress(i32 %90, i32 %82, i32 %88)
  %92 = load i32, i32* %10, align 4
  %93 = load i32*, i32** %8, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %71, %27
  ret void
}

declare dso_local i8* @NET_AdrToStringwPort(i32) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i32 @Sys_Milliseconds(...) #1

declare dso_local i32 @Cvar_VariableIntegerValue(i8*) #1

declare dso_local i32 @CL_SetServerInfoByAddress(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
