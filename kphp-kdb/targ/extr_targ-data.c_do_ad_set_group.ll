; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_ad_set_group.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_ad_set_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32 }
%struct.lev_targ_ad_setint = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"in do_ad_set_group (%d, %d):\0A\00", align 1
@LEV_TARG_AD_SETGROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_ad_set_group(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.advert*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lev_targ_ad_setint*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ad_is_ancient(i32 %10)
  %12 = call %struct.advert* @get_ad_f(i32 %9, i32 %11)
  store %struct.advert* %12, %struct.advert** %6, align 8
  %13 = load i64, i64* @verbosity, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.advert*, %struct.advert** %6, align 8
  %22 = icmp ne %struct.advert* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, -2147483648
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20
  store i32 0, i32* %3, align 4
  br label %50

27:                                               ; preds = %23
  %28 = load %struct.advert*, %struct.advert** %6, align 8
  %29 = call i32 @load_ancient_ad(%struct.advert* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %50

34:                                               ; preds = %27
  %35 = load %struct.advert*, %struct.advert** %6, align 8
  %36 = getelementptr inbounds %struct.advert, %struct.advert* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %50

41:                                               ; preds = %34
  %42 = load i32, i32* @LEV_TARG_AD_SETGROUP, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call %struct.lev_targ_ad_setint* @alloc_log_event(i32 %42, i32 12, i32 %43)
  store %struct.lev_targ_ad_setint* %44, %struct.lev_targ_ad_setint** %8, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %8, align 8
  %47 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %8, align 8
  %49 = call i32 @ad_set_group(%struct.lev_targ_ad_setint* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %41, %40, %32, %26
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i32 @ad_is_ancient(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @load_ancient_ad(%struct.advert*) #1

declare dso_local %struct.lev_targ_ad_setint* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @ad_set_group(%struct.lev_targ_ad_setint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
