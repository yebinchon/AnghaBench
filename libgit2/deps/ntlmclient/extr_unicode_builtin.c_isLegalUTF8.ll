; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_unicode_builtin.c_isLegalUTF8.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_unicode_builtin.c_isLegalUTF8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @isLegalUTF8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isLegalUTF8(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32* %11, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %13 [
    i32 4, label %14
    i32 3, label %24
    i32 2, label %34
    i32 1, label %72
  ]

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %88

14:                                               ; preds = %2
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 -1
  store i32* %16, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = icmp slt i32 %17, 128
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 191
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %14
  store i32 0, i32* %3, align 4
  br label %88

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %2, %23
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 -1
  store i32* %26, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = icmp slt i32 %27, 128
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 191
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %24
  store i32 0, i32* %3, align 4
  br label %88

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %2, %33
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 -1
  store i32* %36, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = icmp slt i32 %37, 128
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 191
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %34
  store i32 0, i32* %3, align 4
  br label %88

43:                                               ; preds = %39
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %66 [
    i32 224, label %46
    i32 237, label %51
    i32 240, label %56
    i32 244, label %61
  ]

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 160
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %88

50:                                               ; preds = %46
  br label %71

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %52, 159
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %88

55:                                               ; preds = %51
  br label %71

56:                                               ; preds = %43
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 144
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %88

60:                                               ; preds = %56
  br label %71

61:                                               ; preds = %43
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %62, 143
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %88

65:                                               ; preds = %61
  br label %71

66:                                               ; preds = %43
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 128
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %88

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %65, %60, %55, %50
  br label %72

72:                                               ; preds = %2, %71
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp sge i32 %74, 128
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 194
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %88

81:                                               ; preds = %76, %72
  br label %82

82:                                               ; preds = %81
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 244
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %88

87:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %86, %80, %69, %64, %59, %54, %49, %42, %32, %22, %13
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
