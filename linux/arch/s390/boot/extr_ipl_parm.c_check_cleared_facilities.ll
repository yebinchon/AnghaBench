; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_ipl_parm.c_check_cleared_facilities.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_ipl_parm.c_check_cleared_facilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@FACILITIES_ALS = common dso_local global i64 0, align 8
@S390_lowcore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [79 x i8] c"Warning: The Linux kernel requires facilities cleared via command line option\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_cleared_facilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_cleared_facilities() #0 {
  %1 = alloca [1 x i64], align 8
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds [1 x i64], [1 x i64]* %1, i64 0, i64 0
  %4 = load i64, i64* @FACILITIES_ALS, align 8
  store i64 %4, i64* %3, align 8
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %30, %0
  %6 = load i32, i32* %2, align 4
  %7 = getelementptr inbounds [1 x i64], [1 x i64]* %1, i64 0, i64 0
  %8 = call i32 @ARRAY_SIZE(i64* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %5
  %11 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [1 x i64], [1 x i64]* %1, i64 0, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %15, %19
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1 x i64], [1 x i64]* %1, i64 0, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %20, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %10
  %27 = call i32 @sclp_early_printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 (...) @print_missing_facilities()
  br label %33

29:                                               ; preds = %10
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %5

33:                                               ; preds = %26, %5
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @sclp_early_printk(i8*) #1

declare dso_local i32 @print_missing_facilities(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
