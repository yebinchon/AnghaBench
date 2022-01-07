; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_module.c_apply_r_riscv_call_rela.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_module.c_apply_r_riscv_call_rela.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }

@.str = private unnamed_addr constant [75 x i8] c"%s: target %016llx can not be addressed by the 32-bit offset from PC = %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i32*, i64)* @apply_r_riscv_call_rela to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_r_riscv_call_rela(%struct.module* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = ptrtoint i8* %13 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.module*, %struct.module** %5, align 8
  %26 = getelementptr inbounds %struct.module, %struct.module* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %7, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %28, i32* %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %56

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 2048
  %36 = and i32 %35, -4096
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %37, %38
  %40 = and i32 %39, 4095
  store i32 %40, i32* %11, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 4095
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %43, %44
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 1048575
  %51 = load i32, i32* %11, align 4
  %52 = shl i32 %51, 20
  %53 = or i32 %50, %52
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %33, %24
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @pr_err(i8*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
