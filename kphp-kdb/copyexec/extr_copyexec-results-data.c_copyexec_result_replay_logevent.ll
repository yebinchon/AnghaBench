; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_copyexec_result_replay_logevent.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_copyexec_result_replay_logevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32, i32 }
%struct.lev_start = type { i32 }
%struct.lev_copyexec_result_connect = type { i32 }
%struct.lev_copyexec_result_data = type { i32 }
%struct.lev_copyexec_result_enable = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"unknown log event type %08x at position %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copyexec_result_replay_logevent(%struct.lev_generic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lev_generic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lev_generic* %0, %struct.lev_generic** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %8 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %98 [
    i32 130, label %10
    i32 133, label %45
    i32 128, label %45
    i32 134, label %45
    i32 132, label %45
    i32 131, label %45
    i32 129, label %45
    i32 138, label %49
    i32 137, label %70
    i32 136, label %80
    i32 135, label %80
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 24
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %15 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %20 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 4096
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %13, %10
  store i32 -2, i32* %3, align 4
  br label %104

24:                                               ; preds = %18
  %25 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %26 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 3
  %29 = and i32 %28, -4
  %30 = add nsw i32 24, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 -2, i32* %3, align 4
  br label %104

35:                                               ; preds = %24
  %36 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %37 = bitcast %struct.lev_generic* %36 to %struct.lev_start*
  %38 = call i32 @copyexec_result_le_start(%struct.lev_start* %37)
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  br label %43

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ -1, %42 ]
  store i32 %44, i32* %3, align 4
  br label %104

45:                                               ; preds = %2, %2, %2, %2, %2, %2
  %46 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @default_replay_logevent(%struct.lev_generic* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %104

49:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 -2, i32* %3, align 4
  br label %104

54:                                               ; preds = %49
  %55 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %56 = bitcast %struct.lev_generic* %55 to %struct.lev_copyexec_result_connect*
  %57 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 -2, i32* %3, align 4
  br label %104

65:                                               ; preds = %54
  %66 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %67 = bitcast %struct.lev_generic* %66 to %struct.lev_copyexec_result_connect*
  %68 = call i32 @set_connect(%struct.lev_copyexec_result_connect* %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %104

70:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 -2, i32* %3, align 4
  br label %104

75:                                               ; preds = %70
  %76 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %77 = bitcast %struct.lev_generic* %76 to %struct.lev_copyexec_result_data*
  %78 = call i32 @set_result(i32* null, %struct.lev_copyexec_result_data* %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %104

80:                                               ; preds = %2, %2
  store i32 4, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 -2, i32* %3, align 4
  br label %104

85:                                               ; preds = %80
  %86 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %87 = bitcast %struct.lev_generic* %86 to %struct.lev_copyexec_result_enable*
  %88 = getelementptr inbounds %struct.lev_copyexec_result_enable, %struct.lev_copyexec_result_enable* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %91 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 135
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 1, i32 0
  %96 = call i32 @set_enable(i32 %89, i32 %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %104

98:                                               ; preds = %2
  %99 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %100 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (...) @log_cur_pos()
  %103 = call i32 @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %102)
  store i32 -3, i32* %3, align 4
  br label %104

104:                                              ; preds = %98, %85, %84, %75, %74, %65, %64, %53, %45, %43, %34, %23
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @copyexec_result_le_start(%struct.lev_start*) #1

declare dso_local i32 @default_replay_logevent(%struct.lev_generic*, i32) #1

declare dso_local i32 @set_connect(%struct.lev_copyexec_result_connect*) #1

declare dso_local i32 @set_result(i32*, %struct.lev_copyexec_result_data*) #1

declare dso_local i32 @set_enable(i32, i32) #1

declare dso_local i32 @kprintf(i8*, i32, i32) #1

declare dso_local i32 @log_cur_pos(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
