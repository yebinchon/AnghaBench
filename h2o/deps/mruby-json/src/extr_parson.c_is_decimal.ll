; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_is_decimal.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_is_decimal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"xX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @is_decimal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_decimal(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ugt i64 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 48
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 46
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %50

21:                                               ; preds = %14, %8, %2
  %22 = load i64, i64* %5, align 8
  %23 = icmp ugt i64 %22, 2
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 46
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %50

35:                                               ; preds = %28, %24, %21
  br label %36

36:                                               ; preds = %48, %35
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %5, align 8
  %39 = icmp ne i64 %37, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %50

48:                                               ; preds = %40
  br label %36

49:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %47, %34, %20
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
