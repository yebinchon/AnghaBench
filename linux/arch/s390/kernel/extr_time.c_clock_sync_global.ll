; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_time.c_clock_sync_global.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_time.c_clock_sync_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.ptff_qto = type { i32 }

@tod_clock_base = common dso_local global i32* null, align 8
@vdso_data = common dso_local global %struct.TYPE_2__* null, align 8
@tod_steering_end = common dso_local global i64 0, align 8
@tod_steering_delta = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"TOD clock sync offset %lli is too large to drift\0A\00", align 1
@PTFF_QTO = common dso_local global i32 0, align 4
@lpar_offset = common dso_local global i32 0, align 4
@s390_epoch_delta_notifier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @clock_sync_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clock_sync_global(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ptff_qto, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i32*, i32** @tod_clock_base, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = bitcast i32* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %10, %6
  store i64 %11, i64* %9, align 8
  %12 = load i32*, i32** @tod_clock_base, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = bitcast i32* %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %2, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32*, i32** @tod_clock_base, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vdso_data, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = call i64 (...) @get_tod_clock()
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* @tod_steering_end, align 8
  %30 = load i64, i64* %3, align 8
  %31 = sub i64 %29, %30
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp sge i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %23
  %38 = load i64, i64* @tod_steering_delta, align 8
  %39 = icmp ult i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* %4, align 8
  %42 = lshr i64 %41, 15
  %43 = sub i64 0, %42
  br label %47

44:                                               ; preds = %37
  %45 = load i64, i64* %4, align 8
  %46 = lshr i64 %45, 15
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i64 [ %43, %40 ], [ %46, %44 ]
  store i64 %48, i64* @tod_steering_delta, align 8
  br label %49

49:                                               ; preds = %47, %23
  %50 = load i64, i64* %2, align 8
  %51 = load i64, i64* @tod_steering_delta, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* @tod_steering_delta, align 8
  %53 = load i64, i64* @tod_steering_delta, align 8
  %54 = call i32 @abs(i64 %53)
  %55 = ashr i32 %54, 48
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i64, i64* @tod_steering_delta, align 8
  %59 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %58)
  br label %60

60:                                               ; preds = %57, %49
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @tod_steering_delta, align 8
  %63 = call i32 @abs(i64 %62)
  %64 = shl i32 %63, 15
  %65 = sext i32 %64 to i64
  %66 = add i64 %61, %65
  store i64 %66, i64* @tod_steering_end, align 8
  %67 = load i64, i64* @tod_steering_delta, align 8
  %68 = icmp ult i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vdso_data, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i64, i64* @tod_steering_end, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vdso_data, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vdso_data, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* @PTFF_QTO, align 4
  %81 = call i64 @ptff_query(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %60
  %84 = load i32, i32* @PTFF_QTO, align 4
  %85 = call i64 @ptff(%struct.ptff_qto* %5, i32 4, i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.ptff_qto, %struct.ptff_qto* %5, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* @lpar_offset, align 4
  br label %90

90:                                               ; preds = %87, %83, %60
  %91 = call i32 @atomic_notifier_call_chain(i32* @s390_epoch_delta_notifier, i32 0, i64* %2)
  ret void
}

declare dso_local i64 @get_tod_clock(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i64 @ptff_query(i32) #1

declare dso_local i64 @ptff(%struct.ptff_qto*, i32, i32) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
