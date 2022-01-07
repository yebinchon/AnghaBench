; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_on_minit.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_on_minit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@minit = common dso_local global i32 0, align 4
@last_qid = common dso_local global i64 0, align 8
@last_queue_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"tl.conffile\00", align 1
@inbuf = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"vkext.ping_timeout\00", align 1
@ping_timeout = common dso_local global i64 0, align 8
@PING_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_on_minit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @minit, align 4
  %4 = call i32 @ADD_CNT(i32 %3)
  %5 = load i32, i32* @minit, align 4
  %6 = call i32 @START_TIMER(i32 %5)
  %7 = call i32 (...) @lrand48()
  %8 = sext i32 %7 to i64
  %9 = mul nsw i64 %8, 4294967296
  %10 = call i32 (...) @lrand48()
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %9, %11
  %13 = add nsw i64 %12, 1000000
  store i64 %13, i64* @last_qid, align 8
  %14 = call i32 (...) @lrand48()
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 1073741824, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* @last_queue_id, align 4
  %18 = call i64 @INI_STR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  %21 = call i64 @INI_STR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %22 = call i64 @read_tl_config(i64 %21)
  %23 = icmp sge i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i64, i64* @inbuf, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i64, i64* @inbuf, align 8
  %30 = call i64 @buffer_delete(i64 %29)
  store i64 %30, i64* @inbuf, align 8
  br label %31

31:                                               ; preds = %28, %20
  br label %32

32:                                               ; preds = %31, %1
  %33 = call i64 @INI_STR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = call i64 @INI_STR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i64 @atof(i64 %36)
  store i64 %37, i64* @ping_timeout, align 8
  %38 = load i64, i64* @ping_timeout, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i64, i64* @PING_TIMEOUT, align 8
  store i64 %41, i64* @ping_timeout, align 8
  br label %42

42:                                               ; preds = %40, %35
  br label %43

43:                                               ; preds = %42, %32
  %44 = load i32, i32* @minit, align 4
  %45 = call i32 @END_TIMER(i32 %44)
  ret void
}

declare dso_local i32 @ADD_CNT(i32) #1

declare dso_local i32 @START_TIMER(i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i64 @INI_STR(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @read_tl_config(i64) #1

declare dso_local i64 @buffer_delete(i64) #1

declare dso_local i64 @atof(i64) #1

declare dso_local i32 @END_TIMER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
