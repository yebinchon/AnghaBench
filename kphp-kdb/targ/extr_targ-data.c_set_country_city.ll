; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_country_city.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_country_city.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_univcity = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@q_country = common dso_local global i32 0, align 4
@q_city = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_country_city(%struct.lev_univcity* %0) #0 {
  %2 = alloca %struct.lev_univcity*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.lev_univcity* %0, %struct.lev_univcity** %2, align 8
  %4 = load %struct.lev_univcity*, %struct.lev_univcity** %2, align 8
  %5 = getelementptr inbounds %struct.lev_univcity, %struct.lev_univcity* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.TYPE_3__* @get_user(i32 %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %58

10:                                               ; preds = %1
  %11 = load %struct.lev_univcity*, %struct.lev_univcity** %2, align 8
  %12 = getelementptr inbounds %struct.lev_univcity, %struct.lev_univcity* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %10
  %16 = load %struct.lev_univcity*, %struct.lev_univcity** %2, align 8
  %17 = getelementptr inbounds %struct.lev_univcity, %struct.lev_univcity* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %18, 255
  br i1 %19, label %20, label %58

20:                                               ; preds = %15
  %21 = load %struct.lev_univcity*, %struct.lev_univcity** %2, align 8
  %22 = getelementptr inbounds %struct.lev_univcity, %struct.lev_univcity* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @q_country, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.lev_univcity*, %struct.lev_univcity** %2, align 8
  %34 = getelementptr inbounds %struct.lev_univcity, %struct.lev_univcity* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @user_change_field(i32 %28, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @q_city, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.lev_univcity*, %struct.lev_univcity** %2, align 8
  %45 = getelementptr inbounds %struct.lev_univcity, %struct.lev_univcity* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @user_change_field(i32 %39, i32 %40, i32 %43, i32 %46)
  %48 = load %struct.lev_univcity*, %struct.lev_univcity** %2, align 8
  %49 = getelementptr inbounds %struct.lev_univcity, %struct.lev_univcity* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.lev_univcity*, %struct.lev_univcity** %2, align 8
  %54 = getelementptr inbounds %struct.lev_univcity, %struct.lev_univcity* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %25, %20, %15, %10, %1
  ret void
}

declare dso_local %struct.TYPE_3__* @get_user(i32) #1

declare dso_local i32 @user_change_field(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
