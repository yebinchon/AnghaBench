; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_read_spr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_read_spr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bus_error_jmp = common dso_local global i32 0, align 4
@catch_spr_faults = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*)* @read_spr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_spr(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  store i64 -1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @bus_error_jmp, align 4
  %8 = call i64 @setjmp(i32 %7) #3
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  store i32 1, i32* @catch_spr_faults, align 4
  %11 = call i32 (...) @sync()
  %12 = load i32, i32* %3, align 4
  %13 = load i64*, i64** %4, align 8
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @xmon_mfspr(i32 %12, i64 %14)
  store i64 %15, i64* %5, align 8
  %16 = call i32 (...) @sync()
  %17 = load i64, i64* %5, align 8
  %18 = load i64*, i64** %4, align 8
  store i64 %17, i64* %18, align 8
  store i32 1, i32* %6, align 4
  br label %19

19:                                               ; preds = %10, %2
  store i32 0, i32* @catch_spr_faults, align 4
  %20 = load i32, i32* %6, align 4
  ret i32 %20
}

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #1

declare dso_local i32 @sync(...) #2

declare dso_local i64 @xmon_mfspr(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
