; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_util.c_swap.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_util.c_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %9

9:                                                ; preds = %18, %3
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %9
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %13, 256
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8
  br label %18

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i64 [ %16, %15 ], [ 256, %17 ]
  store i64 %19, i64* %8, align 8
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i64, i64* %8, align 8
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @memcpy(i8* %20, i8* %26, i64 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i64, i64* %8, align 8
  %33 = sub i64 0, %32
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i64, i64* %8, align 8
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @memcpy(i8* %34, i8* %40, i64 %41)
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i64, i64* %8, align 8
  %47 = sub i64 0, %46
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @memcpy(i8* %48, i8* %49, i64 %50)
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %6, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %6, align 8
  br label %9

55:                                               ; preds = %9
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
