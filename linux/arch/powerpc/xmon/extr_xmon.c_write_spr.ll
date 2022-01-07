; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_write_spr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_write_spr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xmon_is_ro = common dso_local global i64 0, align 8
@xmon_ro_msg = common dso_local global i8* null, align 8
@bus_error_jmp = common dso_local global i32 0, align 4
@catch_spr_faults = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"SPR 0x%03x (%4d) Faulted during write\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @write_spr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_spr(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* @xmon_is_ro, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i8*, i8** @xmon_ro_msg, align 8
  %9 = call i32 (i8*, ...) @printf(i8* %8)
  br label %25

10:                                               ; preds = %2
  %11 = load i32, i32* @bus_error_jmp, align 4
  %12 = call i64 @setjmp(i32 %11) #3
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  store i32 1, i32* @catch_spr_faults, align 4
  %15 = call i32 (...) @sync()
  %16 = load i32, i32* %3, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @xmon_mtspr(i32 %16, i64 %17)
  %19 = call i32 (...) @sync()
  br label %24

20:                                               ; preds = %10
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %14
  store i32 0, i32* @catch_spr_faults, align 4
  br label %25

25:                                               ; preds = %24, %7
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @sync(...) #1

declare dso_local i32 @xmon_mtspr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
