; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_ima_kexec.c_do_get_kexec_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_ima_kexec.c_do_get_kexec_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*, i64*)* @do_get_kexec_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_get_kexec_buffer(i8* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = call i32 @get_addr_size_cells(i32* %11, i32* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %5, align 4
  br label %43

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = add nsw i32 %20, %21
  %23 = mul nsw i32 4, %22
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %43

28:                                               ; preds = %18
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i8* @of_read_number(i8* %29, i32 %30)
  %32 = ptrtoint i8* %31 to i64
  %33 = load i64*, i64** %8, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 4, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %34, i64 %37
  %39 = load i32, i32* %12, align 4
  %40 = call i8* @of_read_number(i8* %38, i32 %39)
  %41 = ptrtoint i8* %40 to i64
  %42 = load i64*, i64** %9, align 8
  store i64 %41, i64* %42, align 8
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %28, %25, %16
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @get_addr_size_cells(i32*, i32*) #1

declare dso_local i8* @of_read_number(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
