; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-binlog.c_alloc_log_event.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-binlog.c_alloc_log_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log_event = type { i32, i32, i32 }

@binlogname = common dso_local global i32 0, align 4
@LE_TIMESTAMP_MAGIC = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@log_last_ts = common dso_local global i32 0, align 4
@MAX_LOG_TS_INTERVAL = common dso_local global i32 0, align 4
@log_end = common dso_local global i32 0, align 4
@log_wptr = common dso_local global i32 0, align 4
@log_endw = common dso_local global i32 0, align 4
@log_start = common dso_local global i32 0, align 4
@log_rptr = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"fatal: binlog buffer overflow!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @alloc_log_event(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.log_event*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = mul nsw i32 8, %12
  %14 = add nsw i32 12, %13
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @binlogname, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %95

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @LE_TIMESTAMP_MAGIC, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  store i32 8, i32* %10, align 4
  %23 = load i32, i32* @now, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @now, align 4
  br label %29

27:                                               ; preds = %22
  %28 = call i32 @time(i32 0)
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @log_last_ts, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* @log_last_ts, align 4
  br label %36

36:                                               ; preds = %34, %29
  br label %47

37:                                               ; preds = %18
  %38 = load i32, i32* @now, align 4
  %39 = load i32, i32* @log_last_ts, align 4
  %40 = load i32, i32* @MAX_LOG_TS_INTERVAL, align 4
  %41 = add nsw i32 %39, %40
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @LE_TIMESTAMP_MAGIC, align 4
  %45 = call i32* @alloc_log_event(i32 %44, i32 0, i32 0, i32 0)
  br label %46

46:                                               ; preds = %43, %37
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @log_end, align 4
  %50 = load i32, i32* @log_wptr, align 4
  %51 = sub nsw i32 %49, %50
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @log_wptr, align 4
  store i32 %54, i32* @log_endw, align 4
  %55 = load i32, i32* @log_start, align 4
  store i32 %55, i32* @log_wptr, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* @log_wptr, align 4
  %58 = load i32, i32* @log_rptr, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i32, i32* @log_wptr, align 4
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* @log_rptr, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* @stderr, align 4
  %68 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %69 = call i32 @exit(i32 3) #3
  unreachable

70:                                               ; preds = %60, %56
  %71 = load i32, i32* @log_wptr, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to %struct.log_event*
  store %struct.log_event* %73, %struct.log_event** %11, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @log_wptr, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* @log_wptr, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.log_event*, %struct.log_event** %11, align 8
  %79 = getelementptr inbounds %struct.log_event, %struct.log_event* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.log_event*, %struct.log_event** %11, align 8
  %82 = getelementptr inbounds %struct.log_event, %struct.log_event* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @LE_TIMESTAMP_MAGIC, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %70
  store i32* null, i32** %5, align 8
  br label %95

87:                                               ; preds = %70
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.log_event*, %struct.log_event** %11, align 8
  %90 = getelementptr inbounds %struct.log_event, %struct.log_event* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.log_event*, %struct.log_event** %11, align 8
  %92 = bitcast %struct.log_event* %91 to i8*
  %93 = getelementptr inbounds i8, i8* %92, i64 12
  %94 = bitcast i8* %93 to i32*
  store i32* %94, i32** %5, align 8
  br label %95

95:                                               ; preds = %87, %86, %17
  %96 = load i32*, i32** %5, align 8
  ret i32* %96
}

declare dso_local i32 @time(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
