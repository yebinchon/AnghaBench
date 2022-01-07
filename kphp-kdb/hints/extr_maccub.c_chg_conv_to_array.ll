; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_chg_conv_to_array.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_chg_conv_to_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chg_conv_to_array(i64* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = ptrtoint i64* %8 to i64
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i64*, i64** %4, align 8
  %13 = ptrtoint i64* %12 to i64
  %14 = sub nsw i64 0, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %15, i32* %17, align 4
  store i32 1, i32* %3, align 4
  br label %70

18:                                               ; preds = %2
  %19 = load i64*, i64** %4, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %68

21:                                               ; preds = %18
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %21
  %27 = load i64*, i64** %4, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %40, %26
  %32 = load i64*, i64** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %7, align 4
  br label %31

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %57, %43
  %46 = load i32, i32* %6, align 4
  %47 = icmp sge i32 %46, 1
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i64*, i64** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %6, align 4
  br label %45

60:                                               ; preds = %45
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %70

62:                                               ; preds = %21
  %63 = load i64*, i64** %4, align 8
  %64 = bitcast i64* %63 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @trp_conv_to_array_rev(i32 %65, i32* %66)
  store i32 %67, i32* %3, align 4
  br label %70

68:                                               ; preds = %18
  br label %69

69:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %62, %60, %11
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @trp_conv_to_array_rev(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
