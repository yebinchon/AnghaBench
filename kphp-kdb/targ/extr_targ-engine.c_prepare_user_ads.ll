; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_prepare_user_ads.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_prepare_user_ads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i8*, i64)* @prepare_user_ads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_user_ads(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %61

20:                                               ; preds = %7
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %21, 16384
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 16384, i32* %10, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i64, i64* %15, align 8
  %31 = call i32 @compute_user_ads(i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i64 %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 -1, i32* %8, align 4
  br label %61

35:                                               ; preds = %24
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %16, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 7
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, 1
  %48 = load i32, i32* %11, align 4
  %49 = ashr i32 %48, 1
  %50 = and i32 %49, 1
  %51 = add nsw i32 %47, %50
  %52 = load i32, i32* %11, align 4
  %53 = ashr i32 %52, 2
  %54 = and i32 %53, 1
  %55 = add nsw i32 %51, %54
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* %16, align 4
  %58 = mul nsw i32 %57, %56
  store i32 %58, i32* %16, align 4
  br label %59

59:                                               ; preds = %45, %41
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %59, %34, %19
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @compute_user_ads(i32, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
