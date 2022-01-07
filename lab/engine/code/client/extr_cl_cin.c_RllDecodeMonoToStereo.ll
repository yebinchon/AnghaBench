; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_RllDecodeMonoToStereo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_RllDecodeMonoToStereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@cin = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RllDecodeMonoToStereo(i8* %0, i16* %1, i32 %2, i8 signext %3, i16 zeroext %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i16* %1, i16** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i16 %4, i16* %10, align 2
  %13 = load i8, i8* %9, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i16, i16* %10, align 2
  %17 = zext i16 %16 to i32
  %18 = sub nsw i32 %17, 32768
  store i32 %18, i32* %12, align 4
  br label %22

19:                                               ; preds = %5
  %20 = load i16, i16* %10, align 2
  %21 = zext i16 %20 to i32
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %19, %15
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %56, %22
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cin, i32 0, i32 0), align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i64, i64* %30, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %29, %38
  %40 = trunc i64 %39 to i16
  %41 = sext i16 %40 to i32
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = trunc i32 %42 to i16
  %44 = load i16*, i16** %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = mul i32 %45, 2
  %47 = add i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i16, i16* %44, i64 %48
  store i16 %43, i16* %49, align 2
  %50 = load i16*, i16** %7, align 8
  %51 = load i32, i32* %11, align 4
  %52 = mul i32 %51, 2
  %53 = add i32 %52, 0
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i16, i16* %50, i64 %54
  store i16 %43, i16* %55, align 2
  br label %56

56:                                               ; preds = %27
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %23

59:                                               ; preds = %23
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  ret i64 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
