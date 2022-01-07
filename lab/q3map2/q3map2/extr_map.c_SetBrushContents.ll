; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_map.c_SetBrushContents.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_map.c_SetBrushContents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i8*, i8*, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32, i32, i32* }

@qfalse = common dso_local global i8* null, align 8
@qtrue = common dso_local global i8* null, align 8
@C_DETAIL = common dso_local global i32 0, align 4
@C_STRUCTURAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Mixed detail and structural (defaulting to structural)\00", align 1
@mapEnt = common dso_local global %struct.TYPE_7__* null, align 8
@entitySourceBrushes = common dso_local global i32 0, align 4
@fulldetail = common dso_local global i64 0, align 8
@C_TRANSLUCENT = common dso_local global i32 0, align 4
@c_detail = common dso_local global i32 0, align 4
@c_structural = common dso_local global i32 0, align 4
@C_AREAPORTAL = common dso_local global i32 0, align 4
@c_areaportals = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetBrushContents(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 5
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 0
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %3, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 6
  store i32* %20, i32** %22, align 8
  %23 = load i8*, i8** @qfalse, align 8
  store i8* %23, i8** %7, align 8
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %57, %1
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %24
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %5, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %57

42:                                               ; preds = %30
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48, %42
  %55 = load i8*, i8** @qtrue, align 8
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %54, %48
  br label %57

57:                                               ; preds = %56, %41
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 1
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %5, align 8
  br label %24

62:                                               ; preds = %24
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @C_DETAIL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @C_STRUCTURAL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mapEnt, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @entitySourceBrushes, align 4
  %77 = load i8*, i8** @qfalse, align 8
  %78 = call i32 @xml_Select(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76, i8* %77)
  %79 = load i32, i32* @C_DETAIL, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %4, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %72, %67, %62
  %84 = load i64, i64* @fulldetail, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* @C_DETAIL, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %4, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %86, %83
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @C_TRANSLUCENT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @C_STRUCTURAL, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* @C_DETAIL, align 4
  %103 = load i32, i32* %4, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %101, %96, %91
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @C_DETAIL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i32, i32* @c_detail, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* @c_detail, align 4
  %113 = load i8*, i8** @qtrue, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 4
  store i8* %113, i8** %115, align 8
  br label %122

116:                                              ; preds = %105
  %117 = load i32, i32* @c_structural, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* @c_structural, align 4
  %119 = load i8*, i8** @qfalse, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 4
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %116, %110
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @C_TRANSLUCENT, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i8*, i8** @qfalse, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  store i8* %128, i8** %130, align 8
  br label %135

131:                                              ; preds = %122
  %132 = load i8*, i8** @qtrue, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %131, %127
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @C_AREAPORTAL, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* @c_areaportals, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* @c_areaportals, align 4
  br label %143

143:                                              ; preds = %140, %135
  %144 = load i32, i32* %3, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %4, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  ret void
}

declare dso_local i32 @xml_Select(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
