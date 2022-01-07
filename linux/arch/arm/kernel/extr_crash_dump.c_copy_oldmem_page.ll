; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_crash_dump.c_copy_oldmem_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_crash_dump.c_copy_oldmem_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @copy_oldmem_page(i64 %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %54

16:                                               ; preds = %5
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @__pfn_to_phys(i64 %17)
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = call i8* @ioremap(i32 %18, i32 %19)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i64, i64* @ENOMEM, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %6, align 8
  br label %54

26:                                               ; preds = %16
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr i8, i8* %31, i64 %32
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @copy_to_user(i8* %30, i8* %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i8*, i8** %12, align 8
  %39 = call i32 @iounmap(i8* %38)
  %40 = load i64, i64* @EFAULT, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %6, align 8
  br label %54

42:                                               ; preds = %29
  br label %50

43:                                               ; preds = %26
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr i8, i8* %45, i64 %46
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @memcpy(i8* %44, i8* %47, i64 %48)
  br label %50

50:                                               ; preds = %43, %42
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @iounmap(i8* %51)
  %53 = load i64, i64* %9, align 8
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %50, %37, %23, %15
  %55 = load i64, i64* %6, align 8
  ret i64 %55
}

declare dso_local i8* @ioremap(i32, i32) #1

declare dso_local i32 @__pfn_to_phys(i64) #1

declare dso_local i64 @copy_to_user(i8*, i8*, i64) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
