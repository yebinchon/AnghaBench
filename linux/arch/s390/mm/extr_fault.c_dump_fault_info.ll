; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_fault.c_dump_fault_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_fault.c_dump_fault_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.pt_regs = type { i32 }
%struct.gmap = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"Failing address: %016lx TEID: %016lx\0A\00", align 1
@__FAIL_ADDR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Fault in \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"home space \00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"secondary space \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"access register \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"primary space \00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"mode while using \00", align 1
@S390_lowcore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"user \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"vdso \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"gmap \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"kernel \00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"ASCE.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @dump_fault_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_fault_info(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %4 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %5 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @__FAIL_ADDR_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11)
  %13 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 3
  switch i32 %17, label %26 [
    i32 3, label %18
    i32 2, label %20
    i32 1, label %22
    i32 0, label %24
  ]

18:                                               ; preds = %1
  %19 = call i32 @pr_cont(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %26

20:                                               ; preds = %1
  %21 = call i32 @pr_cont(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %26

22:                                               ; preds = %1
  %23 = call i32 @pr_cont(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %26

24:                                               ; preds = %1
  %25 = call i32 @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %26

26:                                               ; preds = %1, %24, %22, %20, %18
  %27 = call i32 @pr_cont(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %28 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %29 = call i32 @get_fault_type(%struct.pt_regs* %28)
  switch i32 %29, label %45 [
    i32 129, label %30
    i32 128, label %33
    i32 131, label %36
    i32 130, label %42
  ]

30:                                               ; preds = %26
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  store i64 %31, i64* %3, align 8
  %32 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %47

33:                                               ; preds = %26
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 1), align 8
  store i64 %34, i64* %3, align 8
  %35 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %47

36:                                               ; preds = %26
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 3), align 8
  %38 = inttoptr i64 %37 to %struct.gmap*
  %39 = getelementptr inbounds %struct.gmap, %struct.gmap* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %3, align 8
  %41 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %47

42:                                               ; preds = %26
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 2), align 8
  store i64 %43, i64* %3, align 8
  %44 = call i32 @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %47

45:                                               ; preds = %26
  %46 = call i32 (...) @unreachable()
  br label %47

47:                                               ; preds = %45, %42, %36, %33, %30
  %48 = call i32 @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %49 = load i64, i64* %3, align 8
  %50 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @__FAIL_ADDR_MASK, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @dump_pagetable(i64 %49, i32 %54)
  ret void
}

declare dso_local i32 @pr_alert(i8*, ...) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @get_fault_type(%struct.pt_regs*) #1

declare dso_local i32 @unreachable(...) #1

declare dso_local i32 @dump_pagetable(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
