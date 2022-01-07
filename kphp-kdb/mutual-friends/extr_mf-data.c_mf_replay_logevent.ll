; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_mf_replay_logevent.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_mf_replay_logevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32, i32 }
%struct.lev_start = type { i32 }

@index_mode = common dso_local global i64 0, align 8
@_eventsLeft = common dso_local global i64 0, align 8
@MEMORY_CHANGES_PERCENT = common dso_local global i32 0, align 4
@max_memory = common dso_local global i32 0, align 4
@newindexname = common dso_local global i32 0, align 4
@lev_mf = common dso_local global i32 0, align 4
@add_exception = common dso_local global i32 0, align 4
@del_exception = common dso_local global i32 0, align 4
@clear_exceptions = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"unknown log event type %08x at position %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mf_replay_logevent(%struct.lev_generic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lev_generic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lev_generic* %0, %struct.lev_generic** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @index_mode, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load i64, i64* @_eventsLeft, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i64, i64* @_eventsLeft, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* @_eventsLeft, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %9
  %17 = call i32 (...) @get_memory_used()
  %18 = load i32, i32* @MEMORY_CHANGES_PERCENT, align 4
  %19 = load i32, i32* @max_memory, align 4
  %20 = mul nsw i32 %18, %19
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16, %12
  %23 = load i32, i32* @newindexname, align 4
  %24 = call i32 @save_index(i32 %23)
  %25 = call i32 @exit(i32 13) #3
  unreachable

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %29 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %82 [
    i32 130, label %31
    i32 133, label %66
    i32 128, label %66
    i32 137, label %66
    i32 132, label %66
    i32 131, label %66
    i32 129, label %66
    i32 136, label %70
    i32 134, label %74
    i32 135, label %78
  ]

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 24
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %36 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %41 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 4096
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %34, %31
  store i32 -2, i32* %3, align 4
  br label %89

45:                                               ; preds = %39
  %46 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %47 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 3
  %50 = and i32 %49, -4
  %51 = add nsw i32 24, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i32 -2, i32* %3, align 4
  br label %89

56:                                               ; preds = %45
  %57 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %58 = bitcast %struct.lev_generic* %57 to %struct.lev_start*
  %59 = call i32 @mf_le_start(%struct.lev_start* %58)
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  br label %64

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ -1, %63 ]
  store i32 %65, i32* %3, align 4
  br label %89

66:                                               ; preds = %27, %27, %27, %27, %27, %27
  %67 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @default_replay_logevent(%struct.lev_generic* %67, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %89

70:                                               ; preds = %27
  %71 = load i32, i32* @lev_mf, align 4
  %72 = load i32, i32* @add_exception, align 4
  %73 = call i32 @STANDARD_LOG_EVENT_HANDLER(i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %27, %70
  %75 = load i32, i32* @lev_mf, align 4
  %76 = load i32, i32* @del_exception, align 4
  %77 = call i32 @STANDARD_LOG_EVENT_HANDLER(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %27, %74
  %79 = load i32, i32* @lev_mf, align 4
  %80 = load i32, i32* @clear_exceptions, align 4
  %81 = call i32 @STANDARD_LOG_EVENT_HANDLER(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %27
  %83 = load i32, i32* @stderr, align 4
  %84 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %85 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (...) @log_cur_pos()
  %88 = call i32 @fprintf(i32 %83, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87)
  store i32 -1, i32* %3, align 4
  br label %89

89:                                               ; preds = %82, %66, %64, %55, %44
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @get_memory_used(...) #1

declare dso_local i32 @save_index(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @mf_le_start(%struct.lev_start*) #1

declare dso_local i32 @default_replay_logevent(%struct.lev_generic*, i32) #1

declare dso_local i32 @STANDARD_LOG_EVENT_HANDLER(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @log_cur_pos(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
