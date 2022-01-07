; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/atari/extr_atakeyb.c_ikbd_mouse_abs_pos.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/atari/extr_atakeyb.c_ikbd_mouse_abs_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ikbd_mouse_abs_pos(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [5 x i8], align 1
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  store i8 9, i8* %6, align 1
  %7 = getelementptr inbounds i8, i8* %6, i64 1
  %8 = load i32, i32* %3, align 4
  %9 = ashr i32 %8, 8
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds i8, i8* %7, i64 1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 255
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %11, align 1
  %15 = getelementptr inbounds i8, i8* %11, i64 1
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 8
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %15, align 1
  %19 = getelementptr inbounds i8, i8* %15, i64 1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %19, align 1
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %24 = call i32 @ikbd_write(i8* %23, i32 5)
  ret void
}

declare dso_local i32 @ikbd_write(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
