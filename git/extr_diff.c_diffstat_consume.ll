; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diffstat_consume.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diffstat_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diffstat_t = type { i32, %struct.diffstat_file** }
%struct.diffstat_file = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @diffstat_consume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diffstat_consume(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.diffstat_t*, align 8
  %8 = alloca %struct.diffstat_file*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.diffstat_t*
  store %struct.diffstat_t* %10, %struct.diffstat_t** %7, align 8
  %11 = load %struct.diffstat_t*, %struct.diffstat_t** %7, align 8
  %12 = getelementptr inbounds %struct.diffstat_t, %struct.diffstat_t* %11, i32 0, i32 1
  %13 = load %struct.diffstat_file**, %struct.diffstat_file*** %12, align 8
  %14 = load %struct.diffstat_t*, %struct.diffstat_t** %7, align 8
  %15 = getelementptr inbounds %struct.diffstat_t, %struct.diffstat_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.diffstat_file*, %struct.diffstat_file** %13, i64 %18
  %20 = load %struct.diffstat_file*, %struct.diffstat_file** %19, align 8
  store %struct.diffstat_file* %20, %struct.diffstat_file** %8, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 43
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.diffstat_file*, %struct.diffstat_file** %8, align 8
  %28 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %43

31:                                               ; preds = %3
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 45
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.diffstat_file*, %struct.diffstat_file** %8, align 8
  %39 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %31
  br label %43

43:                                               ; preds = %42, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
