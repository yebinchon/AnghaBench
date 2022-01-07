; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c___out_buf_add.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c___out_buf_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_message = type { i64 }

@out_buf_bytes = common dso_local global i64 0, align 8
@out_buf_init = common dso_local global i32 0, align 4
@out_buf_msg = common dso_local global %struct.raw_message zeroinitializer, align 8
@out_buf_first_int = common dso_local global i64 0, align 8
@out_buf_packets = common dso_local global i32 0, align 4
@out_buf_size = common dso_local global i64 0, align 8
@out_buf_start = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__out_buf_add(%struct.raw_message* %0, i32 %1) #0 {
  %3 = alloca %struct.raw_message*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.raw_message* %0, %struct.raw_message** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.raw_message*, %struct.raw_message** %3, align 8
  %7 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @out_buf_bytes, align 8
  %10 = add nsw i64 %9, %8
  store i64 %10, i64* @out_buf_bytes, align 8
  %11 = load i32, i32* @out_buf_init, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %2
  %14 = load %struct.raw_message*, %struct.raw_message** %3, align 8
  %15 = bitcast %struct.raw_message* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.raw_message* @out_buf_msg to i8*), i8* align 8 %15, i64 8, i1 false)
  %16 = load %struct.raw_message*, %struct.raw_message** %3, align 8
  %17 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* @out_buf_first_int, align 8
  store i32 1, i32* @out_buf_packets, align 4
  %19 = load %struct.raw_message*, %struct.raw_message** %3, align 8
  %20 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* @out_buf_size, align 8
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* @out_buf_start, align 4
  store i32 1, i32* @out_buf_init, align 4
  %23 = load %struct.raw_message*, %struct.raw_message** %3, align 8
  %24 = call i32 @memset(%struct.raw_message* %23, i32 0, i32 8)
  br label %45

25:                                               ; preds = %2
  %26 = load %struct.raw_message*, %struct.raw_message** %3, align 8
  %27 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %5, align 4
  %30 = call i32 @rwm_push_data(%struct.raw_message* @out_buf_msg, i32* %5, i32 4)
  %31 = load %struct.raw_message*, %struct.raw_message** %3, align 8
  %32 = call i32 @rwm_union(%struct.raw_message* @out_buf_msg, %struct.raw_message* %31)
  %33 = load i32, i32* @out_buf_packets, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @out_buf_packets, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @out_buf_size, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* @out_buf_size, align 8
  %40 = load i64, i64* @out_buf_size, align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.raw_message, %struct.raw_message* @out_buf_msg, i32 0, i32 0), align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  br label %45

45:                                               ; preds = %25, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.raw_message*, i32, i32) #2

declare dso_local i32 @rwm_push_data(%struct.raw_message*, i32*, i32) #2

declare dso_local i32 @rwm_union(%struct.raw_message*, %struct.raw_message*) #2

declare dso_local i32 @assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
