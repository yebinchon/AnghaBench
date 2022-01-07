; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-common.c_make_tag.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-common.c_make_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32)* @make_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @make_tag(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sle i32 %9, 16
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  store i32 1, i32* %8, align 4
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  store i8 31, i8* %13, align 16
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @memcpy(i8* %15, i8* %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %25, %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp uge i32 %23, 64
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 127
  %28 = add i32 %27, 128
  %29 = trunc i32 %28 to i8
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %32
  store i8 %29, i8* %33, align 1
  %34 = load i32, i32* %6, align 4
  %35 = lshr i32 %34, 7
  store i32 %35, i32* %6, align 4
  br label %22

36:                                               ; preds = %22
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 63
  %39 = add i32 %38, 64
  %40 = trunc i32 %39 to i8
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %43
  store i8 %40, i8* %44, align 1
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @word_hash(i8* %45, i32 %46)
  ret i64 %47
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @word_hash(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
