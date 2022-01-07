; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_cpcmd.c_cpcmd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_cpcmd.c_cpcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"The cpcmd kernel function failed to allocate a response buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@cpcmd_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpcmd(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @is_vmalloc_or_module_addr(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 %17, i32 %18)
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = call i32 @pr_warn(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %54

26:                                               ; preds = %16
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @spin_lock_irqsave(i32* @cpcmd_lock, i64 %27)
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @__cpcmd(i8* %29, i8* %30, i32 %31, i32* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @cpcmd_lock, i64 %34)
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @memcpy(i8* %36, i8* %37, i32 %38)
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @kfree(i8* %40)
  br label %52

42:                                               ; preds = %4
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_lock_irqsave(i32* @cpcmd_lock, i64 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @__cpcmd(i8* %45, i8* %46, i32 %47, i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* @cpcmd_lock, i64 %50)
  br label %52

52:                                               ; preds = %42, %26
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %22
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @is_vmalloc_or_module_addr(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__cpcmd(i8*, i8*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
