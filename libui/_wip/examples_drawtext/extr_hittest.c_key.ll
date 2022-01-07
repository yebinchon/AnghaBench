; ModuleID = '/home/carl/AnghaBench/libui/_wip/examples_drawtext/extr_hittest.c_key.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/examples_drawtext/extr_hittest.c_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@attrstr = common dso_local global i32 0, align 4
@caretPos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %53

16:                                               ; preds = %10
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %52 [
    i32 128, label %20
    i32 131, label %21
    i32 130, label %22
    i32 129, label %36
  ]

20:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %53

21:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %53

22:                                               ; preds = %16
  %23 = load i32, i32* @attrstr, align 4
  %24 = load i32, i32* @caretPos, align 4
  %25 = call i64 @uiAttributedStringByteIndexToGrapheme(i32 %23, i32 %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %53

29:                                               ; preds = %22
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %4, align 8
  %32 = load i32, i32* @attrstr, align 4
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @uiAttributedStringGraphemeToByteIndex(i32 %32, i64 %33)
  store i32 %34, i32* @caretPos, align 4
  %35 = call i32 (...) @redraw()
  store i32 1, i32* %2, align 4
  br label %53

36:                                               ; preds = %16
  %37 = load i32, i32* @attrstr, align 4
  %38 = load i32, i32* @caretPos, align 4
  %39 = call i64 @uiAttributedStringByteIndexToGrapheme(i32 %37, i32 %38)
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* @attrstr, align 4
  %42 = call i64 @uiAttributedStringNumGraphemes(i32 %41)
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %53

45:                                               ; preds = %36
  %46 = load i64, i64* %4, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %4, align 8
  %48 = load i32, i32* @attrstr, align 4
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @uiAttributedStringGraphemeToByteIndex(i32 %48, i64 %49)
  store i32 %50, i32* @caretPos, align 4
  %51 = call i32 (...) @redraw()
  store i32 1, i32* %2, align 4
  br label %53

52:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %45, %44, %29, %28, %21, %20, %15, %9
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @uiAttributedStringByteIndexToGrapheme(i32, i32) #1

declare dso_local i32 @uiAttributedStringGraphemeToByteIndex(i32, i64) #1

declare dso_local i32 @redraw(...) #1

declare dso_local i64 @uiAttributedStringNumGraphemes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
