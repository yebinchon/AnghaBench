; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/lemote-2f/extr_ec_kb3310b.c_ec_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/lemote-2f/extr_ec_kb3310b.c_ec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@index_access_lock = common dso_local global i32 0, align 4
@EC_IO_PORT_HIGH = common dso_local global i32 0, align 4
@EC_IO_PORT_LOW = common dso_local global i32 0, align 4
@EC_IO_PORT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ec_write(i16 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  store i16 %0, i16* %3, align 2
  store i8 %1, i8* %4, align 1
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @index_access_lock, i64 %6)
  %8 = load i16, i16* %3, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 65280
  %11 = ashr i32 %10, 8
  %12 = trunc i32 %11 to i8
  %13 = load i32, i32* @EC_IO_PORT_HIGH, align 4
  %14 = call i32 @outb(i8 zeroext %12, i32 %13)
  %15 = load i16, i16* %3, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i8
  %19 = load i32, i32* @EC_IO_PORT_LOW, align 4
  %20 = call i32 @outb(i8 zeroext %18, i32 %19)
  %21 = load i8, i8* %4, align 1
  %22 = load i32, i32* @EC_IO_PORT_DATA, align 4
  %23 = call i32 @outb(i8 zeroext %21, i32 %22)
  %24 = load i32, i32* @EC_IO_PORT_DATA, align 4
  %25 = call i32 @inb(i32 %24)
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* @index_access_lock, i64 %26)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
