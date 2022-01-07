; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c_answer_tx.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c_answer_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_id = type { i32 }
%struct.secure_receive_answer = type { i64, i32, i32, i32, i32, i32, %struct.process_id, i64 }

@secure_receive_answer_tree = common dso_local global i32 0, align 4
@secure_answer_allocated = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @answer_tx(i64 %0, %struct.process_id* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.process_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.secure_receive_answer*, align 8
  store i64 %0, i64* %6, align 8
  store %struct.process_id* %1, %struct.process_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = call %struct.secure_receive_answer* @zmalloc(i32 40)
  store %struct.secure_receive_answer* %12, %struct.secure_receive_answer** %11, align 8
  %13 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %11, align 8
  %14 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %13, i32 0, i32 7
  store i64 0, i64* %14, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %11, align 8
  %17 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %11, align 8
  %19 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %18, i32 0, i32 6
  %20 = load %struct.process_id*, %struct.process_id** %7, align 8
  %21 = bitcast %struct.process_id* %19 to i8*
  %22 = bitcast %struct.process_id* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %11, align 8
  %25 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %11, align 8
  %27 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %26, i32 0, i32 2
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %11, align 8
  %30 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %11, align 8
  %32 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @malloc(i32 %33)
  %35 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %11, align 8
  %36 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %11, align 8
  %38 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @memcpy(i32 %39, i32* %40, i32 %41)
  %43 = load i32, i32* @secure_receive_answer_tree, align 4
  %44 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %11, align 8
  %45 = call i32 (...) @lrand48()
  %46 = call i32 @tree_insert_secure_receive_answer(i32 %43, %struct.secure_receive_answer* %44, i32 %45)
  store i32 %46, i32* @secure_receive_answer_tree, align 4
  %47 = load i32, i32* @secure_answer_allocated, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @secure_answer_allocated, align 4
  %49 = call i32 (...) @log_cur_pos()
  %50 = call i32 @insert_binlog_pos(i32 %49, i32 1)
  %51 = call i32 (...) @log_cur_pos()
  %52 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %11, align 8
  %53 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  ret void
}

declare dso_local %struct.secure_receive_answer* @zmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @tree_insert_secure_receive_answer(i32, %struct.secure_receive_answer*, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @insert_binlog_pos(i32, i32) #1

declare dso_local i32 @log_cur_pos(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
