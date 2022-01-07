; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_common-data.c_cstatus_binlog_pos.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_common-data.c_cstatus_binlog_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.proc_user_info* }
%struct.proc_user_info = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@MyCData = common dso_local global %struct.TYPE_3__* null, align 8
@CDataUserInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CD_BINLOG_R = common dso_local global i32 0, align 4
@CD_BINLOG_W = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cstatus_binlog_pos(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc_user_info*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyCData, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %64

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CDataUserInfo, i32 0, i32 0), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CDataUserInfo, i32 0, i32 1), align 8
  %15 = load i32, i32* @CD_BINLOG_R, align 4
  %16 = load i32, i32* @CD_BINLOG_W, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* @CD_BINLOG_R, align 4
  br label %32

24:                                               ; preds = %12
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @CD_BINLOG_W, align 4
  br label %30

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  br label %32

32:                                               ; preds = %30, %22
  %33 = phi i32 [ %23, %22 ], [ %31, %30 ]
  %34 = or i32 %19, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CDataUserInfo, i32 0, i32 1), align 8
  %36 = call i32 @get_precise_time(i32 1000000)
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CDataUserInfo, i32 0, i32 2), align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %60, %32
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyCData, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.proc_user_info*, %struct.proc_user_info** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.proc_user_info, %struct.proc_user_info* %43, i64 %45
  store %struct.proc_user_info* %46, %struct.proc_user_info** %8, align 8
  %47 = load %struct.proc_user_info*, %struct.proc_user_info** %8, align 8
  %48 = call i32 @begin_update_copy(%struct.proc_user_info* %47)
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.proc_user_info*, %struct.proc_user_info** %8, align 8
  %51 = getelementptr inbounds %struct.proc_user_info, %struct.proc_user_info* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CDataUserInfo, i32 0, i32 2), align 4
  %53 = load %struct.proc_user_info*, %struct.proc_user_info** %8, align 8
  %54 = getelementptr inbounds %struct.proc_user_info, %struct.proc_user_info* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.proc_user_info*, %struct.proc_user_info** %8, align 8
  %57 = getelementptr inbounds %struct.proc_user_info, %struct.proc_user_info* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.proc_user_info*, %struct.proc_user_info** %8, align 8
  %59 = call i32 @end_update_copy(%struct.proc_user_info* %58)
  br label %60

60:                                               ; preds = %40
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %37

63:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %11
  %65 = load i32, i32* %3, align 4
  ret i32 %65
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
