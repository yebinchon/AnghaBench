; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/mac/extr_macboing.c_mac_init_asc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/mac/extr_macboing.c_mac_init_asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@macintosh_config = common dso_local global %struct.TYPE_2__* null, align 8
@mac_asc_regs = common dso_local global i8* null, align 8
@mac_quadra_start_bell = common dso_local global i32* null, align 8
@mac_special_bell = common dso_local global i32* null, align 8
@mac_asc_samplespersec = common dso_local global i32 0, align 4
@mac_av_start_bell = common dso_local global i32* null, align 8
@mac_asc_wave_tab = common dso_local global i32* null, align 8
@mac_asc_inited = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mac_init_asc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac_init_asc() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macintosh_config, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %11 [
    i32 136, label %5
    i32 134, label %6
    i32 135, label %6
    i32 137, label %8
    i32 130, label %8
    i32 133, label %10
    i32 132, label %10
    i32 131, label %10
    i32 129, label %10
    i32 128, label %10
  ]

5:                                                ; preds = %0
  store i8* inttoptr (i64 1342242816 to i8*), i8** @mac_asc_regs, align 8
  br label %12

6:                                                ; preds = %0, %0
  %7 = load i32*, i32** @mac_quadra_start_bell, align 8
  store i32* %7, i32** @mac_special_bell, align 8
  store i32 22150, i32* @mac_asc_samplespersec, align 4
  br label %12

8:                                                ; preds = %0, %0
  %9 = load i32*, i32** @mac_av_start_bell, align 8
  store i32* %9, i32** @mac_special_bell, align 8
  br label %12

10:                                               ; preds = %0, %0, %0, %0, %0
  store i32* null, i32** @mac_special_bell, align 8
  br label %12

11:                                               ; preds = %0
  store i32* null, i32** @mac_special_bell, align 8
  br label %12

12:                                               ; preds = %11, %10, %8, %6, %5
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i32, i32* %1, align 4
  %15 = icmp slt i32 %14, 1024
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load i32, i32* %1, align 4
  %18 = sdiv i32 %17, 4
  %19 = load i32*, i32** @mac_asc_wave_tab, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* %1, align 4
  %24 = sdiv i32 %23, 4
  %25 = sub nsw i32 255, %24
  %26 = load i32*, i32** @mac_asc_wave_tab, align 8
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1024
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32 %25, i32* %30, align 4
  br label %31

31:                                               ; preds = %16
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %13

34:                                               ; preds = %13
  store i32 1, i32* @mac_asc_inited, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
