; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_glimp.c_GLimp_EndFrame.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_glimp.c_GLimp_EndFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i64 }
%struct.TYPE_4__ = type { i32 (...)*, i32 (i32, i8*)*, i32 (i8*, i8*)*, i32 (i32, i8*)*, i64 (i8*)* }

@r_drawBuffer = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"GL_FRONT\00", align 1
@SDL_window = common dso_local global i32 0, align 4
@r_fullscreen = common dso_local global %struct.TYPE_5__* null, align 8
@qfalse = common dso_local global i8* null, align 8
@SDL_WINDOW_FULLSCREEN = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"in_nograb\00", align 1
@PRINT_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Fullscreen not allowed with in_nograb 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"r_fullscreen\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"vid_restart\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GLimp_EndFrame() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @r_drawBuffer, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @Q_stricmp(i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @SDL_window, align 4
  %11 = call i32 @SDL_GL_SwapWindow(i32 %10)
  br label %12

12:                                               ; preds = %9, %0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @r_fullscreen, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %79

17:                                               ; preds = %12
  %18 = load i8*, i8** @qfalse, align 8
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @SDL_window, align 4
  %21 = call i32 @SDL_GetWindowFlags(i32 %20)
  %22 = load i32, i32* @SDL_WINDOW_FULLSCREEN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %1, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @r_fullscreen, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %17
  %33 = load i64 (i8*)*, i64 (i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 4), align 8
  %34 = call i64 %33(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 3), align 8
  %38 = load i32, i32* @PRINT_ALL, align 4
  %39 = call i32 %37(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 2), align 8
  %41 = call i32 %40(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i8*, i8** @qfalse, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @r_fullscreen, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %36, %32, %17
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @r_fullscreen, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %1, align 4
  %54 = icmp ne i32 %52, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %2, align 4
  %56 = load i32, i32* %2, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %45
  %59 = load i32, i32* @SDL_window, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @r_fullscreen, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @SDL_SetWindowFullscreen(i32 %59, i64 %62)
  %64 = icmp sge i64 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %58
  %69 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 1), align 8
  %70 = load i32, i32* @EXEC_APPEND, align 4
  %71 = call i32 %69(i32 %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %58
  %73 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %74 = call i32 (...) %73()
  br label %75

75:                                               ; preds = %72, %45
  %76 = load i8*, i8** @qfalse, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** @r_fullscreen, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %75, %12
  ret void
}

declare dso_local i64 @Q_stricmp(i32, i8*) #1

declare dso_local i32 @SDL_GL_SwapWindow(i32) #1

declare dso_local i32 @SDL_GetWindowFlags(i32) #1

declare dso_local i64 @SDL_SetWindowFullscreen(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
