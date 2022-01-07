; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_PC_Int_Parse.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_PC_Int_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i32 }

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@TT_NUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"expected integer but found %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PC_Int_Parse(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @qfalse, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @qfalse, align 4
  store i32 %12, i32* %3, align 4
  br label %58

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @trap_PC_ReadToken(i32 %14, %struct.TYPE_3__* %6)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @qfalse, align 4
  store i32 %18, i32* %3, align 4
  br label %58

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 45
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @trap_PC_ReadToken(i32 %27, %struct.TYPE_3__* %6)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @qfalse, align 4
  store i32 %31, i32* %3, align 4
  br label %58

32:                                               ; preds = %26
  %33 = load i32, i32* @qtrue, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %19
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TT_NUMBER, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @PC_SourceError(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* @qfalse, align 4
  store i32 %44, i32* %3, align 4
  br label %58

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 0, %53
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %45
  %57 = load i32, i32* @qtrue, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %39, %30, %17, %11
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @trap_PC_ReadToken(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @PC_SourceError(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
