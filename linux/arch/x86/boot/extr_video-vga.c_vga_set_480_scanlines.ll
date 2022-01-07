; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_video-vga.c_vga_set_480_scanlines.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_video-vga.c_vga_set_480_scanlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vga_set_480_scanlines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_set_480_scanlines() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @vga_crtc()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call i32 @out_idx(i32 12, i32 %4, i32 17)
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @out_idx(i32 11, i32 %6, i32 6)
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @out_idx(i32 62, i32 %8, i32 7)
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @out_idx(i32 234, i32 %10, i32 16)
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @out_idx(i32 223, i32 %12, i32 18)
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @out_idx(i32 231, i32 %14, i32 21)
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @out_idx(i32 4, i32 %16, i32 22)
  %18 = call i32 @inb(i32 972)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 13
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = or i32 %21, 226
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @outb(i32 %23, i32 962)
  ret void
}

declare dso_local i32 @vga_crtc(...) #1

declare dso_local i32 @out_idx(i32, i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
