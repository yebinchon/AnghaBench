; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_gamma.c_GLimp_SetGamma.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_gamma.c_GLimp_SetGamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 (i32, i8*, i32)* }

@glConfig = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@r_ignorehwgamma = common dso_local global %struct.TYPE_8__* null, align 8
@SDL_window = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@PRINT_DEVELOPER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"SDL_SetWindowGammaRamp() failed: %s\0A\00", align 1
@VER_PLATFORM_WIN32_NT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GLimp_SetGamma(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [3 x [256 x i32]], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glConfig, i32 0, i32 0), align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_ignorehwgamma, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %3
  br label %143

18:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %77, %18
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 256
  br i1 %21, label %22, label %80

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %29, %35
  %37 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* %7, i64 0, i64 0
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [256 x i32], [256 x i32]* %37, i64 0, i64 %39
  store i32 %36, i32* %40, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl i32 %46, 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %47, %53
  %55 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* %7, i64 0, i64 1
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [256 x i32], [256 x i32]* %55, i64 0, i64 %57
  store i32 %54, i32* %58, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl i32 %64, 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %65, %71
  %73 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* %7, i64 0, i64 2
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [256 x i32], [256 x i32]* %73, i64 0, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %22
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %19

80:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %125, %80
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 3
  br i1 %83, label %84, label %128

84:                                               ; preds = %81
  store i32 1, i32* %8, align 4
  br label %85

85:                                               ; preds = %121, %84
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 256
  br i1 %87, label %88, label %124

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* %7, i64 0, i64 %90
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [256 x i32], [256 x i32]* %91, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* %7, i64 0, i64 %97
  %99 = load i32, i32* %8, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [256 x i32], [256 x i32]* %98, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %95, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %88
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* %7, i64 0, i64 %107
  %109 = load i32, i32* %8, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [256 x i32], [256 x i32]* %108, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* %7, i64 0, i64 %115
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [256 x i32], [256 x i32]* %116, i64 0, i64 %118
  store i32 %113, i32* %119, align 4
  br label %120

120:                                              ; preds = %105, %88
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %85

124:                                              ; preds = %85
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %81

128:                                              ; preds = %81
  %129 = load i32, i32* @SDL_window, align 4
  %130 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* %7, i64 0, i64 0
  %131 = getelementptr inbounds [256 x i32], [256 x i32]* %130, i64 0, i64 0
  %132 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* %7, i64 0, i64 1
  %133 = getelementptr inbounds [256 x i32], [256 x i32]* %132, i64 0, i64 0
  %134 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* %7, i64 0, i64 2
  %135 = getelementptr inbounds [256 x i32], [256 x i32]* %134, i64 0, i64 0
  %136 = call i64 @SDL_SetWindowGammaRamp(i32 %129, i32* %131, i32* %133, i32* %135)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %128
  %139 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 0), align 8
  %140 = load i32, i32* @PRINT_DEVELOPER, align 4
  %141 = call i32 (...) @SDL_GetError()
  %142 = call i32 %139(i32 %140, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %17, %138, %128
  ret void
}

declare dso_local i64 @SDL_SetWindowGammaRamp(i32, i32*, i32*, i32*) #1

declare dso_local i32 @SDL_GetError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
