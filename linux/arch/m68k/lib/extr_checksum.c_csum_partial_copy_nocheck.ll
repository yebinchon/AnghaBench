; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/lib/extr_checksum.c_csum_partial_copy_nocheck.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/lib/extr_checksum.c_csum_partial_copy_nocheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csum_partial_copy_nocheck(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call { i32, i32, i8*, i8*, i64, i64 } asm "movel $2,$4\0A\09btst #1,$4\0A\09jeq 2f\0A\09subql #2,$1\0A\09jgt 1f\0A\09addql #2,$1\0A\09jra 4f\0A1:\09movew $2@+,$4\0A\09addw $4,$0\0A\09movew $4,$3@+\0A\09clrl $4\0A\09addxl $4,$0\0A2:\09movel $1,$4\0A\09lsrl #5,$1\0A\09jeq 2f\0A\09subql #1,$1\0A1:\09movel $2@+,$5\0A\09addxl $5,$0\0A\09movel $5,$3@+\0A\09movel $2@+,$5\0A\09addxl $5,$0\0A\09movel $5,$3@+\0A\09movel $2@+,$5\0A\09addxl $5,$0\0A\09movel $5,$3@+\0A\09movel $2@+,$5\0A\09addxl $5,$0\0A\09movel $5,$3@+\0A\09movel $2@+,$5\0A\09addxl $5,$0\0A\09movel $5,$3@+\0A\09movel $2@+,$5\0A\09addxl $5,$0\0A\09movel $5,$3@+\0A\09movel $2@+,$5\0A\09addxl $5,$0\0A\09movel $5,$3@+\0A\09movel $2@+,$5\0A\09addxl $5,$0\0A\09movel $5,$3@+\0A\09dbra $1,1b\0A\09clrl $5\0A\09addxl $5,$0\0A\09clrw $1\0A\09subql #1,$1\0A\09jcc 1b\0A2:\09movel $4,$1\0A\09andw #0x1c,$4\0A\09jeq 4f\0A\09lsrw #2,$4\0A\09subqw #1,$4\0A3:\09movel $2@+,$5\0A\09addxl $5,$0\0A\09movel $5,$3@+\0A\09dbra $4,3b\0A\09clrl $5\0A\09addxl $5,$0\0A4:\09andw #3,$1\0A\09jeq 7f\0A\09clrl $5\0A\09subqw #2,$1\0A\09jlt 5f\0A\09movew $2@+,$5\0A\09movew $5,$3@+\0A\09swap $5\0A\09tstw $1\0A\09jeq 6f\0A5:\09moveb $2@,$5\0A\09moveb $5,$3@+\0A\09lslw #8,$5\0A6:\09addl $5,$0\0A\09clrl $5\0A\09addxl $5,$0\0A7:\09", "={dx},={dx},={ax},={ax},=&{dx},=&{dx},0,1,2,3,~{dirflag},~{fpsr},~{flags}"(i32 %11, i32 %12, i8* %13, i8* %14) #1, !srcloc !2
  %16 = extractvalue { i32, i32, i8*, i8*, i64, i64 } %15, 0
  %17 = extractvalue { i32, i32, i8*, i8*, i64, i64 } %15, 1
  %18 = extractvalue { i32, i32, i8*, i8*, i64, i64 } %15, 2
  %19 = extractvalue { i32, i32, i8*, i8*, i64, i64 } %15, 3
  %20 = extractvalue { i32, i32, i8*, i8*, i64, i64 } %15, 4
  %21 = extractvalue { i32, i32, i8*, i8*, i64, i64 } %15, 5
  store i32 %16, i32* %8, align 4
  store i32 %17, i32* %7, align 4
  store i8* %18, i8** %5, align 8
  store i8* %19, i8** %6, align 8
  store i64 %20, i64* %9, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i32, i32* %8, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 283, i32 297, i32 316, i32 331, i32 351, i32 366, i32 386, i32 410, i32 434, i32 453, i32 475, i32 491, i32 520, i32 543, i32 562, i32 577, i32 606, i32 630, i32 650, i32 672, i32 694, i32 714, i32 736, i32 758, i32 778, i32 800, i32 822, i32 842, i32 864, i32 886, i32 906, i32 928, i32 950, i32 970, i32 992, i32 1014, i32 1034, i32 1056, i32 1078, i32 1098, i32 1120, i32 1139, i32 1155, i32 1175, i32 1191, i32 1211, i32 1235, i32 1257, i32 1279, i32 1294, i32 1313, i32 1342, i32 1367, i32 1387, i32 1409, i32 1428, i32 1444, i32 1473, i32 1495, i32 1510, i32 1526, i32 1546, i32 1561, i32 1583, i32 1605, i32 1621, i32 1637, i32 1661, i32 1684, i32 1706, i32 1734, i32 1755, i32 1771, i32 1800}
