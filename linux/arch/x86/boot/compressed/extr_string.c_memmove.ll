; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_string.c_memmove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_string.c_memmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memmove(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ule i8* %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = load i64, i64* %7, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %15, %3
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i8* @____memcpy(i8* %24, i8* %25, i64 %26)
  store i8* %27, i8** %4, align 8
  br label %43

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %33, %28
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %7, align 8
  %32 = icmp ugt i64 %30, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8 %37, i8* %40, align 1
  br label %29

41:                                               ; preds = %29
  %42 = load i8*, i8** %5, align 8
  store i8* %42, i8** %4, align 8
  br label %43

43:                                               ; preds = %41, %23
  %44 = load i8*, i8** %4, align 8
  ret i8* %44
}

declare dso_local i8* @____memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
