; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_fixup_plx_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_fixup_plx_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@amb_mem = common dso_local global i32 0, align 4
@stuff = common dso_local global i32* null, align 8
@onegigmask = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @fixup_plx_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_plx_window(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @virt_to_bus(i32* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @amb_mem, align 4
  %11 = load i32*, i32** @stuff, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 10
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @offsetof(i32 %10, i32 %13)
  %15 = call i64 @rd_plain(i32* %9, i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* @onegigmask, align 8
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %6, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @onegigmask, align 8
  %22 = and i64 %20, %21
  %23 = load i64, i64* %6, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %6, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @amb_mem, align 4
  %27 = load i32*, i32** @stuff, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 10
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @offsetof(i32 %26, i32 %29)
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @wr_plain(i32* %25, i32 %30, i64 %31)
  ret void
}

declare dso_local i64 @virt_to_bus(i32*) #1

declare dso_local i64 @rd_plain(i32*, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @wr_plain(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
