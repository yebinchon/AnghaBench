; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_maccub.c_chg_has.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_maccub.c_chg_has.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chg_has(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = mul nsw i32 %9, 2
  store i32 %10, i32* %5, align 4
  %11 = load i64*, i64** %4, align 8
  %12 = ptrtoint i64* %11 to i64
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load i64*, i64** %4, align 8
  %16 = ptrtoint i64* %15 to i64
  %17 = sub nsw i64 0, %16
  %18 = and i64 %17, -2
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load i64*, i64** %4, align 8
  %24 = ptrtoint i64* %23 to i64
  %25 = sub nsw i64 0, %24
  %26 = and i64 %25, 1
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 -1
  store i32 %29, i32* %3, align 4
  br label %82

30:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %82

31:                                               ; preds = %2
  %32 = load i64*, i64** %4, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %80

34:                                               ; preds = %31
  %35 = load i64*, i64** %4, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  %40 = load i64*, i64** %4, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @abs(i64 %42)
  store i32 %43, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %44

44:                                               ; preds = %69, %39
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %44
  %49 = load i64*, i64** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = and i64 %53, -2
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %48
  %59 = load i64*, i64** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = and i64 %63, 1
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 -1
  store i32 %67, i32* %3, align 4
  br label %82

68:                                               ; preds = %48
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %44

72:                                               ; preds = %44
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %82

74:                                               ; preds = %34
  %75 = load i64*, i64** %4, align 8
  %76 = bitcast i64* %75 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @trp_has(i32 %77, i32 %78)
  store i32 %79, i32* %3, align 4
  br label %82

80:                                               ; preds = %31
  br label %81

81:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %74, %72, %58, %30, %22
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @trp_has(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
