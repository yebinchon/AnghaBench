; ModuleID = '/home/carl/AnghaBench/libui/common/extr_utf.c_uiprivUTF16EncodeRune.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_utf.c_uiprivUTF16EncodeRune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@badrune = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uiprivUTF16EncodeRune(i32 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 1114111
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @badrune, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %13, 55296
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 57344
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @badrune, align 4
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %18, %15, %12
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 65536
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %24, i32* %26, align 4
  store i64 1, i64* %3, align 8
  br label %44

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %28, 65536
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 1023
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 10
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 1023
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, 55296
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, 56320
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %43, align 4
  store i64 2, i64* %3, align 8
  br label %44

44:                                               ; preds = %27, %23
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
