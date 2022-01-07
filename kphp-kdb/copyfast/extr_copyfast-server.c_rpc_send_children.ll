; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_rpc_send_children.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_rpc_send_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.rpc_children_answer = type { i32, i64, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"rpc_send_children\0A\00", align 1
@Q = common dso_local global i64 0, align 8
@RPC_TYPE_CHILDREN_ANSWER = common dso_local global i32 0, align 4
@children_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_send_children(%struct.connection* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpc_children_answer*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @verbosity, align 4
  %9 = icmp sge i32 %8, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @generate_children(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %49

19:                                               ; preds = %13
  %20 = load i64, i64* @Q, align 8
  %21 = inttoptr i64 %20 to %struct.rpc_children_answer*
  store %struct.rpc_children_answer* %21, %struct.rpc_children_answer** %7, align 8
  %22 = load %struct.rpc_children_answer*, %struct.rpc_children_answer** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = add i64 24, %25
  %27 = trunc i64 %26 to i32
  %28 = load %struct.connection*, %struct.connection** %4, align 8
  %29 = load i32, i32* @RPC_TYPE_CHILDREN_ANSWER, align 4
  %30 = call i32 @rpc_create_query(%struct.rpc_children_answer* %22, i32 %27, %struct.connection* %28, i32 %29)
  %31 = load %struct.rpc_children_answer*, %struct.rpc_children_answer** %7, align 8
  %32 = getelementptr inbounds %struct.rpc_children_answer, %struct.rpc_children_answer* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @children_list, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memcpy(i32 %33, i32 %34, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.rpc_children_answer*, %struct.rpc_children_answer** %7, align 8
  %42 = getelementptr inbounds %struct.rpc_children_answer, %struct.rpc_children_answer* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.rpc_children_answer*, %struct.rpc_children_answer** %7, align 8
  %45 = getelementptr inbounds %struct.rpc_children_answer, %struct.rpc_children_answer* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.rpc_children_answer*, %struct.rpc_children_answer** %7, align 8
  %47 = load %struct.connection*, %struct.connection** %4, align 8
  %48 = call i32 @rpc_send_query(%struct.rpc_children_answer* %46, %struct.connection* %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %19, %18
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @generate_children(i64) #1

declare dso_local i32 @rpc_create_query(%struct.rpc_children_answer*, i32, %struct.connection*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rpc_send_query(%struct.rpc_children_answer*, %struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
