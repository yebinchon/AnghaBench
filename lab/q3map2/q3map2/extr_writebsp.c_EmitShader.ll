; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_writebsp.c_EmitShader.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_writebsp.c_EmitShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"noshader\00", align 1
@numBSPShaders = common dso_local global i32 0, align 4
@bspShaders = common dso_local global %struct.TYPE_5__* null, align 8
@MAX_MAP_SHADERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"MAX_MAP_SHADERS\00", align 1
@SYS_VRB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Shader %s has damage shader %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EmitShader(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %13

13:                                               ; preds = %12, %3
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %59, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @numBSPShaders, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %14
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bspShaders, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %59

32:                                               ; preds = %21, %18
  %33 = load i32*, i32** %6, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bspShaders, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %59

46:                                               ; preds = %35, %32
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bspShaders, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @Q_stricmp(i8* %47, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %146

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %45, %31
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %14

62:                                               ; preds = %14
  %63 = load i8*, i8** %5, align 8
  %64 = call %struct.TYPE_4__* @ShaderInfoForShader(i8* %63)
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %9, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @MAX_MAP_SHADERS, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 @Error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %62
  %71 = load i32, i32* @numBSPShaders, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @numBSPShaders, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bspShaders, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @strcpy(i32 %78, i8* %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bspShaders, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 %83, i32* %88, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bspShaders, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i32 %91, i32* %96, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %70
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bspShaders, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32 %101, i32* %106, align 4
  br label %107

107:                                              ; preds = %99, %70
  %108 = load i32*, i32** %6, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bspShaders, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  store i32 %112, i32* %117, align 4
  br label %118

118:                                              ; preds = %110, %107
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %144

123:                                              ; preds = %118
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %123
  %132 = load i32, i32* @SYS_VRB, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @Sys_FPrintf(i32 %132, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %135, i8* %138)
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @EmitShader(i8* %142, i32* null, i32* null)
  br label %144

144:                                              ; preds = %131, %123, %118
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %144, %56
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @Q_stricmp(i8*, i32) #1

declare dso_local %struct.TYPE_4__* @ShaderInfoForShader(i8*) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
