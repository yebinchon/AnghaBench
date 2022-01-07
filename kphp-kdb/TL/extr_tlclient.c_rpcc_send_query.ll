; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_rpcc_send_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_rpcc_send_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.connection*)* }

@req_id = common dso_local global i32 0, align 4
@additional = common dso_local global i32 0, align 4
@P = common dso_local global i32* null, align 8
@RPC_INVOKE_REQ = common dso_local global i32 0, align 4
@auth_key_id = common dso_local global i32 0, align 4
@session_id = common dso_local global i32 0, align 4
@msg_id = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Sending:\0A\00", align 1
@expect_input = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcc_send_query(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @req_id, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @req_id, align 4
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, 6
  %9 = load i32, i32* @additional, align 4
  %10 = add nsw i32 %8, %9
  %11 = mul nsw i32 4, %10
  %12 = load i32*, i32** @P, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.connection*, %struct.connection** %3, align 8
  %15 = call %struct.TYPE_4__* @RPCC_DATA(%struct.connection* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load i32*, i32** @P, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @RPC_INVOKE_REQ, align 4
  %22 = load i32*, i32** @P, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %21, i32* %23, align 4
  %24 = load i32*, i32** @P, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = call i32 @memcpy(i32* %25, i32* @req_id, i32 8)
  %27 = load i32, i32* @additional, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %2
  %30 = load i32*, i32** @P, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 5
  %32 = call i32 @memcpy(i32* %31, i32* @auth_key_id, i32 8)
  %33 = load i32*, i32** @P, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 7
  %35 = call i32 @memcpy(i32* %34, i32* @session_id, i32 8)
  %36 = load i32, i32* @msg_id, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @msg_id, align 4
  %38 = load i32*, i32** @P, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 9
  %40 = call i32 @memcpy(i32* %39, i32* @msg_id, i32 8)
  br label %41

41:                                               ; preds = %29, %2
  %42 = load i32*, i32** @P, align 8
  %43 = load i32*, i32** @P, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 4
  %47 = call i32 @compute_crc32(i32* %42, i32 %46)
  %48 = load i32*, i32** @P, align 8
  %49 = load i32*, i32** @P, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %48, i64 %54
  store i32 %47, i32* %55, align 4
  %56 = load %struct.connection*, %struct.connection** %3, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 0
  %58 = load i32*, i32** @P, align 8
  %59 = load i32*, i32** @P, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @write_out(i32* %57, i32* %58, i32 %61)
  %63 = load %struct.connection*, %struct.connection** %3, align 8
  %64 = call %struct.TYPE_3__* @RPCC_FUNC(%struct.connection* %63)
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %65, align 8
  %67 = load %struct.connection*, %struct.connection** %3, align 8
  %68 = call i32 %66(%struct.connection* %67)
  %69 = load i32, i32* @verbosity, align 4
  %70 = icmp sge i32 %69, 4
  br i1 %70, label %71, label %76

71:                                               ; preds = %41
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %74 = load i32*, i32** @P, align 8
  %75 = call i32 @dump_rpc_packet(i32* %74)
  br label %76

76:                                               ; preds = %71, %41
  store i64 0, i64* @expect_input, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_4__* @RPCC_DATA(%struct.connection*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @compute_crc32(i32*, i32) #1

declare dso_local i32 @write_out(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_3__* @RPCC_FUNC(%struct.connection*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @dump_rpc_packet(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
