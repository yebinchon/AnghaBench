; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_varint.c_git_decode_varint.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_varint.c_git_decode_varint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_decode_varint(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %6, align 8
  %12 = load i8, i8* %10, align 1
  store i8 %12, i8* %7, align 1
  %13 = load i8, i8* %7, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 127
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %32, %2
  %17 = load i8, i8* %7, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 128
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @MSB(i32 %27, i32 7)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %21
  %31 = load i64*, i64** %5, align 8
  store i64 0, i64* %31, align 8
  store i32 0, i32* %3, align 4
  br label %50

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  %35 = load i8, i8* %33, align 1
  store i8 %35, i8* %7, align 1
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %36, 7
  %38 = load i8, i8* %7, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 127
  %41 = add nsw i32 %37, %40
  store i32 %41, i32* %8, align 4
  br label %16

42:                                               ; preds = %16
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = load i64*, i64** %5, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %42, %30
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @MSB(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
