; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c__fail_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c__fail_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_id = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@TL_ERROR_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_fail_query(i32 %0, %struct.process_id* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.process_id*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.process_id* %1, %struct.process_id** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.process_id*, %struct.process_id** %5, align 8
  %8 = icmp ne %struct.process_id* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.process_id*, %struct.process_id** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @tl_init_store_keep_error(i32 %10, %struct.process_id* %11, i64 %12)
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = call i32 (...) @tl_fetch_error()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @TL_ERROR_UNKNOWN, align 4
  %20 = call i32 @tl_fetch_set_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = call i32 (...) @tl_store_end()
  br label %23

23:                                               ; preds = %21, %9
  br label %24

24:                                               ; preds = %23, %3
  ret void
}

declare dso_local i64 @tl_init_store_keep_error(i32, %struct.process_id*, i64) #1

declare dso_local i32 @tl_fetch_error(...) #1

declare dso_local i32 @tl_fetch_set_error(i8*, i32) #1

declare dso_local i32 @tl_store_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
