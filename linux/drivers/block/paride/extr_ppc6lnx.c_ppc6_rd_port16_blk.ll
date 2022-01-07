; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_ppc6lnx.c_ppc6_rd_port16_blk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_ppc6lnx.c_ppc6_rd_port16_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_BLKSIZE = common dso_local global i32 0, align 4
@ACCESS_REG = common dso_local global i32 0, align 4
@ACCESS_WRITE = common dso_local global i32 0, align 4
@CMD_PREFIX_SET = common dso_local global i32 0, align 4
@PREFIX_IO16 = common dso_local global i32 0, align 4
@PREFIX_BLK = common dso_local global i32 0, align 4
@ACCESS_PORT = common dso_local global i32 0, align 4
@ACCESS_READ = common dso_local global i32 0, align 4
@CMD_PREFIX_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i64)* @ppc6_rd_port16_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc6_rd_port16_blk(i32* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = shl i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @REG_BLKSIZE, align 4
  %13 = load i32, i32* @ACCESS_REG, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ACCESS_WRITE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @ppc6_send_cmd(i32* %11, i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* %8, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @ppc6_wr_data_byte(i32* %18, i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = ashr i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @ppc6_wr_data_byte(i32* %22, i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @ppc6_wr_data_byte(i32* %27, i32 0)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @CMD_PREFIX_SET, align 4
  %31 = load i32, i32* @PREFIX_IO16, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @PREFIX_BLK, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @ppc6_send_cmd(i32* %29, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ACCESS_PORT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ACCESS_READ, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @ppc6_send_cmd(i32* %36, i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @ppc6_rd_data_blk(i32* %43, i32* %44, i64 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @CMD_PREFIX_RESET, align 4
  %49 = load i32, i32* @PREFIX_IO16, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @PREFIX_BLK, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @ppc6_send_cmd(i32* %47, i32 %52)
  ret void
}

declare dso_local i32 @ppc6_send_cmd(i32*, i32) #1

declare dso_local i32 @ppc6_wr_data_byte(i32*, i32) #1

declare dso_local i32 @ppc6_rd_data_blk(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
