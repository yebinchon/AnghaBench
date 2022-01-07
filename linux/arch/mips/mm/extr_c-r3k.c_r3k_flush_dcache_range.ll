; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r3k.c_r3k_flush_dcache_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r3k.c_r3k_flush_dcache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dcache_size = common dso_local global i64 0, align 8
@KSEG0 = common dso_local global i64 0, align 8
@ST0_ISC = common dso_local global i64 0, align 8
@ST0_IEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @r3k_flush_dcache_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r3k_flush_dcache_range(i64 %0, i64 %1) #0 {
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
  %13 = load i64, i64* @dcache_size, align 8
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
  %22 = load i64, i64* @dcache_size, align 8
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i64, i64* %3, align 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %8, align 8
  %26 = call i64 (...) @read_c0_status()
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* @ST0_ISC, align 8
  %28 = load i64, i64* %7, align 8
  %29 = or i64 %27, %28
  %30 = load i64, i64* @ST0_IEC, align 8
  %31 = xor i64 %30, -1
  %32 = and i64 %29, %31
  %33 = call i32 @write_c0_status(i64 %32)
  store i64 0, i64* %6, align 8
  br label %34

34:                                               ; preds = %42, %23
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  call void asm sideeffect "sb\09$$0, 0x000($0)\0A\09sb\09$$0, 0x004($0)\0A\09sb\09$$0, 0x008($0)\0A\09sb\09$$0, 0x00c($0)\0A\09sb\09$$0, 0x010($0)\0A\09sb\09$$0, 0x014($0)\0A\09sb\09$$0, 0x018($0)\0A\09sb\09$$0, 0x01c($0)\0A\09sb\09$$0, 0x020($0)\0A\09sb\09$$0, 0x024($0)\0A\09sb\09$$0, 0x028($0)\0A\09sb\09$$0, 0x02c($0)\0A\09sb\09$$0, 0x030($0)\0A\09sb\09$$0, 0x034($0)\0A\09sb\09$$0, 0x038($0)\0A\09sb\09$$0, 0x03c($0)\0A\09sb\09$$0, 0x040($0)\0A\09sb\09$$0, 0x044($0)\0A\09sb\09$$0, 0x048($0)\0A\09sb\09$$0, 0x04c($0)\0A\09sb\09$$0, 0x050($0)\0A\09sb\09$$0, 0x054($0)\0A\09sb\09$$0, 0x058($0)\0A\09sb\09$$0, 0x05c($0)\0A\09sb\09$$0, 0x060($0)\0A\09sb\09$$0, 0x064($0)\0A\09sb\09$$0, 0x068($0)\0A\09sb\09$$0, 0x06c($0)\0A\09sb\09$$0, 0x070($0)\0A\09sb\09$$0, 0x074($0)\0A\09sb\09$$0, 0x078($0)\0A\09sb\09$$0, 0x07c($0)\0A\09", "r,~{dirflag},~{fpsr},~{flags}"(i8* %39) #2, !srcloc !2
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 128
  store i8* %41, i8** %8, align 8
  br label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 128
  store i64 %44, i64* %6, align 8
  br label %34

45:                                               ; preds = %34
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @write_c0_status(i64 %46)
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
!2 = !{i32 762, i32 782, i32 809, i32 836, i32 863, i32 890, i32 917, i32 944, i32 971, i32 998, i32 1025, i32 1052, i32 1079, i32 1106, i32 1133, i32 1160, i32 1187, i32 1214, i32 1241, i32 1268, i32 1295, i32 1322, i32 1349, i32 1376, i32 1403, i32 1430, i32 1457, i32 1484, i32 1511, i32 1538, i32 1565, i32 1592, i32 1619}
