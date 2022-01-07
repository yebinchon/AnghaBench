; ModuleID = '/home/carl/AnghaBench/i3/src/extr_click.c_tiling_resize_for_border.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_click.c_tiling_resize_for_border.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"border = %d, con = %p\0A\00", align 1
@D_LEFT = common dso_local global i64 0, align 8
@D_RIGHT = common dso_local global i64 0, align 8
@D_UP = common dso_local global i64 0, align 8
@D_DOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"No second container in this direction found.\0A\00", align 1
@HORIZ = common dso_local global i32 0, align 4
@VERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"After resize handler, rendering\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32*, i32)* @tiling_resize_for_border to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiling_resize_for_border(%struct.TYPE_7__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16, %struct.TYPE_7__* %17)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %11, align 8
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %29 [
    i32 130, label %21
    i32 129, label %23
    i32 128, label %25
    i32 131, label %27
  ]

21:                                               ; preds = %4
  %22 = load i64, i64* @D_LEFT, align 8
  store i64 %22, i64* %12, align 8
  br label %29

23:                                               ; preds = %4
  %24 = load i64, i64* @D_RIGHT, align 8
  store i64 %24, i64* %12, align 8
  br label %29

25:                                               ; preds = %4
  %26 = load i64, i64* @D_UP, align 8
  store i64 %26, i64* %12, align 8
  br label %29

27:                                               ; preds = %4
  %28 = load i64, i64* @D_DOWN, align 8
  store i64 %28, i64* %12, align 8
  br label %29

29:                                               ; preds = %4, %27, %25, %23, %21
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @resize_find_tiling_participants(%struct.TYPE_7__** %11, %struct.TYPE_7__** %10, i64 %30, i32 0)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = call i32 @LOG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %82

36:                                               ; preds = %29
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %39 = icmp ne %struct.TYPE_7__* %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @D_UP, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %36
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* @D_LEFT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54, %36
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %14, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %11, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %10, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 130
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 129
  br i1 %67, label %68, label %70

68:                                               ; preds = %65, %62
  %69 = load i32, i32* @HORIZ, align 4
  br label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @VERT, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %15, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %76 = load i32, i32* %15, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @resize_graphical_handler(%struct.TYPE_7__* %74, %struct.TYPE_7__* %75, i32 %76, i32* %77, i32 %78)
  %80 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %81 = call i32 (...) @tree_render()
  store i32 1, i32* %5, align 4
  br label %82

82:                                               ; preds = %72, %34
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local i32 @resize_find_tiling_participants(%struct.TYPE_7__**, %struct.TYPE_7__**, i64, i32) #1

declare dso_local i32 @LOG(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @resize_graphical_handler(%struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32*, i32) #1

declare dso_local i32 @tree_render(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
