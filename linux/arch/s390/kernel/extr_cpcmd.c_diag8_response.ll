; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_cpcmd.c_diag8_response.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_cpcmd.c_diag8_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpcmd_buf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*)* @diag8_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diag8_response(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @cpcmd_buf, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = ptrtoint i8* %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = or i64 %16, 1073741824
  store i64 %17, i64* %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call { i64, i64 } asm sideeffect "\09diag\09$2,$0,0x8\0A\09brc\098,1f\0A\09agr\09$1,$4\0A1:\0A", "={si},={di},{cx},{bx},{dx},0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %23, i64 %24, i32 %26, i64 %21, i64 %22) #1, !srcloc !2
  %28 = extractvalue { i64, i64 } %27, 0
  %29 = extractvalue { i64, i64 } %27, 1
  store i64 %28, i64* %9, align 8
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i64, i64* %9, align 8
  %34 = trunc i64 %33 to i32
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 529, i32 552, i32 568, i32 585}
