; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8str.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@utf8_null = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @utf8str(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 0, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %3, align 8
  br label %79

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %76, %16
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 0, %20
  br i1 %21, label %22, label %77

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %8, align 8
  br label %25

25:                                               ; preds = %47, %22
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %25
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ false, %33 ], [ %42, %38 ]
  br label %45

45:                                               ; preds = %43, %25
  %46 = phi i1 [ false, %25 ], [ %44, %43 ]
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  br label %25

52:                                               ; preds = %45
  %53 = load i8*, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 0, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i8*, i8** %7, align 8
  store i8* %58, i8** %3, align 8
  br label %79

59:                                               ; preds = %52
  %60 = load i8*, i8** %6, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 0, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %68, %64
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %6, align 8
  br label %68

68:                                               ; preds = %65
  %69 = load i8*, i8** %6, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = and i32 192, %71
  %73 = icmp eq i32 128, %72
  br i1 %73, label %65, label %74

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %59
  br label %76

76:                                               ; preds = %75
  br label %17

77:                                               ; preds = %17
  %78 = load i8*, i8** @utf8_null, align 8
  store i8* %78, i8** %3, align 8
  br label %79

79:                                               ; preds = %77, %57, %14
  %80 = load i8*, i8** %3, align 8
  ret i8* %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
