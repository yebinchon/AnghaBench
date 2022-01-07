; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xpatience.c_binary_search.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xpatience.c_binary_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.entry**, i32, %struct.entry*)* @binary_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binary_search(%struct.entry** %0, i32 %1, %struct.entry* %2) #0 {
  %4 = alloca %struct.entry**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.entry** %0, %struct.entry*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.entry* %2, %struct.entry** %6, align 8
  store i32 -1, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %38, %3
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sdiv i32 %20, 2
  %22 = add nsw i32 %17, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.entry**, %struct.entry*** %4, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.entry*, %struct.entry** %23, i64 %25
  %27 = load %struct.entry*, %struct.entry** %26, align 8
  %28 = getelementptr inbounds %struct.entry, %struct.entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.entry*, %struct.entry** %6, align 8
  %31 = getelementptr inbounds %struct.entry, %struct.entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %16
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %8, align 4
  br label %38

36:                                               ; preds = %16
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %34
  br label %11

39:                                               ; preds = %11
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
