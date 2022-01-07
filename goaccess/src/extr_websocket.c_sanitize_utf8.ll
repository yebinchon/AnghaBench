; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_sanitize_utf8.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_sanitize_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @sanitize_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sanitize_utf8(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  store i32 128, i32* %6, align 4
  store i32 128, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i8* @xcalloc(i32 %14, i32 1)
  store i8* %15, i8** %5, align 8
  br label %16

16:                                               ; preds = %102, %2
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %106

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = call i32 @utf8_decode(i32* %6, i32* %8, i8 zeroext %25)
  switch i32 %26, label %98 [
    i32 129, label %27
    i32 128, label %61
  ]

27:                                               ; preds = %20
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %11, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %44, %30
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8 63, i8* %43, align 1
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %34

47:                                               ; preds = %34
  br label %54

48:                                               ; preds = %27
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  store i8 63, i8* %53, align 1
  br label %54

54:                                               ; preds = %48, %47
  store i32 128, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 128
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %54
  store i32 0, i32* %11, align 4
  br label %101

61:                                               ; preds = %20
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %83, %64
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = load i8*, i8** %3, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8 %77, i8* %82, align 1
  br label %83

83:                                               ; preds = %72
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %68

86:                                               ; preds = %68
  br label %87

87:                                               ; preds = %86, %61
  %88 = load i8*, i8** %3, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8 %92, i8* %97, align 1
  store i32 0, i32* %11, align 4
  br label %101

98:                                               ; preds = %20
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %98, %87, %60
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %16

106:                                              ; preds = %16
  %107 = load i8*, i8** %5, align 8
  ret i8* %107
}

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @utf8_decode(i32*, i32*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
