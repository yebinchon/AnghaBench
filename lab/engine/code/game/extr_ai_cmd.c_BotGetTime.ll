; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_cmd.c_BotGetTime.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_cmd.c_BotGetTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@ST_TIME = common dso_local global i32 0, align 4
@TIME = common dso_local global i32 0, align 4
@MTCONTEXT_TIME = common dso_local global i32 0, align 4
@MSG_FOREVER = common dso_local global i64 0, align 8
@MSG_FORAWHILE = common dso_local global i64 0, align 8
@MSG_FORALONGTIME = common dso_local global i64 0, align 8
@MSG_MINUTES = common dso_local global i64 0, align 8
@MSG_SECONDS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @BotGetTime(%struct.TYPE_5__* %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %9 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ST_TIME, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %79

19:                                               ; preds = %1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = load i32, i32* @TIME, align 4
  %22 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %23 = call i32 @trap_BotMatchVariable(%struct.TYPE_5__* %20, i32 %21, i8* %12, i32 %22)
  %24 = load i32, i32* @MTCONTEXT_TIME, align 4
  %25 = call i64 @trap_BotFindMatch(i8* %12, %struct.TYPE_5__* %4, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %78

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MSG_FOREVER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store float 1.000000e+08, float* %7, align 4
  br label %70

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MSG_FORAWHILE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store float 6.000000e+02, float* %7, align 4
  br label %69

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MSG_FORALONGTIME, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store float 1.800000e+03, float* %7, align 4
  br label %68

45:                                               ; preds = %39
  %46 = load i32, i32* @TIME, align 4
  %47 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %48 = call i32 @trap_BotMatchVariable(%struct.TYPE_5__* %4, i32 %46, i8* %12, i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MSG_MINUTES, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = call i32 @atof(i8* %12)
  %55 = mul nsw i32 %54, 60
  %56 = sitofp i32 %55 to float
  store float %56, float* %7, align 4
  br label %67

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MSG_SECONDS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = call i32 @atof(i8* %12)
  %64 = sitofp i32 %63 to float
  store float %64, float* %7, align 4
  br label %66

65:                                               ; preds = %57
  store float 0.000000e+00, float* %7, align 4
  br label %66

66:                                               ; preds = %65, %62
  br label %67

67:                                               ; preds = %66, %53
  br label %68

68:                                               ; preds = %67, %44
  br label %69

69:                                               ; preds = %68, %38
  br label %70

70:                                               ; preds = %69, %32
  %71 = load float, float* %7, align 4
  %72 = fcmp ogt float %71, 0.000000e+00
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = call float (...) @FloatTime()
  %75 = load float, float* %7, align 4
  %76 = fadd float %74, %75
  store float %76, float* %2, align 4
  store i32 1, i32* %8, align 4
  br label %80

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %19
  br label %79

79:                                               ; preds = %78, %1
  store float 0.000000e+00, float* %2, align 4
  store i32 1, i32* %8, align 4
  br label %80

80:                                               ; preds = %79, %73
  %81 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load float, float* %2, align 4
  ret float %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_BotMatchVariable(%struct.TYPE_5__*, i32, i8*, i32) #2

declare dso_local i64 @trap_BotFindMatch(i8*, %struct.TYPE_5__*, i32) #2

declare dso_local i32 @atof(i8*) #2

declare dso_local float @FloatTime(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
