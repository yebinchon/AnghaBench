; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_video-vga.c_vga_set_14font.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_video-vga.c_vga_set_14font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.biosregs = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vga_set_14font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_set_14font() #0 {
  %1 = alloca %struct.biosregs, align 4
  %2 = call i32 @initregs(%struct.biosregs* %1)
  %3 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %1, i32 0, i32 0
  store i32 4369, i32* %3, align 4
  %4 = call i32 @intcall(i32 16, %struct.biosregs* %1, i32* null)
  %5 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %1, i32 0, i32 0
  store i32 4609, i32* %5, align 4
  %6 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %1, i32 0, i32 1
  store i32 52, i32* %6, align 4
  %7 = call i32 @intcall(i32 16, %struct.biosregs* %1, i32* null)
  %8 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %1, i32 0, i32 0
  store i32 256, i32* %8, align 4
  %9 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %1, i32 0, i32 2
  store i32 2828, i32* %9, align 4
  %10 = call i32 @intcall(i32 16, %struct.biosregs* %1, i32* null)
  ret void
}

declare dso_local i32 @initregs(%struct.biosregs*) #1

declare dso_local i32 @intcall(i32, %struct.biosregs*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
