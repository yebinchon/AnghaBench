; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sibyte/common/extr_bus_watcher.c_print_summary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sibyte/common/extr_bus_watcher.c_print_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"Bus watcher error counters: %08x %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\0ALast recorded signature:\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Request %02x from %d, answered by %d with Dcode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @print_summary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_summary(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  %10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @G_SCD_BERR_TID(i32 %11)
  %13 = and i32 %12, 63
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @G_SCD_BERR_TID(i32 %14)
  %16 = ashr i32 %15, 6
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @G_SCD_BERR_RID(i32 %17)
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @G_SCD_BERR_DCODE(i32 %20)
  %22 = trunc i64 %21 to i32
  %23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %22)
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @G_SCD_BERR_TID(i32) #1

declare dso_local i64 @G_SCD_BERR_RID(i32) #1

declare dso_local i64 @G_SCD_BERR_DCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
