; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_makeamitbin.c_checksum.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_makeamitbin.c_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @checksum(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i16 0, i16* %7, align 2
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %31, %2
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call zeroext i16 @READ_SHORT(i8* %13, i64 %14)
  store i16 %15, i16* %6, align 2
  %16 = load i16, i16* %6, align 2
  %17 = zext i16 %16 to i32
  %18 = load i16, i16* %7, align 2
  %19 = zext i16 %18 to i32
  %20 = add nsw i32 %19, %17
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %7, align 2
  %22 = load i16, i16* %7, align 2
  %23 = zext i16 %22 to i32
  %24 = load i16, i16* %6, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %12
  %28 = load i16, i16* %7, align 2
  %29 = add i16 %28, 1
  store i16 %29, i16* %7, align 2
  br label %30

30:                                               ; preds = %27, %12
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %32, 2
  store i64 %33, i64* %5, align 8
  br label %8

34:                                               ; preds = %8
  %35 = load i64, i64* %4, align 8
  %36 = and i64 %35, 1
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load i8*, i8** %3, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i16
  store i16 %43, i16* %6, align 2
  %44 = load i16, i16* %6, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* %7, align 2
  %47 = zext i16 %46 to i32
  %48 = add nsw i32 %47, %45
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %7, align 2
  %50 = load i16, i16* %7, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* %6, align 2
  %53 = zext i16 %52 to i32
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %38
  %56 = load i16, i16* %7, align 2
  %57 = add i16 %56, 1
  store i16 %57, i16* %7, align 2
  br label %58

58:                                               ; preds = %55, %38
  br label %59

59:                                               ; preds = %58, %34
  %60 = load i16, i16* %7, align 2
  ret i16 %60
}

declare dso_local zeroext i16 @READ_SHORT(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
