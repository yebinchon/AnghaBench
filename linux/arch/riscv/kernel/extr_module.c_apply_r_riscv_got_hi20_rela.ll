; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_module.c_apply_r_riscv_got_hi20_rela.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_module.c_apply_r_riscv_got_hi20_rela.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }

@CONFIG_MODULE_SECTIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"%s: can not generate the GOT entry for symbol = %016llx from PC = %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i32*, i64)* @apply_r_riscv_got_hi20_rela to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_r_riscv_got_hi20_rela(%struct.module* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = ptrtoint i8* %11 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @CONFIG_MODULE_SECTIONS, align 4
  %19 = call i64 @IS_ENABLED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load %struct.module*, %struct.module** %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @module_emit_got_entry(%struct.module* %22, i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = load i32*, i32** %6, align 8
  %29 = bitcast i32* %28 to i8*
  %30 = ptrtoint i8* %27 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %8, align 4
  br label %43

34:                                               ; preds = %3
  %35 = load %struct.module*, %struct.module** %5, align 8
  %36 = getelementptr inbounds %struct.module, %struct.module* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %7, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %38, i32* %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %53

43:                                               ; preds = %21
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 2048
  %46 = and i32 %45, -4096
  store i32 %46, i32* %9, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 4095
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %49, %50
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %43, %34
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @module_emit_got_entry(%struct.module*, i64) #1

declare dso_local i32 @pr_err(i8*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
