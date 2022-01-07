; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_mach-osiris.c_osiris_nand_select.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_mach-osiris.c_osiris_nand_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_nand_set = type { i32* }

@.str = private unnamed_addr constant [44 x i8] c"osiris_nand: selecting slot %d (set %p,%p)\0A\00", align 1
@OSIRIS_VA_CTRL0 = common dso_local global i32 0, align 4
@OSIRIS_CTRL0_NANDSEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"osiris_nand: ctrl0 now %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410_nand_set*, i32)* @osiris_nand_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @osiris_nand_select(%struct.s3c2410_nand_set* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c2410_nand_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s3c2410_nand_set* %0, %struct.s3c2410_nand_set** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %3, align 8
  %7 = getelementptr inbounds %struct.s3c2410_nand_set, %struct.s3c2410_nand_set* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 3
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %3, align 8
  %16 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %3, align 8
  %17 = getelementptr inbounds %struct.s3c2410_nand_set, %struct.s3c2410_nand_set* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %14, %struct.s3c2410_nand_set* %15, i32* %18)
  %20 = load i32, i32* @OSIRIS_VA_CTRL0, align 4
  %21 = call i32 @__raw_readb(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @OSIRIS_CTRL0_NANDSEL, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @OSIRIS_VA_CTRL0, align 4
  %33 = call i32 @__raw_writeb(i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @__raw_readb(i32) #1

declare dso_local i32 @__raw_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
