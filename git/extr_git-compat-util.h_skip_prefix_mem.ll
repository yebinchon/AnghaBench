; ModuleID = '/home/carl/AnghaBench/git/extr_git-compat-util.h_skip_prefix_mem.c'
source_filename = "/home/carl/AnghaBench/git/extr_git-compat-util.h_skip_prefix_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i8**, i64*)* @skip_prefix_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_prefix_mem(i8* %0, i64 %1, i8* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ule i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %5
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %12, align 8
  %22 = call i32 @memcmp(i8* %19, i8* %20, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %12, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8**, i8*** %10, align 8
  store i8* %27, i8** %28, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %12, align 8
  %31 = sub i64 %29, %30
  %32 = load i64*, i64** %11, align 8
  store i64 %31, i64* %32, align 8
  store i32 1, i32* %6, align 4
  br label %34

33:                                               ; preds = %18, %5
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
