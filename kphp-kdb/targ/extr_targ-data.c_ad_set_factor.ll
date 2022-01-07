; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_ad_set_factor.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_ad_set_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_targ_ad_setint = type { i32, i32 }
%struct.advert = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_targ_ad_setint*)* @ad_set_factor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_set_factor(%struct.lev_targ_ad_setint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_targ_ad_setint*, align 8
  %4 = alloca %struct.advert*, align 8
  store %struct.lev_targ_ad_setint* %0, %struct.lev_targ_ad_setint** %3, align 8
  %5 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %3, align 8
  %6 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %3, align 8
  %11 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sle i32 %12, 1000000
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i1 [ false, %1 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %3, align 8
  %19 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %3, align 8
  %22 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ad_is_ancient(i32 %23)
  %25 = call %struct.advert* @get_ad_f(i32 %20, i32 %24)
  store %struct.advert* %25, %struct.advert** %4, align 8
  %26 = load %struct.advert*, %struct.advert** %4, align 8
  %27 = icmp ne %struct.advert* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %43

29:                                               ; preds = %14
  %30 = load %struct.advert*, %struct.advert** %4, align 8
  %31 = call i64 @load_ancient_ad(%struct.advert* %30)
  %32 = icmp sge i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %3, align 8
  %36 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sitofp i32 %37 to double
  %39 = fmul double %38, 0x3EB0C6F7A0B5ED8D
  %40 = fptosi double %39 to i32
  %41 = load %struct.advert*, %struct.advert** %4, align 8
  %42 = getelementptr inbounds %struct.advert, %struct.advert* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %29, %28
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i32 @ad_is_ancient(i32) #1

declare dso_local i64 @load_ancient_ad(%struct.advert*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
