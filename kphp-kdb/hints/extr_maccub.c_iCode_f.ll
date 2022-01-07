; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_iCode_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_iCode_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iCode_f(i32* %0, i32 %1, i32 %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  br label %66

17:                                               ; preds = %6
  %18 = load i32, i32* %8, align 4
  %19 = sdiv i32 %18, 2
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %20, %25
  %27 = load i32, i32* %13, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i8**, i8*** %11, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %33, %34
  %36 = add nsw i32 %35, 1
  %37 = call i32 @iCode_write(i32 %28, i8** %29, i32* %30, i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i8**, i8*** %11, align 8
  %47 = load i32*, i32** %12, align 8
  call void @iCode_f(i32* %38, i32 %39, i32 %40, i32 %45, i8** %46, i32* %47)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %13, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sub nsw i32 %55, 1
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = load i32, i32* %10, align 4
  %64 = load i8**, i8*** %11, align 8
  %65 = load i32*, i32** %12, align 8
  call void @iCode_f(i32* %52, i32 %56, i32 %62, i32 %63, i8** %64, i32* %65)
  br label %66

66:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @iCode_write(i32, i8**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
