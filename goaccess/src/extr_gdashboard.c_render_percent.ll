; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_render_percent.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_render_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%%\00", align 1
@color_selected = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%*.2f%%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*, float, i32, i32)* @render_percent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_percent(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0, %struct.TYPE_8__* %1, float %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store float %2, float* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 %4, i32* %9, align 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %12, align 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %5
  %26 = load float, float* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i8* @float2str(float %26, i32 %27)
  store i8* %28, i8** %11, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @color_selected, align 4
  %35 = call i32 @draw_header(i32* %29, i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @free(i8* %36)
  br label %69

38:                                               ; preds = %5
  %39 = load i32*, i32** %10, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @COLOR_PAIR(i32 %47)
  %49 = or i32 %42, %48
  %50 = call i32 @wattron(i32* %39, i32 %49)
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load float, float* %7, align 4
  %56 = call i32 @mvwprintw(i32* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %54, float %55)
  %57 = load i32*, i32** %10, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @COLOR_PAIR(i32 %65)
  %67 = or i32 %60, %66
  %68 = call i32 @wattroff(i32* %57, i32 %67)
  br label %69

69:                                               ; preds = %38, %25
  ret void
}

declare dso_local i8* @float2str(float, i32) #1

declare dso_local i32 @draw_header(i32*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @wattron(i32*, i32) #1

declare dso_local i32 @COLOR_PAIR(i32) #1

declare dso_local i32 @mvwprintw(i32*, i32, i32, i8*, i32, float) #1

declare dso_local i32 @wattroff(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
