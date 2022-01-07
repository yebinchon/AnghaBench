; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_compute_golomb_parameter.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_compute_golomb_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@golomb_crit = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_golomb_parameter(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %12, %13
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ false, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = mul nsw i64 10557376, %20
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = sdiv i64 %21, %23
  %25 = add nsw i64 %24, 2336849
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp sle i64 %26, 167474174
  br i1 %27, label %28, label %49

28:                                               ; preds = %15
  store i32 1, i32* %7, align 4
  br label %29

29:                                               ; preds = %45, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %30, 10
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load i64, i64* %6, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32*, i32** @golomb_crit, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %34, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %54

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %29

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48, %15
  %50 = load i64, i64* %6, align 8
  %51 = sdiv i64 %50, 15231074
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %42
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
