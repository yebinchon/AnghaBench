; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_out_buf_add.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_out_buf_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_message = type { i64 }
%struct.udp_msg = type { i32, i64, i32, i8* }
%struct.udp_target = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@out_buf_target = common dso_local global i8* null, align 8
@out_buf_prev_last = common dso_local global i64 0, align 8
@out_buf_prev = common dso_local global i32 0, align 4
@out_buf_next_last = common dso_local global i64 0, align 8
@out_buf_next = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"S->sent: added number %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @out_buf_add(%struct.raw_message* %0) #0 {
  %2 = alloca %struct.raw_message*, align 8
  %3 = alloca %struct.udp_msg*, align 8
  %4 = alloca %struct.udp_target*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.raw_message* %0, %struct.raw_message** %2, align 8
  %7 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %8 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = call %struct.udp_msg* @zmalloc(i32 32)
  store %struct.udp_msg* %13, %struct.udp_msg** %3, align 8
  %14 = load i8*, i8** @out_buf_target, align 8
  %15 = bitcast i8* %14 to %struct.udp_target*
  store %struct.udp_target* %15, %struct.udp_target** %4, align 8
  %16 = load i8*, i8** @out_buf_target, align 8
  %17 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %18 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %20 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = sext i32 %21 to i64
  %24 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %25 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %27 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %26, i32 0, i32 2
  %28 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %29 = call i32 @rwm_clone(i32* %27, %struct.raw_message* %28)
  %30 = load i64, i64* @out_buf_prev_last, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @out_buf_prev, align 4
  br label %35

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  store i32 %36, i32* %5, align 4
  %37 = load i64, i64* @out_buf_next_last, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @out_buf_next, align 4
  br label %42

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = mul nsw i64 %45, 1
  %47 = shl i64 %46, 32
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = trunc i64 %50 to i32
  %52 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %53 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  store i64 0, i64* @out_buf_prev_last, align 8
  store i64 0, i64* @out_buf_next_last, align 8
  %54 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %55 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %58 = call i32 (...) @lrand48()
  %59 = call i32 @tree_insert_udp_msg(i32 %56, %struct.udp_msg* %57, i32 %58)
  %60 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %61 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %63 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %64)
  %66 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %67 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 2
  %70 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %71 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %42
  %75 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %76 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %82 = call i32 @start_tx_timer(%struct.udp_target* %81)
  br label %83

83:                                               ; preds = %80, %74
  br label %84

84:                                               ; preds = %83, %42
  %85 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %86 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %87 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, 1
  %90 = call i32 @__out_buf_add(%struct.raw_message* %85, i32 %89)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.udp_msg* @zmalloc(i32) #1

declare dso_local i32 @rwm_clone(i32*, %struct.raw_message*) #1

declare dso_local i32 @tree_insert_udp_msg(i32, %struct.udp_msg*, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @vkprintf(i32, i8*, i64) #1

declare dso_local i32 @start_tx_timer(%struct.udp_target*) #1

declare dso_local i32 @__out_buf_add(%struct.raw_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
