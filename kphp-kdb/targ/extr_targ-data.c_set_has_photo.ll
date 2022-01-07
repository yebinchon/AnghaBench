; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_has_photo.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_has_photo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@q_has_photo = common dso_local global i32 0, align 4
@q_uses_apps = common dso_local global i32 0, align 4
@q_pays_money = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_has_photo(%struct.lev_generic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_generic*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.lev_generic* %0, %struct.lev_generic** %3, align 8
  %6 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %7 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_3__* @get_user(i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

13:                                               ; preds = %1
  %14 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %15 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 255
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @q_has_photo, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 129
  %26 = icmp eq i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 129
  %30 = icmp eq i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = call i32 @user_change_field(i32 %20, i32 %21, i32 %27, i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @q_uses_apps, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 130
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 130
  %45 = icmp eq i32 %44, 2
  %46 = zext i1 %45 to i32
  %47 = call i32 @user_change_field(i32 %35, i32 %36, i32 %42, i32 %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @q_pays_money, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 132
  %56 = icmp eq i32 %55, 4
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, 132
  %60 = icmp eq i32 %59, 4
  %61 = zext i1 %60 to i32
  %62 = call i32 @user_change_field(i32 %50, i32 %51, i32 %57, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %13, %12
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_3__* @get_user(i32) #1

declare dso_local i32 @user_change_field(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
