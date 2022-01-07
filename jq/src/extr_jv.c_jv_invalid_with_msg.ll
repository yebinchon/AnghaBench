; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jv_invalid_with_msg.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jv_invalid_with_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__ }

@JV_KIND_NULL = common dso_local global i32 0, align 4
@JV_INVALID = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@JV_REFCNT_INIT = common dso_local global i32 0, align 4
@JVP_FLAGS_INVALID_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jv_invalid_with_msg(%struct.TYPE_11__* noalias sret %0, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = load i32, i32* @JV_KIND_NULL, align 4
  %6 = call i64 @JVP_HAS_KIND(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %1, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = bitcast %struct.TYPE_11__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_11__* @JV_INVALID to i8*), i64 24, i1 false)
  br label %33

10:                                               ; preds = %2
  %11 = call %struct.TYPE_10__* @jv_mem_alloc(i32 32)
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %3, align 8
  %12 = load i32, i32* @JV_REFCNT_INIT, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = bitcast %struct.TYPE_11__* %16 to i8*
  %18 = bitcast %struct.TYPE_11__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* @JVP_FLAGS_INVALID_MSG, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %20, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = ptrtoint i32* %29 to i32
  store i32 %30, i32* %27, align 4
  %31 = bitcast %struct.TYPE_11__* %0 to i8*
  %32 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 24, i1 false)
  br label %33

33:                                               ; preds = %10, %8
  ret void
}

declare dso_local i64 @JVP_HAS_KIND(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_10__* @jv_mem_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
