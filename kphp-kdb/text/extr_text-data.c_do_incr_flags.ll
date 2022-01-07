; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_do_incr_flags.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_do_incr_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_set_flags_long = type { i32, i32 }
%struct.lev_set_flags = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"do_incr_flags(%d,%d,%d):\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"adjust_message returned %d\0A\00", align 1
@write_all_events = common dso_local global i64 0, align 8
@LEV_TX_INCR_MESSAGE_FLAGS_LONG = common dso_local global i64 0, align 8
@LEV_TX_INCR_MESSAGE_FLAGS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_incr_flags(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lev_set_flags_long*, align 8
  %10 = alloca %struct.lev_set_flags*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @verbosity, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* @stderr, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %3
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, -65536
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %78

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @adjust_message(i32 %25, i32 %26, i32 0, i32 %27, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @verbosity, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @stderr, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %24
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %78

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* @write_all_events, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %44, %40
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, -256
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i64, i64* @LEV_TX_INCR_MESSAGE_FLAGS_LONG, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i8* @alloc_log_event(i64 %52, i32 8, i32 %53)
  %55 = bitcast i8* %54 to %struct.lev_set_flags_long*
  store %struct.lev_set_flags_long* %55, %struct.lev_set_flags_long** %9, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.lev_set_flags_long*, %struct.lev_set_flags_long** %9, align 8
  %58 = getelementptr inbounds %struct.lev_set_flags_long, %struct.lev_set_flags_long* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.lev_set_flags_long*, %struct.lev_set_flags_long** %9, align 8
  %61 = getelementptr inbounds %struct.lev_set_flags_long, %struct.lev_set_flags_long* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %73

62:                                               ; preds = %47
  %63 = load i64, i64* @LEV_TX_INCR_MESSAGE_FLAGS, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load i32, i32* %5, align 4
  %68 = call i8* @alloc_log_event(i64 %66, i32 4, i32 %67)
  %69 = bitcast i8* %68 to %struct.lev_set_flags*
  store %struct.lev_set_flags* %69, %struct.lev_set_flags** %10, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.lev_set_flags*, %struct.lev_set_flags** %10, align 8
  %72 = getelementptr inbounds %struct.lev_set_flags, %struct.lev_set_flags* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %62, %51
  br label %74

74:                                               ; preds = %73, %44
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @get_message_flags(i32 %75, i32 %76, i32 -1)
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %38, %23
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @adjust_message(i32, i32, i32, i32, i32) #1

declare dso_local i8* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @get_message_flags(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
