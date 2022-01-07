; ModuleID = '/home/carl/AnghaBench/git/extr_date.c_match_tz.c'
source_filename = "/home/carl/AnghaBench/git/extr_date.c_match_tz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @match_tz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_tz(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = srem i32 %23, 100
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sdiv i32 %25, 100
  store i32 %26, i32* %6, align 4
  br label %51

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 2
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 99, i32* %8, align 4
  br label %50

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 58
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = call i32 @strtoul(i8* %38, i8** %5, i32 10)
  store i32 %39, i32* %8, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = ptrtoint i8* %40 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = icmp ne i64 %45, 5
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 99, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %36
  br label %49

49:                                               ; preds = %48, %31
  br label %50

50:                                               ; preds = %49, %30
  br label %51

51:                                               ; preds = %50, %22
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 60
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 24
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = mul nsw i32 %58, 60
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %9, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 45
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %66, %57
  %70 = load i32, i32* %9, align 4
  %71 = load i32*, i32** %4, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %54, %51
  %73 = load i8*, i8** %5, align 8
  %74 = load i8*, i8** %3, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  ret i32 %78
}

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
