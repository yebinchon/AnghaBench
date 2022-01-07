; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_extmem.c_dcss_diag.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_extmem.c_dcss_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIAG_STAT_X064 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64*, i64*)* @dcss_diag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcss_diag(i32* %0, i8* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = ptrtoint i8* %12 to i64
  store i64 %13, i64* %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %10, align 8
  %17 = load i32, i32* @DIAG_STAT_X064, align 4
  %18 = call i32 @diag_stat_inc(i32 %17)
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call { i64, i64, i32 } asm sideeffect "\09diag\09$0,$1,0x64\0A\09ipm\09$2\0A\09srl\09$2,28\0A", "={dx},={dx},={dx},0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %19, i64 %20) #2, !srcloc !2
  %22 = extractvalue { i64, i64, i32 } %21, 0
  %23 = extractvalue { i64, i64, i32 } %21, 1
  %24 = extractvalue { i64, i64, i32 } %21, 2
  store i64 %22, i64* %9, align 8
  store i64 %23, i64* %10, align 8
  store i32 %24, i32* %11, align 4
  %25 = load i64, i64* %9, align 8
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64*, i64** %8, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* %11, align 4
  ret i32 %29
}

declare dso_local i32 @diag_stat_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 462, i32 486, i32 500}
