; ModuleID = '/home/carl/AnghaBench/libui/_doc/misctests/extr_gtkprogresstable.c_pbarDataFunc.c'
source_filename = "/home/carl/AnghaBench/libui/_doc/misctests/extr_gtkprogresstable.c_pbarDataFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pbarStarted = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pulse\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@pbarValue = common dso_local global i32 0, align 4
@G_MAXINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32)* @pbarDataFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pbarDataFunc(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @pbarStarted, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 (i32*, i8*, i32, i8*, ...) @g_object_set(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* null)
  br label %27

16:                                               ; preds = %5
  %17 = load i32, i32* @pbarValue, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @pbarValue, align 4
  %19 = load i32, i32* @pbarValue, align 4
  %20 = load i32, i32* @G_MAXINT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* @pbarValue, align 4
  br label %23

23:                                               ; preds = %22, %16
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @pbarValue, align 4
  %26 = call i32 (i32*, i8*, i32, i8*, ...) @g_object_set(i32* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %25, i8* null)
  br label %27

27:                                               ; preds = %23, %13
  ret void
}

declare dso_local i32 @g_object_set(i32*, i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
