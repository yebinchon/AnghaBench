; ModuleID = '/home/carl/AnghaBench/git/extr_versioncmp.c_find_better_matching_suffix.c'
source_filename = "/home/carl/AnghaBench/git/extr_versioncmp.c_find_better_matching_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.suffix_match = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, %struct.suffix_match*)* @find_better_matching_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_better_matching_suffix(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.suffix_match* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.suffix_match*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.suffix_match* %5, %struct.suffix_match** %12, align 8
  %15 = load %struct.suffix_match*, %struct.suffix_match** %12, align 8
  %16 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load %struct.suffix_match*, %struct.suffix_match** %12, align 8
  %22 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  br label %29

24:                                               ; preds = %6
  %25 = load %struct.suffix_match*, %struct.suffix_match** %12, align 8
  %26 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i32 [ %23, %20 ], [ %28, %24 ]
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %55, %29
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8*, i8** %8, align 8
  %42 = call i64 @starts_with(i8* %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %36
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.suffix_match*, %struct.suffix_match** %12, align 8
  %47 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.suffix_match*, %struct.suffix_match** %12, align 8
  %50 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.suffix_match*, %struct.suffix_match** %12, align 8
  %53 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %58

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %32

58:                                               ; preds = %44, %32
  ret void
}

declare dso_local i64 @starts_with(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
