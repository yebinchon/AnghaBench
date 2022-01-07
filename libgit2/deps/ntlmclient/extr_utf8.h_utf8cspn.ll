; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8cspn.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8cspn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8cspn(i8* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %72, %2
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 0, %14
  br i1 %15, label %16, label %75

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %8, align 8
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %61, %16
  %19 = load i8*, i8** %8, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 0, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %18
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = and i32 192, %26
  %28 = icmp ne i32 128, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i64, i64* %9, align 8
  %31 = icmp ult i64 0, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  store i64 %33, i64* %3, align 8
  br label %77

34:                                               ; preds = %29, %23
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %37, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %9, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %8, align 8
  br label %60

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %53, %49
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 8
  br label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %8, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = and i32 192, %56
  %58 = icmp eq i32 128, %57
  br i1 %58, label %50, label %59

59:                                               ; preds = %53
  store i64 0, i64* %9, align 8
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60
  br label %18

62:                                               ; preds = %18
  br label %63

63:                                               ; preds = %66, %62
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %6, align 8
  br label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** %6, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = and i32 192, %69
  %71 = icmp eq i32 128, %70
  br i1 %71, label %63, label %72

72:                                               ; preds = %66
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %7, align 8
  br label %11

75:                                               ; preds = %11
  %76 = load i64, i64* %7, align 8
  store i64 %76, i64* %3, align 8
  br label %77

77:                                               ; preds = %75, %32
  %78 = load i64, i64* %3, align 8
  ret i64 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
