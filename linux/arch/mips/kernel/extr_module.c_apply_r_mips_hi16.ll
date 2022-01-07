; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_module.c_apply_r_mips_hi16.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_module.c_apply_r_mips_hi16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mips_hi16* }
%struct.mips_hi16 = type { %struct.mips_hi16*, i64, i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i32*, i32, i64, i32)* @apply_r_mips_hi16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_r_mips_hi16(%struct.module* %0, i32* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.module*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mips_hi16*, align 8
  store %struct.module* %0, %struct.module** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %5
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, -65536
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* %10, align 8
  %21 = add nsw i64 %20, 32768
  %22 = ashr i64 %21, 16
  %23 = and i64 %22, 65535
  %24 = or i64 %19, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %6, align 4
  br label %53

27:                                               ; preds = %5
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.mips_hi16* @kmalloc(i32 24, i32 %28)
  store %struct.mips_hi16* %29, %struct.mips_hi16** %12, align 8
  %30 = load %struct.mips_hi16*, %struct.mips_hi16** %12, align 8
  %31 = icmp ne %struct.mips_hi16* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %53

35:                                               ; preds = %27
  %36 = load i32*, i32** %8, align 8
  %37 = bitcast i32* %36 to i64*
  %38 = load %struct.mips_hi16*, %struct.mips_hi16** %12, align 8
  %39 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %38, i32 0, i32 2
  store i64* %37, i64** %39, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.mips_hi16*, %struct.mips_hi16** %12, align 8
  %42 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.module*, %struct.module** %7, align 8
  %44 = getelementptr inbounds %struct.module, %struct.module* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.mips_hi16*, %struct.mips_hi16** %45, align 8
  %47 = load %struct.mips_hi16*, %struct.mips_hi16** %12, align 8
  %48 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %47, i32 0, i32 0
  store %struct.mips_hi16* %46, %struct.mips_hi16** %48, align 8
  %49 = load %struct.mips_hi16*, %struct.mips_hi16** %12, align 8
  %50 = load %struct.module*, %struct.module** %7, align 8
  %51 = getelementptr inbounds %struct.module, %struct.module* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store %struct.mips_hi16* %49, %struct.mips_hi16** %52, align 8
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %35, %32, %15
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local %struct.mips_hi16* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
