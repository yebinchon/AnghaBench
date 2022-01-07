; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_window.c_encodeUTF8.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_window.c_encodeUTF8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32)* @encodeUTF8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @encodeUTF8(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp ult i32 %6, 128
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = trunc i32 %9 to i8
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %5, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %5, align 8
  %14 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8 %10, i8* %14, align 1
  br label %105

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ult i32 %16, 2048
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = lshr i32 %19, 6
  %21 = or i32 %20, 192
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %3, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %5, align 8
  %26 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8 %22, i8* %26, align 1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 63
  %29 = or i32 %28, 128
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  %34 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8 %30, i8* %34, align 1
  br label %104

35:                                               ; preds = %15
  %36 = load i32, i32* %4, align 4
  %37 = icmp ult i32 %36, 65536
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = lshr i32 %39, 12
  %41 = or i32 %40, 224
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %3, align 8
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  %46 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 %42, i8* %46, align 1
  %47 = load i32, i32* %4, align 4
  %48 = lshr i32 %47, 6
  %49 = and i32 %48, 63
  %50 = or i32 %49, 128
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %3, align 8
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %5, align 8
  %55 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 %51, i8* %55, align 1
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, 63
  %58 = or i32 %57, 128
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %3, align 8
  %61 = load i64, i64* %5, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %5, align 8
  %63 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 %59, i8* %63, align 1
  br label %103

64:                                               ; preds = %35
  %65 = load i32, i32* %4, align 4
  %66 = icmp ult i32 %65, 1114112
  br i1 %66, label %67, label %102

67:                                               ; preds = %64
  %68 = load i32, i32* %4, align 4
  %69 = lshr i32 %68, 18
  %70 = or i32 %69, 240
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %3, align 8
  %73 = load i64, i64* %5, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %5, align 8
  %75 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 %71, i8* %75, align 1
  %76 = load i32, i32* %4, align 4
  %77 = lshr i32 %76, 12
  %78 = and i32 %77, 63
  %79 = or i32 %78, 128
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %3, align 8
  %82 = load i64, i64* %5, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %5, align 8
  %84 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8 %80, i8* %84, align 1
  %85 = load i32, i32* %4, align 4
  %86 = lshr i32 %85, 6
  %87 = and i32 %86, 63
  %88 = or i32 %87, 128
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %3, align 8
  %91 = load i64, i64* %5, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %5, align 8
  %93 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 %89, i8* %93, align 1
  %94 = load i32, i32* %4, align 4
  %95 = and i32 %94, 63
  %96 = or i32 %95, 128
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %3, align 8
  %99 = load i64, i64* %5, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %5, align 8
  %101 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8 %97, i8* %101, align 1
  br label %102

102:                                              ; preds = %67, %64
  br label %103

103:                                              ; preds = %102, %38
  br label %104

104:                                              ; preds = %103, %18
  br label %105

105:                                              ; preds = %104, %8
  %106 = load i64, i64* %5, align 8
  ret i64 %106
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
