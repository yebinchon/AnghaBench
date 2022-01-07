; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_color.c_get_color.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_color.c_get_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@COLOR_NORMAL = common dso_local global i32 0, align 4
@color_list = common dso_local global i32 0, align 4
@find_color_item_in_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to find color item %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_color(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @COLOR_NORMAL, align 4
  store i32 %6, i32* %4, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %5, align 8
  %7 = load i32, i32* @color_list, align 4
  %8 = load i32, i32* @find_color_item_in_list, align 4
  %9 = call %struct.TYPE_3__* @list_find(i32 %7, i32 %8, i32* %3)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %5, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %2, align 8
  br label %29

16:                                               ; preds = %1
  %17 = load i32, i32* @color_list, align 4
  %18 = load i32, i32* @find_color_item_in_list, align 4
  %19 = call %struct.TYPE_3__* @list_find(i32 %17, i32 %18, i32* %4)
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %5, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %2, align 8
  br label %29

26:                                               ; preds = %16
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @FATAL(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %21, %11
  %30 = load i32*, i32** %2, align 8
  ret i32* %30
}

declare dso_local %struct.TYPE_3__* @list_find(i32, i32, i32*) #1

declare dso_local i32 @FATAL(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
