; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-binlog.c_dump_copyexec_results_replay_logevent.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-binlog.c_dump_copyexec_results_replay_logevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32, i32 }
%struct.lev_start = type { i32 }
%struct.lev_copyexec_result_connect = type { i32 }
%struct.lev_copyexec_result_data = type { i32 }
%struct.lev_copyexec_result_enable = type { i32 }

@now = common dso_local global i64 0, align 8
@end_time = common dso_local global i64 0, align 8
@out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"unknown log event type %08x at position %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_copyexec_results_replay_logevent(%struct.lev_generic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lev_generic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lev_generic* %0, %struct.lev_generic** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @now, align 8
  %8 = load i64, i64* @end_time, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* @out, align 4
  %12 = call i32 @fflush(i32 %11)
  %13 = load i32, i32* @out, align 4
  %14 = call i32 @fclose(i32 %13)
  %15 = call i32 @exit(i32 0) #3
  unreachable

16:                                               ; preds = %2
  %17 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %18 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %100 [
    i32 129, label %20
    i32 132, label %55
    i32 128, label %55
    i32 133, label %55
    i32 131, label %55
    i32 130, label %55
    i32 137, label %59
    i32 136, label %80
    i32 135, label %90
    i32 134, label %90
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 24
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %25 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %30 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 4096
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %23, %20
  store i32 -2, i32* %3, align 4
  br label %106

34:                                               ; preds = %28
  %35 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %36 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 3
  %39 = and i32 %38, -4
  %40 = add nsw i32 24, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 -2, i32* %3, align 4
  br label %106

45:                                               ; preds = %34
  %46 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %47 = bitcast %struct.lev_generic* %46 to %struct.lev_start*
  %48 = call i32 @copyexec_main_le_start(%struct.lev_start* %47)
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  br label %53

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ -1, %52 ]
  store i32 %54, i32* %3, align 4
  br label %106

55:                                               ; preds = %16, %16, %16, %16, %16
  %56 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @default_replay_logevent(%struct.lev_generic* %56, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %106

59:                                               ; preds = %16
  store i32 4, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 -2, i32* %3, align 4
  br label %106

64:                                               ; preds = %59
  %65 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %66 = bitcast %struct.lev_generic* %65 to %struct.lev_copyexec_result_connect*
  %67 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store i32 -2, i32* %3, align 4
  br label %106

75:                                               ; preds = %64
  %76 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %77 = bitcast %struct.lev_generic* %76 to %struct.lev_copyexec_result_connect*
  %78 = call i32 @dump_connect(%struct.lev_copyexec_result_connect* %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %106

80:                                               ; preds = %16
  store i32 4, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 -2, i32* %3, align 4
  br label %106

85:                                               ; preds = %80
  %86 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %87 = bitcast %struct.lev_generic* %86 to %struct.lev_copyexec_result_data*
  %88 = call i32 @dump_data(%struct.lev_copyexec_result_data* %87)
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %106

90:                                               ; preds = %16, %16
  store i32 4, i32* %6, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 -2, i32* %3, align 4
  br label %106

95:                                               ; preds = %90
  %96 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %97 = bitcast %struct.lev_generic* %96 to %struct.lev_copyexec_result_enable*
  %98 = call i32 @dump_enable(%struct.lev_copyexec_result_enable* %97)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %106

100:                                              ; preds = %16
  %101 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %102 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (...) @log_cur_pos()
  %105 = call i32 @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %104)
  store i32 -3, i32* %3, align 4
  br label %106

106:                                              ; preds = %100, %95, %94, %85, %84, %75, %74, %63, %55, %53, %44, %33
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fclose(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @copyexec_main_le_start(%struct.lev_start*) #1

declare dso_local i32 @default_replay_logevent(%struct.lev_generic*, i32) #1

declare dso_local i32 @dump_connect(%struct.lev_copyexec_result_connect*) #1

declare dso_local i32 @dump_data(%struct.lev_copyexec_result_data*) #1

declare dso_local i32 @dump_enable(%struct.lev_copyexec_result_enable*) #1

declare dso_local i32 @kprintf(i8*, i32, i32) #1

declare dso_local i32 @log_cur_pos(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
