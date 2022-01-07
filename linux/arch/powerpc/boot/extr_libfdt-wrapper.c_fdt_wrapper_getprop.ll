; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_libfdt-wrapper.c_fdt_wrapper_getprop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_libfdt-wrapper.c_fdt_wrapper_getprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32)* @fdt_wrapper_getprop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdt_wrapper_getprop(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @fdt, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @devp_offset(i8* %13)
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @fdt_getprop(i32 %12, i32 %14, i8* %15, i32* %11)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @check_err(i32 %20)
  store i32 %21, i32* %5, align 4
  br label %30

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @min(i32 %25, i32 %26)
  %28 = call i32 @memcpy(i8* %23, i8* %24, i32 %27)
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %22, %19
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i8* @fdt_getprop(i32, i32, i8*, i32*) #1

declare dso_local i32 @devp_offset(i8*) #1

declare dso_local i32 @check_err(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
