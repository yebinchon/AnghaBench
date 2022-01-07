; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_common-data.c_cstatus_set.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_common-data.c_cstatus_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.proc_user_info* }
%struct.proc_user_info = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MyCData = common dso_local global %struct.TYPE_3__* null, align 8
@CDataUserInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cstatus_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc_user_info*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyCData, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %46

12:                                               ; preds = %2
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CDataUserInfo, i32 0, i32 0), align 4
  %14 = load i32, i32* %5, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CDataUserInfo, i32 0, i32 0), align 4
  %20 = call i32 @get_precise_time(i32 1000000)
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CDataUserInfo, i32 0, i32 1), align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %41, %12
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyCData, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.proc_user_info*, %struct.proc_user_info** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.proc_user_info, %struct.proc_user_info* %27, i64 %29
  store %struct.proc_user_info* %30, %struct.proc_user_info** %8, align 8
  %31 = load %struct.proc_user_info*, %struct.proc_user_info** %8, align 8
  %32 = call i32 @begin_update_copy(%struct.proc_user_info* %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CDataUserInfo, i32 0, i32 1), align 4
  %34 = load %struct.proc_user_info*, %struct.proc_user_info** %8, align 8
  %35 = getelementptr inbounds %struct.proc_user_info, %struct.proc_user_info* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.proc_user_info*, %struct.proc_user_info** %8, align 8
  %38 = getelementptr inbounds %struct.proc_user_info, %struct.proc_user_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.proc_user_info*, %struct.proc_user_info** %8, align 8
  %40 = call i32 @end_update_copy(%struct.proc_user_info* %39)
  br label %41

41:                                               ; preds = %24
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %21

44:                                               ; preds = %21
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %11
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @get_precise_time(i32) #1

declare dso_local i32 @begin_update_copy(%struct.proc_user_info*) #1

declare dso_local i32 @end_update_copy(%struct.proc_user_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
