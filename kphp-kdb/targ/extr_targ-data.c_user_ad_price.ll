; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_user_ad_price.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_user_ad_price.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user = type { i32 }
%struct.TYPE_2__ = type { double }

@MAX_USERS = common dso_local global i32 0, align 4
@GSORT_HEAP_SIZE = common dso_local global i32 0, align 4
@User = common dso_local global %struct.user** null, align 8
@HN = common dso_local global i32 0, align 4
@H = common dso_local global %struct.TYPE_2__* null, align 8
@CTR_GAIN_PRICE_MULTIPLIER = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_ad_price(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.user*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MAX_USERS, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @GSORT_HEAP_SIZE, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %13, %9, %2
  store i32 0, i32* %3, align 4
  br label %52

21:                                               ; preds = %16
  %22 = load %struct.user**, %struct.user*** @User, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.user*, %struct.user** %22, i64 %24
  %26 = load %struct.user*, %struct.user** %25, align 8
  store %struct.user* %26, %struct.user** %6, align 8
  %27 = load %struct.user*, %struct.user** %6, align 8
  %28 = icmp ne %struct.user* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.user*, %struct.user** %6, align 8
  %31 = getelementptr inbounds %struct.user, %struct.user* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %21
  store i32 0, i32* %3, align 4
  br label %52

35:                                               ; preds = %29
  %36 = load %struct.user*, %struct.user** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @build_user_ad_heap(%struct.user* %36, i32 %37)
  %39 = load i32, i32* @HN, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %52

43:                                               ; preds = %35
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @H, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load double, double* %46, align 8
  %48 = load double, double* @CTR_GAIN_PRICE_MULTIPLIER, align 8
  %49 = fmul double %47, %48
  %50 = fadd double %49, 5.000000e-01
  %51 = fptosi double %50 to i32
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %43, %42, %34, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @build_user_ad_heap(%struct.user*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
