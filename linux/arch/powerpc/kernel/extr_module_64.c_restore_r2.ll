; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_module_64.c_restore_r2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_module_64.c_restore_r2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }

@PPC_INST_NOP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"%s: Expected nop after call, got %08x at %pS\0A\00", align 1
@PPC_INST_LD_TOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, %struct.module*)* @restore_r2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restore_r2(i8* %0, i64* %1, %struct.module* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca i64*, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.module* %2, %struct.module** %7, align 8
  %9 = load i64*, i64** %6, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 -1
  store i64* %10, i64** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i64*, i64** %8, align 8
  %13 = call i64 @is_mprofile_mcount_callsite(i8* %11, i64* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %38

16:                                               ; preds = %3
  %17 = load i64*, i64** %8, align 8
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @instr_is_relative_link_branch(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %38

22:                                               ; preds = %16
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PPC_INST_NOP, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.module*, %struct.module** %7, align 8
  %29 = getelementptr inbounds %struct.module, %struct.module* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %32, i64* %33)
  store i32 0, i32* %4, align 4
  br label %38

35:                                               ; preds = %22
  %36 = load i64, i64* @PPC_INST_LD_TOC, align 8
  %37 = load i64*, i64** %6, align 8
  store i64 %36, i64* %37, align 8
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %27, %21, %15
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @is_mprofile_mcount_callsite(i8*, i64*) #1

declare dso_local i32 @instr_is_relative_link_branch(i64) #1

declare dso_local i32 @pr_err(i8*, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
