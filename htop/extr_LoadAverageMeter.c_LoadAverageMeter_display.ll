; ModuleID = '/home/carl/AnghaBench/htop/extr_LoadAverageMeter.c_LoadAverageMeter_display.c'
source_filename = "/home/carl/AnghaBench/htop/extr_LoadAverageMeter.c_LoadAverageMeter_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1
@CRT_colors = common dso_local global i32* null, align 8
@LOAD_AVERAGE_ONE = common dso_local global i64 0, align 8
@LOAD_AVERAGE_FIVE = common dso_local global i64 0, align 8
@LOAD_AVERAGE_FIFTEEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @LoadAverageMeter_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadAverageMeter_display(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca [20 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %5, align 8
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @xSnprintf(i8* %9, i32 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** @CRT_colors, align 8
  %18 = load i64, i64* @LOAD_AVERAGE_ONE, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %22 = call i32 @RichString_write(i32* %16, i32 %20, i8* %21)
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @xSnprintf(i8* %23, i32 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** @CRT_colors, align 8
  %32 = load i64, i64* @LOAD_AVERAGE_FIVE, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %36 = call i32 @RichString_append(i32* %30, i32 %34, i8* %35)
  %37 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @xSnprintf(i8* %37, i32 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** @CRT_colors, align 8
  %46 = load i64, i64* @LOAD_AVERAGE_FIFTEEN, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %50 = call i32 @RichString_append(i32* %44, i32 %48, i8* %49)
  ret void
}

declare dso_local i32 @xSnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @RichString_write(i32*, i32, i8*) #1

declare dso_local i32 @RichString_append(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
