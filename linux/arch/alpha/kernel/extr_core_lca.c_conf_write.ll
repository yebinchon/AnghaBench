; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_lca.c_conf_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_lca.c_conf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCA_IOC_STAT0 = common dso_local global i64 0, align 8
@LCA_IOC_STAT0_ERR = common dso_local global i64 0, align 8
@LCA_IOC_STAT0_CODE_SHIFT = common dso_local global i64 0, align 8
@LCA_IOC_STAT0_CODE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"lca.c:conf_write: got stat0=%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @conf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conf_write(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load i64, i64* @LCA_IOC_STAT0, align 8
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @LCA_IOC_STAT0, align 8
  %15 = inttoptr i64 %14 to i64*
  store i64 %13, i64* %15, align 8
  %16 = call i32 (...) @mb()
  %17 = load i32, i32* %4, align 4
  %18 = load i64, i64* %3, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32 %17, i32* %19, align 4
  %20 = call i32 (...) @draina()
  %21 = load i64, i64* @LCA_IOC_STAT0, align 8
  %22 = inttoptr i64 %21 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @LCA_IOC_STAT0_ERR, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %2
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @LCA_IOC_STAT0_CODE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  %32 = load i64, i64* @LCA_IOC_STAT0_CODE_MASK, align 8
  %33 = and i64 %31, %32
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %36, %28
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @LCA_IOC_STAT0, align 8
  %42 = inttoptr i64 %41 to i64*
  store i64 %40, i64* %42, align 8
  %43 = call i32 (...) @mb()
  %44 = call i32 @wrmces(i32 7)
  br label %45

45:                                               ; preds = %39, %2
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @local_irq_restore(i64 %46)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @draina(...) #1

declare dso_local i32 @printk(i8*, i64) #1

declare dso_local i32 @wrmces(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
