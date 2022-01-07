; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picointernal.c__pico_setfext.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picointernal.c__pico_setfext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_pico_setfext(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %8, i64 %12
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %3, align 8
  br label %66

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %60, %28
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = icmp ne i8* %30, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 47
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 92
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %34
  %45 = load i8*, i8** %4, align 8
  store i8* %45, i8** %3, align 8
  br label %66

46:                                               ; preds = %39
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 46
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %4, align 8
  store i8* %56, i8** %3, align 8
  br label %66

57:                                               ; preds = %51
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  store i8 0, i8* %59, align 1
  br label %61

60:                                               ; preds = %46
  br label %29

61:                                               ; preds = %57, %29
  %62 = load i8*, i8** %4, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @strcat(i8* %62, i8* %63)
  %65 = load i8*, i8** %4, align 8
  store i8* %65, i8** %3, align 8
  br label %66

66:                                               ; preds = %61, %54, %44, %26
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
