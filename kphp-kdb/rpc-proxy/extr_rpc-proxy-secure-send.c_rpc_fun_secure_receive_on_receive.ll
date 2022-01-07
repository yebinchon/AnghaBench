; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c_rpc_fun_secure_receive_on_receive.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c_rpc_fun_secure_receive_on_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.secure_receive_answer = type { i32, i32, i32, i64, i32, i32 }
%struct.tree_secure_receive_answer = type { %struct.secure_receive_answer* }

@CQ = common dso_local global %struct.TYPE_4__* null, align 8
@secure_receive_answer_tree = common dso_local global i32 0, align 4
@RPC_FUN_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_fun_secure_receive_on_receive(i8** %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.secure_receive_answer, align 8
  %7 = alloca %struct.tree_secure_receive_answer*, align 8
  %8 = alloca %struct.secure_receive_answer*, align 8
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CQ, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %6, i32 0, i32 5
  store i32 %13, i32* %14, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CQ, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %6, i32 0, i32 4
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @secure_receive_answer_tree, align 4
  %21 = call %struct.tree_secure_receive_answer* @tree_lookup_secure_receive_answer(i32 %20, %struct.secure_receive_answer* %6)
  store %struct.tree_secure_receive_answer* %21, %struct.tree_secure_receive_answer** %7, align 8
  %22 = load %struct.tree_secure_receive_answer*, %struct.tree_secure_receive_answer** %7, align 8
  %23 = icmp ne %struct.tree_secure_receive_answer* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @RPC_FUN_NEXT, align 4
  br label %67

26:                                               ; preds = %2
  %27 = load %struct.tree_secure_receive_answer*, %struct.tree_secure_receive_answer** %7, align 8
  %28 = getelementptr inbounds %struct.tree_secure_receive_answer, %struct.tree_secure_receive_answer* %27, i32 0, i32 0
  %29 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %28, align 8
  store %struct.secure_receive_answer* %29, %struct.secure_receive_answer** %8, align 8
  %30 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %8, align 8
  %31 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CQ, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CQ, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CQ, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @tl_init_store(i32 %36, i32* %39, i32 %44)
  %46 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %8, align 8
  %47 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %26
  %51 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %8, align 8
  %52 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @tl_store_header(i64 %53)
  br label %55

55:                                               ; preds = %50, %26
  %56 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %8, align 8
  %57 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %8, align 8
  %60 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @tl_store_raw_data(i32 %58, i32 %61)
  %63 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %8, align 8
  %64 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @tl_store_end_ext(i32 %65)
  store i32 -1, i32* %3, align 4
  br label %67

67:                                               ; preds = %55, %24
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.tree_secure_receive_answer* @tree_lookup_secure_receive_answer(i32, %struct.secure_receive_answer*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_init_store(i32, i32*, i32) #1

declare dso_local i32 @tl_store_header(i64) #1

declare dso_local i32 @tl_store_raw_data(i32, i32) #1

declare dso_local i32 @tl_store_end_ext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
