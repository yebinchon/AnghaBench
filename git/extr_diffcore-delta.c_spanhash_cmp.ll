; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-delta.c_spanhash_cmp.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-delta.c_spanhash_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spanhash = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @spanhash_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spanhash_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spanhash*, align 8
  %7 = alloca %struct.spanhash*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.spanhash*
  store %struct.spanhash* %9, %struct.spanhash** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.spanhash*
  store %struct.spanhash* %11, %struct.spanhash** %7, align 8
  %12 = load %struct.spanhash*, %struct.spanhash** %6, align 8
  %13 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.spanhash*, %struct.spanhash** %7, align 8
  %18 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 0, i32 1
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %2
  %25 = load %struct.spanhash*, %struct.spanhash** %7, align 8
  %26 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %51

30:                                               ; preds = %24
  %31 = load %struct.spanhash*, %struct.spanhash** %6, align 8
  %32 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.spanhash*, %struct.spanhash** %7, align 8
  %35 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %49

39:                                               ; preds = %30
  %40 = load %struct.spanhash*, %struct.spanhash** %6, align 8
  %41 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.spanhash*, %struct.spanhash** %7, align 8
  %44 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  br label %49

49:                                               ; preds = %39, %38
  %50 = phi i32 [ -1, %38 ], [ %48, %39 ]
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %29, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
