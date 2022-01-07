; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_util.c_insertsort.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_util.c_insertsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i64 (i32*, i32*, i8*)*, i8*)* @insertsort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insertsort(i8* %0, i64 %1, i64 %2, i64 (i32*, i32*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64 (i32*, i32*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 (i32*, i32*, i8*)* %3, i64 (i32*, i32*, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = mul i64 %18, %19
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %13, align 8
  br label %25

25:                                               ; preds = %61, %5
  %26 = load i32*, i32** %13, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = icmp ult i32* %26, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %25
  %30 = load i32*, i32** %13, align 8
  store i32* %30, i32** %14, align 8
  br label %31

31:                                               ; preds = %55, %29
  %32 = load i32*, i32** %14, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ugt i32* %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i64 (i32*, i32*, i8*)*, i64 (i32*, i32*, i8*)** %9, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = load i64, i64* %8, align 8
  %40 = sub i64 0, %39
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i8*, i8** %10, align 8
  %43 = call i64 %36(i32* %37, i32* %41, i8* %42)
  %44 = icmp slt i64 %43, 0
  br label %45

45:                                               ; preds = %35, %31
  %46 = phi i1 [ false, %31 ], [ %44, %35 ]
  br i1 %46, label %47, label %60

47:                                               ; preds = %45
  %48 = load i32*, i32** %14, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load i64, i64* %8, align 8
  %51 = sub i64 0, %50
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @swap(i32* %48, i32* %52, i64 %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i64, i64* %8, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = sub i64 0, %56
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %14, align 8
  br label %31

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %8, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 %62
  store i32* %64, i32** %13, align 8
  br label %25

65:                                               ; preds = %25
  ret void
}

declare dso_local i32 @swap(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
