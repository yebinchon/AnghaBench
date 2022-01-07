; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_snapshot.c_SV_SendClientMessages.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_snapshot.c_SV_SendClientMessages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i8*, %struct.TYPE_10__, i64, i64*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@sv_maxclients = common dso_local global %struct.TYPE_13__* null, align 8
@svs = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@qtrue = common dso_local global i8* null, align 8
@NA_LOOPBACK = common dso_local global i64 0, align 8
@sv_lanForceRate = common dso_local global %struct.TYPE_14__* null, align 8
@com_timescale = common dso_local global %struct.TYPE_15__* null, align 8
@qfalse = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_SendClientMessages() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_11__*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %95, %0
  %4 = load i32, i32* %1, align 4
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sv_maxclients, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %4, %7
  br i1 %8, label %9, label %98

9:                                                ; preds = %3
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @svs, i32 0, i32 1), align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i64 %12
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %2, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  br label %95

19:                                               ; preds = %9
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 5
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %95

26:                                               ; preds = %19
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32, %26
  %38 = load i8*, i8** @qtrue, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  br label %95

41:                                               ; preds = %32
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NA_LOOPBACK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %86, label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** @sv_lanForceRate, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @Sys_IsLANAddress(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %86, label %62

62:                                               ; preds = %54, %49
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @svs, i32 0, i32 0), align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %63, %66
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** @com_timescale, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %70, %73
  %75 = icmp slt i32 %67, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %95

77:                                               ; preds = %62
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %79 = call i64 @SV_RateMsec(%struct.TYPE_11__* %78)
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i8*, i8** @qtrue, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  br label %95

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %54, %41
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %88 = call i32 @SV_SendClientSnapshot(%struct.TYPE_11__* %87)
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @svs, i32 0, i32 0), align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i8*, i8** @qfalse, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %86, %81, %76, %37, %25, %18
  %96 = load i32, i32* %1, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %1, align 4
  br label %3

98:                                               ; preds = %3
  ret void
}

declare dso_local i64 @Sys_IsLANAddress(i64) #1

declare dso_local i64 @SV_RateMsec(%struct.TYPE_11__*) #1

declare dso_local i32 @SV_SendClientSnapshot(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
