; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r3k.c_r3k_flush_icache_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r3k.c_r3k_flush_icache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@icache_size = common dso_local global i64 0, align 8
@KSEG0 = common dso_local global i64 0, align 8
@ST0_ISC = common dso_local global i64 0, align 8
@ST0_SWC = common dso_local global i64 0, align 8
@ST0_IEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @r3k_flush_icache_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r3k_flush_icache_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = sub i64 %9, %10
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @icache_size, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @KSEGX(i64 %16)
  %18 = load i64, i64* @KSEG0, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %2
  %21 = load i64, i64* @KSEG0, align 8
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* @icache_size, align 8
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i64, i64* %3, align 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %8, align 8
  %26 = call i64 (...) @read_c0_status()
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* @ST0_ISC, align 8
  %28 = load i64, i64* @ST0_SWC, align 8
  %29 = or i64 %27, %28
  %30 = load i64, i64* %7, align 8
  %31 = or i64 %29, %30
  %32 = load i64, i64* @ST0_IEC, align 8
  %33 = xor i64 %32, -1
  %34 = and i64 %31, %33
  %35 = call i32 @write_c0_status(i64 %34)
  store i64 0, i64* %6, align 8
  br label %36

36:                                               ; preds = %44, %23
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  call void asm sideeffect "sb\09$$0, 0x000($0)\0A\09sb\09$$0, 0x004($0)\0A\09sb\09$$0, 0x008($0)\0A\09sb\09$$0, 0x00c($0)\0A\09sb\09$$0, 0x010($0)\0A\09sb\09$$0, 0x014($0)\0A\09sb\09$$0, 0x018($0)\0A\09sb\09$$0, 0x01c($0)\0A\09sb\09$$0, 0x020($0)\0A\09sb\09$$0, 0x024($0)\0A\09sb\09$$0, 0x028($0)\0A\09sb\09$$0, 0x02c($0)\0A\09sb\09$$0, 0x030($0)\0A\09sb\09$$0, 0x034($0)\0A\09sb\09$$0, 0x038($0)\0A\09sb\09$$0, 0x03c($0)\0A\09sb\09$$0, 0x040($0)\0A\09sb\09$$0, 0x044($0)\0A\09sb\09$$0, 0x048($0)\0A\09sb\09$$0, 0x04c($0)\0A\09sb\09$$0, 0x050($0)\0A\09sb\09$$0, 0x054($0)\0A\09sb\09$$0, 0x058($0)\0A\09sb\09$$0, 0x05c($0)\0A\09sb\09$$0, 0x060($0)\0A\09sb\09$$0, 0x064($0)\0A\09sb\09$$0, 0x068($0)\0A\09sb\09$$0, 0x06c($0)\0A\09sb\09$$0, 0x070($0)\0A\09sb\09$$0, 0x074($0)\0A\09sb\09$$0, 0x078($0)\0A\09sb\09$$0, 0x07c($0)\0A\09", "r,~{dirflag},~{fpsr},~{flags}"(i8* %41) #2, !srcloc !2
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 128
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, 128
  store i64 %46, i64* %6, align 8
  br label %36

47:                                               ; preds = %36
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @write_c0_status(i64 %48)
  ret void
}

declare dso_local i64 @KSEGX(i64) #1

declare dso_local i64 @read_c0_status(...) #1

declare dso_local i32 @write_c0_status(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 795, i32 815, i32 842, i32 869, i32 896, i32 923, i32 950, i32 977, i32 1004, i32 1031, i32 1058, i32 1085, i32 1112, i32 1139, i32 1166, i32 1193, i32 1220, i32 1247, i32 1274, i32 1301, i32 1328, i32 1355, i32 1382, i32 1409, i32 1436, i32 1463, i32 1490, i32 1517, i32 1544, i32 1571, i32 1598, i32 1625, i32 1652}
