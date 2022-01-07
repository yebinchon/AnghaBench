; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_fast-classifier.c_fast_classifier_offload_genl_msg.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_fast-classifier.c_fast_classifier_offload_genl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.fast_classifier_tuple = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.sfe_connection = type { i32 }

@FAST_CLASSIFIER_A_TUPLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"want to offload: %d-%d, %pIS, %pIS, %d, %d SMAC=%pM DMAC=%pM\0A\00", align 1
@sfe_connections_lock = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"REQUEST OFFLOAD NO MATCH\0A\00", align 1
@offload_no_match_msgs = common dso_local global i32 0, align 4
@offload_msgs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"INFO: calling sfe rule creation!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @fast_classifier_offload_genl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fast_classifier_offload_genl_msg(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.fast_classifier_tuple*, align 8
  %8 = alloca %struct.sfe_connection*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 0
  %11 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %12 = load i64, i64* @FAST_CLASSIFIER_A_TUPLE, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  store %struct.nlattr* %14, %struct.nlattr** %6, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %16 = call %struct.fast_classifier_tuple* @nla_data(%struct.nlattr* %15)
  store %struct.fast_classifier_tuple* %16, %struct.fast_classifier_tuple** %7, align 8
  %17 = load %struct.fast_classifier_tuple*, %struct.fast_classifier_tuple** %7, align 8
  %18 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fast_classifier_tuple*, %struct.fast_classifier_tuple** %7, align 8
  %21 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.fast_classifier_tuple*, %struct.fast_classifier_tuple** %7, align 8
  %24 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %23, i32 0, i32 5
  %25 = load %struct.fast_classifier_tuple*, %struct.fast_classifier_tuple** %7, align 8
  %26 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %25, i32 0, i32 4
  %27 = load %struct.fast_classifier_tuple*, %struct.fast_classifier_tuple** %7, align 8
  %28 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.fast_classifier_tuple*, %struct.fast_classifier_tuple** %7, align 8
  %31 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fast_classifier_tuple*, %struct.fast_classifier_tuple** %7, align 8
  %34 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.fast_classifier_tuple*, %struct.fast_classifier_tuple** %7, align 8
  %37 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %22, i32* %24, i32* %26, i32 %29, i32 %32, i32 %35, i32 %38)
  %40 = call i32 @spin_lock_bh(i32* @sfe_connections_lock)
  %41 = load %struct.fast_classifier_tuple*, %struct.fast_classifier_tuple** %7, align 8
  %42 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %41, i32 0, i32 5
  %43 = load %struct.fast_classifier_tuple*, %struct.fast_classifier_tuple** %7, align 8
  %44 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %43, i32 0, i32 4
  %45 = load %struct.fast_classifier_tuple*, %struct.fast_classifier_tuple** %7, align 8
  %46 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.fast_classifier_tuple*, %struct.fast_classifier_tuple** %7, align 8
  %49 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fast_classifier_tuple*, %struct.fast_classifier_tuple** %7, align 8
  %52 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.fast_classifier_tuple*, %struct.fast_classifier_tuple** %7, align 8
  %55 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AF_INET, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call %struct.sfe_connection* @fast_classifier_sb_find_conn(i32* %42, i32* %44, i32 %47, i32 %50, i32 %53, i32 %59)
  store %struct.sfe_connection* %60, %struct.sfe_connection** %8, align 8
  %61 = load %struct.sfe_connection*, %struct.sfe_connection** %8, align 8
  %62 = icmp ne %struct.sfe_connection* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %2
  %64 = call i32 @spin_unlock_bh(i32* @sfe_connections_lock)
  %65 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %66 = call i32 @atomic_inc(i32* @offload_no_match_msgs)
  store i32 0, i32* %3, align 4
  br label %73

67:                                               ; preds = %2
  %68 = load %struct.sfe_connection*, %struct.sfe_connection** %8, align 8
  %69 = getelementptr inbounds %struct.sfe_connection, %struct.sfe_connection* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = call i32 @spin_unlock_bh(i32* @sfe_connections_lock)
  %71 = call i32 @atomic_inc(i32* @offload_msgs)
  %72 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %67, %63
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.fast_classifier_tuple* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @DEBUG_TRACE(i8*, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sfe_connection* @fast_classifier_sb_find_conn(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
