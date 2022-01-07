; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_oflib.c_of_vmlinux_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_oflib.c_of_vmlinux_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_start = common dso_local global i64 0, align 8
@_end = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"Trying to claim from 0x%lx to 0x%lx (0x%lx) got %lx\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Can't allocate memory for kernel image!\0A\0D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @of_vmlinux_alloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* @_start, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* @_end, align 8
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = sub i64 %10, %11
  %13 = call i64 @of_claim(i64 %9, i64 %12, i32 0)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = sub i64 %16, %17
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %15, i64 %18, i64 %19)
  %21 = load i64, i64* %2, align 8
  %22 = call i8* @malloc(i64 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %1
  %26 = call i32 @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %1
  %28 = load i8*, i8** %6, align 8
  ret i8* %28
}

declare dso_local i64 @of_claim(i64, i64, i32) #1

declare dso_local i32 @printf(i8*, i64, i64, i64, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
