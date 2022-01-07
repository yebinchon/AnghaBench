; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_birthday.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_birthday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_birthday = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@q_byear = common dso_local global i32 0, align 4
@q_bmonth = common dso_local global i32 0, align 4
@q_bday = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lev_birthday*)* @set_birthday to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_birthday(%struct.lev_birthday* %0) #0 {
  %2 = alloca %struct.lev_birthday*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.lev_birthday* %0, %struct.lev_birthday** %2, align 8
  %4 = load %struct.lev_birthday*, %struct.lev_birthday** %2, align 8
  %5 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.TYPE_3__* @get_user(i32 %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %97

11:                                               ; preds = %1
  %12 = load %struct.lev_birthday*, %struct.lev_birthday** %2, align 8
  %13 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.lev_birthday*, %struct.lev_birthday** %2, align 8
  %18 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 1900
  br i1 %20, label %21, label %43

21:                                               ; preds = %16
  %22 = load %struct.lev_birthday*, %struct.lev_birthday** %2, align 8
  %23 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %24, 2017
  br i1 %25, label %26, label %43

26:                                               ; preds = %21, %11
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @q_byear, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lev_birthday*, %struct.lev_birthday** %2, align 8
  %35 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @user_change_field(i32 %29, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.lev_birthday*, %struct.lev_birthday** %2, align 8
  %39 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %26, %21, %16
  %44 = load %struct.lev_birthday*, %struct.lev_birthday** %2, align 8
  %45 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %43
  %49 = load %struct.lev_birthday*, %struct.lev_birthday** %2, align 8
  %50 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sle i32 %51, 12
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @q_bmonth, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.lev_birthday*, %struct.lev_birthday** %2, align 8
  %62 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @user_change_field(i32 %56, i32 %57, i32 %60, i32 %63)
  %65 = load %struct.lev_birthday*, %struct.lev_birthday** %2, align 8
  %66 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %53, %48, %43
  %71 = load %struct.lev_birthday*, %struct.lev_birthday** %2, align 8
  %72 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %70
  %76 = load %struct.lev_birthday*, %struct.lev_birthday** %2, align 8
  %77 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp sle i32 %78, 31
  br i1 %79, label %80, label %97

80:                                               ; preds = %75
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @q_bday, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.lev_birthday*, %struct.lev_birthday** %2, align 8
  %89 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @user_change_field(i32 %83, i32 %84, i32 %87, i32 %90)
  %92 = load %struct.lev_birthday*, %struct.lev_birthday** %2, align 8
  %93 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %10, %80, %75, %70
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
