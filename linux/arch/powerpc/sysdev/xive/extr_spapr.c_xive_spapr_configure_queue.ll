; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_xive_spapr_configure_queue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_xive_spapr_configure_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_q = type { i32, i64, i32*, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Error %lld getting queue info CPU %d prio %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@XIVE_EQ_ALWAYS_NOTIFY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Error %lld setting queue for CPU %d prio %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.xive_q*, i32, i32*, i32)* @xive_spapr_configure_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xive_spapr_configure_queue(i32 %0, %struct.xive_q* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xive_q*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.xive_q* %1, %struct.xive_q** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %5
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %89

29:                                               ; preds = %19
  %30 = load i32*, i32** %10, align 8
  %31 = call i64 @__pa(i32* %30)
  store i64 %31, i64* %16, align 8
  br label %33

32:                                               ; preds = %5
  store i64 0, i64* %16, align 8
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = sub nsw i32 %37, 2
  %39 = shl i32 1, %38
  %40 = sub i32 %39, 1
  br label %42

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %36
  %43 = phi i32 [ %40, %36 ], [ 0, %41 ]
  %44 = load %struct.xive_q*, %struct.xive_q** %8, align 8
  %45 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.xive_q*, %struct.xive_q** %8, align 8
  %47 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.xive_q*, %struct.xive_q** %8, align 8
  %49 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @plpar_int_get_queue_info(i32 0, i32 %50, i32 %51, i64* %13, i64* %14)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %42
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  br label %87

62:                                               ; preds = %42
  %63 = load i64, i64* %13, align 8
  %64 = load %struct.xive_q*, %struct.xive_q** %8, align 8
  %65 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* @XIVE_EQ_ALWAYS_NOTIFY, align 8
  store i64 %66, i64* %15, align 8
  %67 = load i64, i64* %15, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i64, i64* %16, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @plpar_int_set_queue_config(i64 %67, i32 %68, i32 %69, i64 %70, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %62
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %12, align 4
  br label %86

82:                                               ; preds = %62
  %83 = load i32*, i32** %10, align 8
  %84 = load %struct.xive_q*, %struct.xive_q** %8, align 8
  %85 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %84, i32 0, i32 2
  store i32* %83, i32** %85, align 8
  br label %86

86:                                               ; preds = %82, %75
  br label %87

87:                                               ; preds = %86, %55
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %26
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @__pa(i32*) #1

declare dso_local i32 @plpar_int_get_queue_info(i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @plpar_int_set_queue_config(i64, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
