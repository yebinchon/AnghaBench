; ModuleID = '/home/carl/AnghaBench/libui/common/extr_utf.c_uiprivUTF16DecodeRune.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_utf.c_uiprivUTF16DecodeRune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@badrune = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @uiprivUTF16DecodeRune(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 55296
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 57344
  br i1 %16, label %17, label %24

17:                                               ; preds = %13, %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  store i32* %23, i32** %4, align 8
  br label %85

24:                                               ; preds = %13
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 56320
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* @badrune, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  store i32* %33, i32** %4, align 8
  br label %85

34:                                               ; preds = %24
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %35, 1
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* @badrune, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %5, align 8
  %42 = load i32*, i32** %5, align 8
  store i32* %42, i32** %4, align 8
  br label %85

43:                                               ; preds = %34
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 1023
  store i32 %47, i32* %8, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 56320
  br i1 %51, label %57, label %52

52:                                               ; preds = %43
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, 57344
  br i1 %56, label %57, label %63

57:                                               ; preds = %52, %43
  %58 = load i32, i32* @badrune, align 4
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %5, align 8
  %62 = load i32*, i32** %5, align 8
  store i32* %62, i32** %4, align 8
  br label %85

63:                                               ; preds = %52
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %5, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 1023
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 10
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %77
  store i32 %80, i32* %78, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 65536
  store i32 %83, i32* %81, align 4
  %84 = load i32*, i32** %5, align 8
  store i32* %84, i32** %4, align 8
  br label %85

85:                                               ; preds = %63, %57, %37, %28, %17
  %86 = load i32*, i32** %4, align 8
  ret i32* %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
