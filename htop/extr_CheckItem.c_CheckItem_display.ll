; ModuleID = '/home/carl/AnghaBench/htop/extr_CheckItem.c_CheckItem_display.c'
source_filename = "/home/carl/AnghaBench/htop/extr_CheckItem.c_CheckItem_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@CRT_colors = common dso_local global i32* null, align 8
@CHECK_BOX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@CHECK_MARK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@CHECK_TEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @CheckItem_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CheckItem_display(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** @CRT_colors, align 8
  %14 = load i64, i64* @CHECK_BOX, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @RichString_write(i32* %12, i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = call i64 @CheckItem_get(%struct.TYPE_3__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** @CRT_colors, align 8
  %24 = load i64, i64* @CHECK_MARK, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @RichString_append(i32* %22, i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %35

28:                                               ; preds = %2
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** @CRT_colors, align 8
  %31 = load i64, i64* @CHECK_MARK, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @RichString_append(i32* %29, i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %28, %21
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** @CRT_colors, align 8
  %38 = load i64, i64* @CHECK_BOX, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @RichString_append(i32* %36, i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** @CRT_colors, align 8
  %44 = load i64, i64* @CHECK_TEXT, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @RichString_append(i32* %42, i32 %46, i8* %49)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @RichString_write(i32*, i32, i8*) #1

declare dso_local i64 @CheckItem_get(%struct.TYPE_3__*) #1

declare dso_local i32 @RichString_append(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
