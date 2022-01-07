; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_util.c_git__utf8_iterate.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_util.c_git__utf8_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git__utf8_iterate(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %9, align 4
  %10 = load i32*, i32** %7, align 8
  store i32 -1, i32* %10, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @git__utf8_charlen(i32* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %113

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %101 [
    i32 1, label %19
    i32 2, label %23
    i32 3, label %38
    i32 4, label %71
  ]

19:                                               ; preds = %17
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  br label %101

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 31
  %28 = shl i32 %27, 6
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 63
  %33 = add nsw i32 %28, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 128
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  store i32 -1, i32* %9, align 4
  br label %37

37:                                               ; preds = %36, %23
  br label %101

38:                                               ; preds = %17
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 15
  %43 = shl i32 %42, 12
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 63
  %48 = shl i32 %47, 6
  %49 = add nsw i32 %43, %48
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 63
  %54 = add nsw i32 %49, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 2048
  br i1 %56, label %69, label %57

57:                                               ; preds = %38
  %58 = load i32, i32* %9, align 4
  %59 = icmp sge i32 %58, 55296
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 57344
  br i1 %62, label %69, label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %9, align 4
  %65 = icmp sge i32 %64, 64976
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 65008
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %60, %38
  store i32 -1, i32* %9, align 4
  br label %70

70:                                               ; preds = %69, %66, %63
  br label %101

71:                                               ; preds = %17
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 7
  %76 = shl i32 %75, 18
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 63
  %81 = shl i32 %80, 12
  %82 = add nsw i32 %76, %81
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 63
  %87 = shl i32 %86, 6
  %88 = add nsw i32 %82, %87
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 63
  %93 = add nsw i32 %88, %92
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 65536
  br i1 %95, label %99, label %96

96:                                               ; preds = %71
  %97 = load i32, i32* %9, align 4
  %98 = icmp sge i32 %97, 1114112
  br i1 %98, label %99, label %100

99:                                               ; preds = %96, %71
  store i32 -1, i32* %9, align 4
  br label %100

100:                                              ; preds = %99, %96
  br label %101

101:                                              ; preds = %17, %100, %70, %37, %19
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %105, 65535
  %107 = icmp sge i32 %106, 65534
  br i1 %107, label %108, label %109

108:                                              ; preds = %104, %101
  store i32 -1, i32* %4, align 4
  br label %113

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  %111 = load i32*, i32** %7, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %109, %108, %16
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @git__utf8_charlen(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
