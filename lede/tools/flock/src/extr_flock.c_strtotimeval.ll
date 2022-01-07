; ModuleID = '/home/carl/AnghaBench/lede/tools/flock/src/extr_flock.c_strtotimeval.c'
source_filename = "/home/carl/AnghaBench/lede/tools/flock/src/extr_flock.c_strtotimeval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.timeval*)* @strtotimeval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @strtotimeval(i8* %0, %struct.timeval* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strtol(i8* %8, i8** %5, i32 10)
  %10 = load %struct.timeval*, %struct.timeval** %4, align 8
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  store i64 0, i64* %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 46
  br i1 %15, label %16, label %62

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %5, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %39, %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @isdigit(i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %42

28:                                               ; preds = %22
  %29 = load i64, i64* %6, align 8
  %30 = mul nsw i64 %29, 10
  store i64 %30, i64* %6, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  %33 = load i8, i8* %31, align 1
  %34 = sext i8 %33 to i32
  %35 = sub nsw i32 %34, 48
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %19

42:                                               ; preds = %27, %19
  br label %43

43:                                               ; preds = %49, %42
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 6
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i64, i64* %6, align 8
  %48 = mul nsw i64 %47, 10
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %43

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %58, %52
  %54 = load i8*, i8** %5, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @isdigit(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %5, align 8
  br label %53

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %2
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.timeval*, %struct.timeval** %4, align 8
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i8*, i8** %5, align 8
  ret i8* %66
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
