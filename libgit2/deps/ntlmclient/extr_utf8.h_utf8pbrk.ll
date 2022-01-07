; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8pbrk.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8pbrk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@utf8_null = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @utf8pbrk(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %76, %2
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 0, %13
  br i1 %14, label %15, label %77

15:                                               ; preds = %10
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %60, %15
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 0, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = and i32 192, %25
  %27 = icmp ne i32 128, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 0, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %3, align 8
  br label %79

33:                                               ; preds = %28, %22
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %36, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %8, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %7, align 8
  br label %59

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %52, %48
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  br label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = and i32 192, %55
  %57 = icmp eq i32 128, %56
  br i1 %57, label %49, label %58

58:                                               ; preds = %52
  store i64 0, i64* %8, align 8
  br label %59

59:                                               ; preds = %58, %43
  br label %60

60:                                               ; preds = %59
  br label %17

61:                                               ; preds = %17
  %62 = load i64, i64* %8, align 8
  %63 = icmp ult i64 0, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i8*, i8** %6, align 8
  store i8* %65, i8** %3, align 8
  br label %79

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %70, %66
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  br label %70

70:                                               ; preds = %67
  %71 = load i8*, i8** %6, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = and i32 192, %73
  %75 = icmp eq i32 128, %74
  br i1 %75, label %67, label %76

76:                                               ; preds = %70
  br label %10

77:                                               ; preds = %10
  %78 = load i8*, i8** @utf8_null, align 8
  store i8* %78, i8** %3, align 8
  br label %79

79:                                               ; preds = %77, %64, %31
  %80 = load i8*, i8** %3, align 8
  ret i8* %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
