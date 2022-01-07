; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_tmp_adjust_global_id.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_tmp_adjust_global_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32, i64 }
%struct.buff_file = type { i32 }

@last_global_id = common dso_local global i32 0, align 4
@tmp_adjust_global_id.lgid = internal global %struct.lev_generic zeroinitializer, align 8
@LEV_TX_INCREASE_GLOBAL_ID_SMALL = common dso_local global i64 0, align 8
@LEV_TX_INCREASE_GLOBAL_ID_LARGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmp_adjust_global_id(%struct.buff_file* %0, i32 %1) #0 {
  %3 = alloca %struct.buff_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.buff_file* %0, %struct.buff_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @last_global_id, align 4
  %7 = load %struct.buff_file*, %struct.buff_file** %3, align 8
  %8 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %6, %9
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp sle i32 %20, 65535
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @LEV_TX_INCREASE_GLOBAL_ID_SMALL, align 8
  %26 = add nsw i64 %24, %25
  store i64 %26, i64* getelementptr inbounds (%struct.lev_generic, %struct.lev_generic* @tmp_adjust_global_id.lgid, i32 0, i32 1), align 8
  %27 = load %struct.buff_file*, %struct.buff_file** %3, align 8
  %28 = call i32 @tmp_write_lev(%struct.buff_file* %27, %struct.lev_generic* @tmp_adjust_global_id.lgid, i32 4)
  br label %38

29:                                               ; preds = %19, %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i64, i64* @LEV_TX_INCREASE_GLOBAL_ID_LARGE, align 8
  store i64 %33, i64* getelementptr inbounds (%struct.lev_generic, %struct.lev_generic* @tmp_adjust_global_id.lgid, i32 0, i32 1), align 8
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.lev_generic, %struct.lev_generic* @tmp_adjust_global_id.lgid, i32 0, i32 0), align 8
  %35 = load %struct.buff_file*, %struct.buff_file** %3, align 8
  %36 = call i32 @tmp_write_lev(%struct.buff_file* %35, %struct.lev_generic* @tmp_adjust_global_id.lgid, i32 8)
  br label %37

37:                                               ; preds = %32, %29
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i32, i32* @last_global_id, align 4
  %40 = load %struct.buff_file*, %struct.buff_file** %3, align 8
  %41 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tmp_write_lev(%struct.buff_file*, %struct.lev_generic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
