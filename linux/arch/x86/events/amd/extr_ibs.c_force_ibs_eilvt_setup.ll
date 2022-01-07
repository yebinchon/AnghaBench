; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_ibs.c_force_ibs_eilvt_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_ibs.c_force_ibs_eilvt_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APIC_EILVT_NR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"No EILVT entry available\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"LVT offset %d assigned\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @force_ibs_eilvt_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @force_ibs_eilvt_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @preempt_disable()
  store i32 1, i32* %1, align 4
  br label %4

4:                                                ; preds = %14, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @APIC_EILVT_NR_MAX, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @get_eilvt(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %17

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %13
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %4

17:                                               ; preds = %12, %4
  %18 = call i32 (...) @preempt_enable()
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @APIC_EILVT_NR_MAX, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %42

24:                                               ; preds = %17
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @setup_ibs_ctl(i32 %25)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %37

30:                                               ; preds = %24
  %31 = call i32 (...) @ibs_eilvt_valid()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %42

37:                                               ; preds = %33, %29
  %38 = call i32 (...) @preempt_disable()
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @put_eilvt(i32 %39)
  %41 = call i32 (...) @preempt_enable()
  br label %42

42:                                               ; preds = %37, %34, %22
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @get_eilvt(i32) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @setup_ibs_ctl(i32) #1

declare dso_local i32 @ibs_eilvt_valid(...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @put_eilvt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
