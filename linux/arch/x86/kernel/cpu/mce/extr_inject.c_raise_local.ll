; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_inject.c_raise_local.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_inject.c_raise_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce = type { i32, i32, i64, i64 }

@injectm = common dso_local global i32 0, align 4
@MCJ_EXCEPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Triggering MCE exception on CPU %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid MCE context\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"MCE exception done on CPU %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Starting machine check poll CPU %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Machine check poll done on CPU %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @raise_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raise_local() #0 {
  %1 = alloca %struct.mce*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call %struct.mce* @this_cpu_ptr(i32* @injectm)
  store %struct.mce* %5, %struct.mce** %1, align 8
  %6 = load %struct.mce*, %struct.mce** %1, align 8
  %7 = getelementptr inbounds %struct.mce, %struct.mce* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @MCJ_CTX(i32 %8)
  store i32 %9, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %10 = load %struct.mce*, %struct.mce** %1, align 8
  %11 = getelementptr inbounds %struct.mce, %struct.mce* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mce*, %struct.mce** %1, align 8
  %14 = getelementptr inbounds %struct.mce, %struct.mce* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MCJ_EXCEPTION, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %2, align 4
  switch i32 %22, label %26 [
    i32 129, label %23
    i32 128, label %23
  ]

23:                                               ; preds = %19, %19
  %24 = load %struct.mce*, %struct.mce** %1, align 8
  %25 = call i32 @raise_exception(%struct.mce* %24, i32* null)
  br label %30

26:                                               ; preds = %19
  %27 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %50

33:                                               ; preds = %0
  %34 = load %struct.mce*, %struct.mce** %1, align 8
  %35 = getelementptr inbounds %struct.mce, %struct.mce* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load %struct.mce*, %struct.mce** %1, align 8
  %42 = call i32 @raise_poll(%struct.mce* %41)
  %43 = call i32 (...) @mce_notify_irq()
  %44 = load i32, i32* %4, align 4
  %45 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  br label %49

46:                                               ; preds = %33
  %47 = load %struct.mce*, %struct.mce** %1, align 8
  %48 = getelementptr inbounds %struct.mce, %struct.mce* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %38
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.mce* @this_cpu_ptr(i32*) #1

declare dso_local i32 @MCJ_CTX(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @raise_exception(%struct.mce*, i32*) #1

declare dso_local i32 @raise_poll(%struct.mce*) #1

declare dso_local i32 @mce_notify_irq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
