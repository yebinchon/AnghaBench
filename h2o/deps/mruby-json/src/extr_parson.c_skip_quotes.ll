; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_skip_quotes.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_skip_quotes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSONFailure = common dso_local global i32 0, align 4
@JSONSuccess = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @skip_quotes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_quotes(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  %4 = load i8**, i8*** %3, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 34
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @JSONFailure, align 4
  store i32 %10, i32* %2, align 4
  br label %53

11:                                               ; preds = %1
  %12 = load i8**, i8*** %3, align 8
  %13 = call i32 @SKIP_CHAR(i8** %12)
  br label %14

14:                                               ; preds = %46, %11
  %15 = load i8**, i8*** %3, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 34
  br i1 %19, label %20, label %49

20:                                               ; preds = %14
  %21 = load i8**, i8*** %3, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @JSONFailure, align 4
  store i32 %27, i32* %2, align 4
  br label %53

28:                                               ; preds = %20
  %29 = load i8**, i8*** %3, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 92
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load i8**, i8*** %3, align 8
  %36 = call i32 @SKIP_CHAR(i8** %35)
  %37 = load i8**, i8*** %3, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @JSONFailure, align 4
  store i32 %43, i32* %2, align 4
  br label %53

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %28
  br label %46

46:                                               ; preds = %45
  %47 = load i8**, i8*** %3, align 8
  %48 = call i32 @SKIP_CHAR(i8** %47)
  br label %14

49:                                               ; preds = %14
  %50 = load i8**, i8*** %3, align 8
  %51 = call i32 @SKIP_CHAR(i8** %50)
  %52 = load i32, i32* @JSONSuccess, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %42, %26, %9
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @SKIP_CHAR(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
