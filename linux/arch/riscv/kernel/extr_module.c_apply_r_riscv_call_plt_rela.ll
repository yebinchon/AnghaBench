; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_module.c_apply_r_riscv_call_plt_rela.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_module.c_apply_r_riscv_call_plt_rela.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }

@CONFIG_MODULE_SECTIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"%s: target %016llx can not be addressed by the 32-bit offset from PC = %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i32*, i64)* @apply_r_riscv_call_plt_rela to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_r_riscv_call_plt_rela(%struct.module* %0, i32* %1, i64 %2) #0 {
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
  br i1 %23, label %24, label %51

24:                                               ; preds = %3
  %25 = load i32, i32* @CONFIG_MODULE_SECTIONS, align 4
  %26 = call i64 @IS_ENABLED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.module*, %struct.module** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @module_emit_plt_entry(%struct.module* %29, i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load i32*, i32** %6, align 8
  %36 = bitcast i32* %35 to i8*
  %37 = ptrtoint i8* %34 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %8, align 4
  br label %50

41:                                               ; preds = %24
  %42 = load %struct.module*, %struct.module** %5, align 8
  %43 = getelementptr inbounds %struct.module, %struct.module* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %7, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %45, i32* %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %74

50:                                               ; preds = %28
  br label %51

51:                                               ; preds = %50, %3
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 2048
  %54 = and i32 %53, -4096
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %55, %56
  %58 = and i32 %57, 4095
  store i32 %58, i32* %11, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 4095
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %61, %62
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 1048575
  %69 = load i32, i32* %11, align 4
  %70 = shl i32 %69, 20
  %71 = or i32 %68, %70
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 %71, i32* %73, align 4
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %51, %41
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @module_emit_plt_entry(%struct.module*, i64) #1

declare dso_local i32 @pr_err(i8*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
