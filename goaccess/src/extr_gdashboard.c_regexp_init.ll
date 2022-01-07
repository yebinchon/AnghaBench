; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_regexp_init.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_regexp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@REGEX_ERROR = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4
@REG_EXTENDED = common dso_local global i32 0, align 4
@find_t = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@REG_ICASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@color_error = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @regexp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regexp_init(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @REGEX_ERROR, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* @stdscr, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @getmaxyx(i32 %16, i32 %17, i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @REG_EXTENDED, align 4
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @find_t, i32 0, i32 0), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @REG_ICASE, align 4
  br label %28

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = or i32 %22, %29
  %31 = call i32 @regcomp(i32* %20, i8* %21, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = trunc i64 %13 to i32
  %38 = call i32 @regerror(i32 %35, i32* %36, i8* %15, i32 %37)
  %39 = load i32, i32* @stdscr, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @color_error, align 4
  %44 = call i32 @draw_header(i32 %39, i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %41, i32 0, i32 %42, i32 %43)
  %45 = call i32 (...) @refresh()
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %47

46:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getmaxyx(i32, i32, i32) #2

declare dso_local i32 @regcomp(i32*, i8*, i32) #2

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #2

declare dso_local i32 @draw_header(i32, i8*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @refresh(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
