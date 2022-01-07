; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4000_cs.c_io_read_num_rec_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4000_cs.c_io_read_num_rec_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32, i16*)* @io_read_num_rec_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @io_read_num_rec_bytes(i32 %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i16* %1, i16** %4, align 8
  %6 = load i16*, i16** %4, align 8
  store i16 0, i16* %6, align 2
  store i16 0, i16* %5, align 2
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i16, i16* %5, align 2
  %9 = load i16*, i16** %4, align 8
  store i16 %8, i16* %9, align 2
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @REG_NUM_BYTES(i32 %10)
  %12 = call i32 @inb(i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @REG_FLAGS0(i32 %13)
  %15 = call i32 @inb(i32 %14)
  %16 = and i32 %15, 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 256, i32 0
  %20 = or i32 %12, %19
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %5, align 2
  br label %22

22:                                               ; preds = %7
  %23 = load i16, i16* %5, align 2
  %24 = zext i16 %23 to i32
  %25 = load i16*, i16** %4, align 8
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %7, label %29

29:                                               ; preds = %22
  %30 = load i16*, i16** %4, align 8
  %31 = load i16, i16* %30, align 2
  ret i16 %31
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @REG_NUM_BYTES(i32) #1

declare dso_local i32 @REG_FLAGS0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
