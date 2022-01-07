; ModuleID = '/home/carl/AnghaBench/htop/dragonflybsd/extr_DragonFlyBSDProcess.c_DragonFlyBSDProcess_writeField.c'
source_filename = "/home/carl/AnghaBench/htop/dragonflybsd/extr_DragonFlyBSDProcess.c_DragonFlyBSDProcess_writeField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@CRT_colors = common dso_local global i32* null, align 8
@DEFAULT_COLOR = common dso_local global i64 0, align 8
@Process_pidFormat = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%-11s \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DragonFlyBSDProcess_writeField(%struct.TYPE_5__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = bitcast %struct.TYPE_5__* %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %7, align 8
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 255
  store i8 0, i8* %13, align 1
  %14 = load i32*, i32** @CRT_colors, align 8
  %15 = load i64, i64* @DEFAULT_COLOR, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  store i32 255, i32* %10, align 4
  %18 = load i64, i64* %6, align 8
  %19 = trunc i64 %18 to i32
  switch i32 %19, label %51 [
    i32 128, label %20
    i32 129, label %36
    i32 130, label %44
  ]

20:                                               ; preds = %3
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %22 = load i32, i32* %10, align 4
  %23 = load i8*, i8** @Process_pidFormat, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %33

29:                                               ; preds = %20
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  br label %33

33:                                               ; preds = %29, %28
  %34 = phi i32 [ -1, %28 ], [ %32, %29 ]
  %35 = call i32 @xSnprintf(i8* %21, i32 %22, i8* %23, i32 %34)
  br label %56

36:                                               ; preds = %3
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %38 = load i32, i32* %10, align 4
  %39 = load i8*, i8** @Process_pidFormat, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @xSnprintf(i8* %37, i32 %38, i8* %39, i32 %42)
  br label %56

44:                                               ; preds = %3
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @xSnprintf(i8* %45, i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %56

51:                                               ; preds = %3
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @Process_writeField(%struct.TYPE_5__* %52, i32* %53, i64 %54)
  br label %61

56:                                               ; preds = %44, %36, %33
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %60 = call i32 @RichString_append(i32* %57, i32 %58, i8* %59)
  br label %61

61:                                               ; preds = %56, %51
  ret void
}

declare dso_local i32 @xSnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @Process_writeField(%struct.TYPE_5__*, i32*, i64) #1

declare dso_local i32 @RichString_append(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
