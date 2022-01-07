; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_kgdb.c_kgdb_arch_handle_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_kgdb.c_kgdb_arch_handle_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64 }

@kgdb_cpu_doing_single_step = common dso_local global i32 0, align 4
@kgdb_single_step = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgdb_arch_handle_exception(i32 %0, i32 %1, i32 %2, i8* %3, i8* %4, %struct.pt_regs* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.pt_regs*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.pt_regs* %5, %struct.pt_regs** %13, align 8
  %16 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %17 = call i32 @undo_single_step(%struct.pt_regs* %16)
  %18 = load i8*, i8** %11, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %45 [
    i32 99, label %22
    i32 115, label %22
    i32 68, label %32
    i32 107, label %32
  ]

22:                                               ; preds = %6, %6
  %23 = load i8*, i8** %11, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %24, i8** %15, align 8
  %25 = call i32 @kgdb_hex2long(i8** %15, i64* %14)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i64, i64* %14, align 8
  %29 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %22
  br label %32

32:                                               ; preds = %6, %6, %31
  %33 = call i32 @atomic_set(i32* @kgdb_cpu_doing_single_step, i32 -1)
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 115
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %41 = call i32 @do_single_step(%struct.pt_regs* %40)
  store i32 1, i32* @kgdb_single_step, align 4
  %42 = call i32 (...) @raw_smp_processor_id()
  %43 = call i32 @atomic_set(i32* @kgdb_cpu_doing_single_step, i32 %42)
  br label %44

44:                                               ; preds = %39, %32
  store i32 0, i32* %7, align 4
  br label %46

45:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @undo_single_step(%struct.pt_regs*) #1

declare dso_local i32 @kgdb_hex2long(i8**, i64*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @do_single_step(%struct.pt_regs*) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
