; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_path.c_verify_dotgit_hfs_generic.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_path.c_verify_dotgit_hfs_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64)* @verify_dotgit_hfs_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_dotgit_hfs_generic(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = call signext i8 @next_hfs_char(i8** %6, i64* %7)
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 46
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %42

16:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = call signext i8 @next_hfs_char(i8** %6, i64* %7)
  store i8 %22, i8* %11, align 1
  %23 = load i8, i8* %11, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %42

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %10, align 8
  br label %17

36:                                               ; preds = %17
  %37 = call signext i8 @next_hfs_char(i8** %6, i64* %7)
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %42

41:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %40, %31, %15
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local signext i8 @next_hfs_char(i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
