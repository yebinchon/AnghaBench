; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_date.c_match_tz.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_date.c_match_tz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*)* @match_tz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @match_tz(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = call i32 @strtoul(i8* %11, i8** %5, i32 10)
  store i32 %12, i32* %6, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = ptrtoint i8* %13 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  store i64 %18, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 4
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = srem i32 %22, 100
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sdiv i32 %24, 100
  store i32 %25, i32* %6, align 4
  br label %50

26:                                               ; preds = %2
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 99, i32* %8, align 4
  br label %49

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 58
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = call i32 @strtoul(i8* %37, i8** %5, i32 10)
  store i32 %38, i32* %8, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = ptrtoint i8* %39 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = icmp ne i64 %44, 5
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 99, i32* %8, align 4
  br label %47

47:                                               ; preds = %46, %35
  br label %48

48:                                               ; preds = %47, %30
  br label %49

49:                                               ; preds = %48, %29
  br label %50

50:                                               ; preds = %49, %21
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 60
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 24
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 %57, 60
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %9, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 45
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %65, %56
  %69 = load i32, i32* %9, align 4
  %70 = load i32*, i32** %4, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %53, %50
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %3, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  ret i64 %76
}

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
