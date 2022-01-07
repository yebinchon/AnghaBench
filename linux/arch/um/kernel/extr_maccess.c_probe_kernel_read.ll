; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_maccess.c_probe_kernel_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_maccess.c_probe_kernel_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @probe_kernel_read(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = load i64, i64* @PAGE_SIZE, align 8
  %12 = call i64 @rounddown(i64 %10, i64 %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = icmp ule i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %3
  %22 = load i64, i64* @EFAULT, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %4, align 8
  br label %44

24:                                               ; preds = %18
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr i8, i8* %27, i64 %26
  %29 = load i8*, i8** %8, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = call i64 @os_mincore(i8* %25, i32 %33)
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i64, i64* @EFAULT, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %4, align 8
  br label %44

39:                                               ; preds = %24
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @__probe_kernel_read(i8* %40, i8* %41, i64 %42)
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %39, %36, %21
  %45 = load i64, i64* %4, align 8
  ret i64 %45
}

declare dso_local i64 @rounddown(i64, i64) #1

declare dso_local i64 @os_mincore(i8*, i32) #1

declare dso_local i64 @__probe_kernel_read(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
