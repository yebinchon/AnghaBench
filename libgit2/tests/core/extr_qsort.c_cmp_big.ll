; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_qsort.c_cmp_big.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_qsort.c_cmp_big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.big_entries = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @cmp_big to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_big(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.big_entries*, align 8
  %8 = alloca %struct.big_entries*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.big_entries*
  store %struct.big_entries* %10, %struct.big_entries** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.big_entries*
  store %struct.big_entries* %12, %struct.big_entries** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @GIT_UNUSED(i8* %13)
  %15 = load %struct.big_entries*, %struct.big_entries** %7, align 8
  %16 = getelementptr inbounds %struct.big_entries, %struct.big_entries* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.big_entries*, %struct.big_entries** %8, align 8
  %21 = getelementptr inbounds %struct.big_entries, %struct.big_entries* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %41

27:                                               ; preds = %3
  %28 = load %struct.big_entries*, %struct.big_entries** %7, align 8
  %29 = getelementptr inbounds %struct.big_entries, %struct.big_entries* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.big_entries*, %struct.big_entries** %8, align 8
  %34 = getelementptr inbounds %struct.big_entries, %struct.big_entries* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %32, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  br label %41

41:                                               ; preds = %27, %26
  %42 = phi i32 [ -1, %26 ], [ %40, %27 ]
  ret i32 %42
}

declare dso_local i32 @GIT_UNUSED(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
