; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pcic.c_pcic_read_config_dword.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pcic.c_pcic_read_config_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_pcic = type { i64, i32 }

@pcic0 = common dso_local global %struct.linux_pcic zeroinitializer, align 8
@pcic_speculative = common dso_local global i32 0, align 4
@pcic_trapped = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @pcic_read_config_dword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcic_read_config_dword(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.linux_pcic*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.linux_pcic* @pcic0, %struct.linux_pcic** %10, align 8
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @CONFIG_CMD(i32 %14, i32 %15, i32 %16)
  %18 = load %struct.linux_pcic*, %struct.linux_pcic** %10, align 8
  %19 = getelementptr inbounds %struct.linux_pcic, %struct.linux_pcic* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @writel(i32 %17, i32 %20)
  store i32 2, i32* @pcic_speculative, align 4
  store i64 0, i64* @pcic_trapped, align 8
  %22 = load %struct.linux_pcic*, %struct.linux_pcic** %10, align 8
  %23 = getelementptr inbounds %struct.linux_pcic, %struct.linux_pcic* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = call i32 @readl(i64 %28)
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %31 = call i32 (...) @nop()
  %32 = load i64, i64* @pcic_trapped, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  store i32 0, i32* @pcic_speculative, align 4
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @local_irq_restore(i64 %35)
  %37 = load i32*, i32** %9, align 8
  store i32 -1, i32* %37, align 4
  store i32 0, i32* %5, align 4
  br label %41

38:                                               ; preds = %4
  store i32 0, i32* @pcic_speculative, align 4
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @local_irq_restore(i64 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @CONFIG_CMD(i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @nop(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
