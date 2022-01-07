; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/mm/extr_cachev1.c_cache_op_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/mm/extr_cachev1.c_cache_op_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"cr17\00", align 1
@CACHE_CLR = common dso_local global i32 0, align 4
@CCR2_L2E = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"cr24\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @cache_op_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_op_all(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @CACHE_CLR, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @mtcr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i32 (...) @mb()
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = call i32 (...) @mfcr_ccr2()
  %14 = load i32, i32* @CCR2_L2E, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @CACHE_CLR, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @mtcr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = call i32 (...) @mb()
  br label %23

23:                                               ; preds = %17, %12, %2
  ret void
}

declare dso_local i32 @mtcr(i8*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @mfcr_ccr2(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
