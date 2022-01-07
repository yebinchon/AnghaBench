; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_parse.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Expected ':' after device number\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Bad device number\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Device already configured\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8**, i8**)* @vector_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_parse(i8* %0, i32* %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %13, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %11, align 4
  br label %17

17:                                               ; preds = %28, %4
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 58
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = icmp sgt i32 %24, 1
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i1 [ false, %17 ], [ %25, %22 ]
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  br label %17

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 58
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** %37, align 8
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %64

40:                                               ; preds = %31
  %41 = load i8*, i8** %6, align 8
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @kstrtouint(i8* %42, i32 0, i32* %10)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %47, align 8
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %64

49:                                               ; preds = %40
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i64 @find_device(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %56, align 8
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %64

59:                                               ; preds = %49
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = load i8**, i8*** %8, align 8
  store i8* %62, i8** %63, align 8
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %55, %46, %36
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i64 @find_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
