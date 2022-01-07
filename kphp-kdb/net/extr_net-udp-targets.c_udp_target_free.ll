; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_free.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_target = type { %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, i64, i64, i32, i32, i8*, i8*, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.raw_message = type { i32 }
%struct.tmp_msg = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.raw_message }
%struct.TYPE_7__ = type { %struct.raw_message }
%struct.TYPE_6__ = type { %struct.tmp_msg }

@udp_target_by_hash = common dso_local global i32 0, align 4
@__clear_udp_msg_constructor = common dso_local global i32 0, align 4
@udp_msg_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_target_free(%struct.udp_target* %0) #0 {
  %2 = alloca %struct.udp_target*, align 8
  %3 = alloca %struct.raw_message, align 4
  %4 = alloca %struct.tmp_msg, align 8
  store %struct.udp_target* %0, %struct.udp_target** %2, align 8
  %5 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %6 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %5, i32 0, i32 9
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @udp_target_by_hash, align 4
  %11 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %12 = call i32 @tree_delete_udp_target_by_hash(i32 %10, %struct.udp_target* %11)
  store i32 %12, i32* @udp_target_by_hash, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %15 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %14, i32 0, i32 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @tree_clear_int(i8* %16)
  %18 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %19 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %18, i32 0, i32 8
  store i8* %17, i8** %19, align 8
  %20 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %21 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %20, i32 0, i32 7
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @tree_clear_int(i8* %22)
  %24 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %25 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %27 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @__clear_udp_msg_constructor, align 4
  %30 = call i32 @tree_act_udp_msg_constructor(i32 %28, i32 %29)
  %31 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %32 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @tree_clear_udp_msg_constructor(i32 %33)
  %35 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %36 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %38 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @udp_msg_free, align 4
  %41 = call i32 @tree_act_udp_msg(i32 %39, i32 %40)
  %42 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %43 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @tree_clear_udp_msg(i32 %44)
  %46 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %47 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %53, %13
  %49 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %50 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %55 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = call %struct.TYPE_7__* @queue_get_first_raw_message(i64 %56)
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = bitcast %struct.raw_message* %3 to i8*
  %60 = bitcast %struct.raw_message* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 4, i1 false)
  %61 = call i32 @rwm_free(%struct.raw_message* %3)
  %62 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %63 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @queue_del_first_raw_message(i64 %64)
  %66 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %67 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %66, i32 0, i32 4
  store i64 %65, i64* %67, align 8
  br label %48

68:                                               ; preds = %48
  br label %69

69:                                               ; preds = %74, %68
  %70 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %71 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %69
  %75 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %76 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = call %struct.TYPE_6__* @queue_get_first_tmp_msg(i64 %77)
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = bitcast %struct.tmp_msg* %4 to i8*
  %81 = bitcast %struct.tmp_msg* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 8, i1 false)
  %82 = getelementptr inbounds %struct.tmp_msg, %struct.tmp_msg* %4, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = call i32 @rwm_free(%struct.raw_message* %84)
  %86 = getelementptr inbounds %struct.tmp_msg, %struct.tmp_msg* %4, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = call i32 @free(%struct.TYPE_8__* %87)
  %89 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %90 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @queue_del_first_tmp_msg(i64 %91)
  %93 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %94 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  br label %69

95:                                               ; preds = %69
  %96 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %97 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %103 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %102, i32 0, i32 2
  %104 = call i32 @remove_event_timer(%struct.TYPE_5__* %103)
  br label %105

105:                                              ; preds = %101, %95
  %106 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %107 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %113 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %112, i32 0, i32 1
  %114 = call i32 @remove_event_timer(%struct.TYPE_5__* %113)
  br label %115

115:                                              ; preds = %111, %105
  %116 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %117 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %123 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %122, i32 0, i32 0
  %124 = call i32 @remove_event_timer(%struct.TYPE_5__* %123)
  br label %125

125:                                              ; preds = %121, %115
  %126 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %127 = call i32 @zfree(%struct.udp_target* %126, i32 72)
  ret void
}

declare dso_local i32 @tree_delete_udp_target_by_hash(i32, %struct.udp_target*) #1

declare dso_local i8* @tree_clear_int(i8*) #1

declare dso_local i32 @tree_act_udp_msg_constructor(i32, i32) #1

declare dso_local i32 @tree_clear_udp_msg_constructor(i32) #1

declare dso_local i32 @tree_act_udp_msg(i32, i32) #1

declare dso_local i32 @tree_clear_udp_msg(i32) #1

declare dso_local %struct.TYPE_7__* @queue_get_first_raw_message(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rwm_free(%struct.raw_message*) #1

declare dso_local i64 @queue_del_first_raw_message(i64) #1

declare dso_local %struct.TYPE_6__* @queue_get_first_tmp_msg(i64) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i64 @queue_del_first_tmp_msg(i64) #1

declare dso_local i32 @remove_event_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @zfree(%struct.udp_target*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
