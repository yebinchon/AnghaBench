; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_kgdb.c_kgdb_arch_handle_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_kgdb.c_kgdb_arch_handle_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@kgdb_cpu_doing_single_step = common dso_local global i32 0, align 4
@kgdb_single_step = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgdb_arch_handle_exception(i32 %0, i32 %1, i32 %2, i8* %3, i8* %4, %struct.pt_regs* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pt_regs*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.pt_regs* %5, %struct.pt_regs** %12, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %40 [
    i32 68, label %18
    i32 107, label %18
    i32 99, label %18
    i32 115, label %28
  ]

18:                                               ; preds = %6, %6, %6
  %19 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @kgdb_arch_update_addr(%struct.pt_regs* %19, i8* %20)
  %22 = call i32 @atomic_set(i32* @kgdb_cpu_doing_single_step, i32 -1)
  store i32 0, i32* @kgdb_single_step, align 4
  %23 = call i32 (...) @kernel_active_single_step()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 (...) @kernel_disable_single_step()
  br label %27

27:                                               ; preds = %25, %18
  store i32 0, i32* %13, align 4
  br label %41

28:                                               ; preds = %6
  %29 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @kgdb_arch_update_addr(%struct.pt_regs* %29, i8* %30)
  %32 = call i32 (...) @raw_smp_processor_id()
  %33 = call i32 @atomic_set(i32* @kgdb_cpu_doing_single_step, i32 %32)
  store i32 1, i32* @kgdb_single_step, align 4
  %34 = call i32 (...) @kernel_active_single_step()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %38 = call i32 @kernel_enable_single_step(%struct.pt_regs* %37)
  br label %39

39:                                               ; preds = %36, %28
  store i32 0, i32* %13, align 4
  br label %41

40:                                               ; preds = %6
  store i32 -1, i32* %13, align 4
  br label %41

41:                                               ; preds = %40, %39, %27
  %42 = load i32, i32* %13, align 4
  ret i32 %42
}

declare dso_local i32 @kgdb_arch_update_addr(%struct.pt_regs*, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kernel_active_single_step(...) #1

declare dso_local i32 @kernel_disable_single_step(...) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @kernel_enable_single_step(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
