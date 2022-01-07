; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_kgdb_arch_handle_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_kgdb_arch_handle_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i32 }

@X86_EFLAGS_TF = common dso_local global i32 0, align 4
@kgdb_cpu_doing_single_step = common dso_local global i32 0, align 4

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
  %16 = load i8*, i8** %11, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %52 [
    i32 99, label %20
    i32 115, label %20
    i32 68, label %30
    i32 107, label %30
  ]

20:                                               ; preds = %6, %6
  %21 = load i8*, i8** %11, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %22, i8** %15, align 8
  %23 = call i32 @kgdb_hex2long(i8** %15, i64* %14)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i64, i64* %14, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %20
  br label %30

30:                                               ; preds = %6, %6, %29
  %31 = load i32, i32* @X86_EFLAGS_TF, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = call i32 @atomic_set(i32* @kgdb_cpu_doing_single_step, i32 -1)
  %38 = load i8*, i8** %11, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 115
  br i1 %42, label %43, label %51

43:                                               ; preds = %30
  %44 = load i32, i32* @X86_EFLAGS_TF, align 4
  %45 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = call i32 (...) @raw_smp_processor_id()
  %50 = call i32 @atomic_set(i32* @kgdb_cpu_doing_single_step, i32 %49)
  br label %51

51:                                               ; preds = %43, %30
  store i32 0, i32* %7, align 4
  br label %53

52:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @kgdb_hex2long(i8**, i64*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
