; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_do_set_flags.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_do_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_set_flags_long = type { i32, i32 }
%struct.lev_set_flags = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"do_set_flags(%d,%d,%d):\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"adjust_message returned %d\0A\00", align 1
@write_all_events = common dso_local global i64 0, align 8
@LEV_TX_SET_MESSAGE_FLAGS_LONG = common dso_local global i64 0, align 8
@LEV_TX_SET_MESSAGE_FLAGS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_flags(i32 %0, i32 %1, i32 %2) #0 {
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
  %18 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %3
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, -65536
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %80

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @adjust_message(i32 %25, i32 %26, i32 %28, i32 %29, i32 0)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @verbosity, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %24
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %80

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* @write_all_events, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %46, %42
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, -256
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i64, i64* @LEV_TX_SET_MESSAGE_FLAGS_LONG, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i8* @alloc_log_event(i64 %54, i32 8, i32 %55)
  %57 = bitcast i8* %56 to %struct.lev_set_flags_long*
  store %struct.lev_set_flags_long* %57, %struct.lev_set_flags_long** %9, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.lev_set_flags_long*, %struct.lev_set_flags_long** %9, align 8
  %60 = getelementptr inbounds %struct.lev_set_flags_long, %struct.lev_set_flags_long* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.lev_set_flags_long*, %struct.lev_set_flags_long** %9, align 8
  %63 = getelementptr inbounds %struct.lev_set_flags_long, %struct.lev_set_flags_long* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %75

64:                                               ; preds = %49
  %65 = load i64, i64* @LEV_TX_SET_MESSAGE_FLAGS, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = load i32, i32* %5, align 4
  %70 = call i8* @alloc_log_event(i64 %68, i32 4, i32 %69)
  %71 = bitcast i8* %70 to %struct.lev_set_flags*
  store %struct.lev_set_flags* %71, %struct.lev_set_flags** %10, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.lev_set_flags*, %struct.lev_set_flags** %10, align 8
  %74 = getelementptr inbounds %struct.lev_set_flags, %struct.lev_set_flags* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %64, %53
  br label %76

76:                                               ; preds = %75, %46
  %77 = load i32, i32* %8, align 4
  %78 = icmp sgt i32 %77, 0
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %40, %23
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @adjust_message(i32, i32, i32, i32, i32) #1

declare dso_local i8* @alloc_log_event(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
