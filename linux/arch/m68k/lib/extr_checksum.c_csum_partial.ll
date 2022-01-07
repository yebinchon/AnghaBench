; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/lib/extr_checksum.c_csum_partial.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/lib/extr_checksum.c_csum_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csum_partial(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call { i32, i32, i8*, i64, i64 } asm "movel $2,$3\0A\09btst #1,$3\0A\09jeq 2f\0A\09subql #2,$1\0A\09jgt 1f\0A\09addql #2,$1\0A\09jra 4f\0A1:\09addw $2@+,$0\0A\09clrl $3\0A\09addxl $3,$0\0A2:\09movel $1,$3\0A\09lsrl #5,$1\0A\09jeq 2f\0A\09subql #1,$1\0A1:\09movel $2@+,$4\0A\09addxl $4,$0\0A\09movel $2@+,$4\0A\09addxl $4,$0\0A\09movel $2@+,$4\0A\09addxl $4,$0\0A\09movel $2@+,$4\0A\09addxl $4,$0\0A\09movel $2@+,$4\0A\09addxl $4,$0\0A\09movel $2@+,$4\0A\09addxl $4,$0\0A\09movel $2@+,$4\0A\09addxl $4,$0\0A\09movel $2@+,$4\0A\09addxl $4,$0\0A\09dbra $1,1b\0A\09clrl $4\0A\09addxl $4,$0\0A\09clrw $1\0A\09subql #1,$1\0A\09jcc 1b\0A2:\09movel $3,$1\0A\09andw #0x1c,$3\0A\09jeq 4f\0A\09lsrw #2,$3\0A\09subqw #1,$3\0A3:\09movel $2@+,$4\0A\09addxl $4,$0\0A\09dbra $3,3b\0A\09clrl $4\0A\09addxl $4,$0\0A4:\09andw #3,$1\0A\09jeq 7f\0A\09clrl $4\0A\09subqw #2,$1\0A\09jlt 5f\0A\09movew $2@+,$4\0A\09swap $4\0A\09tstw $1\0A\09jeq 6f\0A5:\09moveb $2@,$4\0A\09lslw #8,$4\0A\096:\09addl $4,$0\0A\09clrl $4\0A\09addxl $4,$0\0A7:\09", "={dx},={dx},={ax},=&{dx},=&{dx},0,1,2,~{dirflag},~{fpsr},~{flags}"(i32 %9, i32 %10, i8* %11) #1, !srcloc !2
  %13 = extractvalue { i32, i32, i8*, i64, i64 } %12, 0
  %14 = extractvalue { i32, i32, i8*, i64, i64 } %12, 1
  %15 = extractvalue { i32, i32, i8*, i64, i64 } %12, 2
  %16 = extractvalue { i32, i32, i8*, i64, i64 } %12, 3
  %17 = extractvalue { i32, i32, i8*, i64, i64 } %12, 4
  store i32 %13, i32* %6, align 4
  store i32 %14, i32* %5, align 4
  store i8* %15, i8** %4, align 8
  store i64 %16, i64* %7, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* %6, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 264, i32 278, i32 297, i32 312, i32 332, i32 347, i32 367, i32 391, i32 414, i32 430, i32 459, i32 482, i32 501, i32 516, i32 545, i32 569, i32 589, i32 611, i32 631, i32 653, i32 673, i32 695, i32 715, i32 737, i32 757, i32 779, i32 799, i32 821, i32 841, i32 863, i32 883, i32 902, i32 918, i32 938, i32 954, i32 974, i32 998, i32 1020, i32 1042, i32 1057, i32 1076, i32 1105, i32 1130, i32 1150, i32 1169, i32 1185, i32 1214, i32 1236, i32 1251, i32 1267, i32 1287, i32 1302, i32 1324, i32 1340, i32 1356, i32 1380, i32 1403, i32 1422, i32 1454, i32 1470, i32 1499}
