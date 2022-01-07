; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-rpc.c_rpc_send_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-rpc.c_rpc_send_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.connection*)* }

@.str = private unnamed_addr constant [36 x i8] c"sending query... len = %d, op = %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"c = %p, server_check_ready = %d (cr_ok = %d)\0A\00", align 1
@cr_ok = common dso_local global i32 0, align 4
@MAX_PACKET_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"message_sent\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_send_query(i8* %0, %struct.connection* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.connection* %1, %struct.connection** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.connection*, %struct.connection** %4, align 8
  %16 = load %struct.connection*, %struct.connection** %4, align 8
  %17 = call i32 @server_check_ready(%struct.connection* %16)
  %18 = load i32, i32* @cr_ok, align 4
  %19 = call i32 (i32, i8*, ...) @vkprintf(i32 6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.connection* %15, i32 %17, i32 %18)
  %20 = load %struct.connection*, %struct.connection** %4, align 8
  %21 = icmp ne %struct.connection* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.connection*, %struct.connection** %4, align 8
  %24 = call i32 @server_check_ready(%struct.connection* %23)
  %25 = load i32, i32* @cr_ok, align 4
  %26 = icmp eq i32 %24, %25
  br label %27

27:                                               ; preds = %22, %2
  %28 = phi i1 [ false, %2 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MAX_PACKET_LEN, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 16
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = srem i32 %44, 4
  %46 = icmp eq i32 %45, 0
  br label %47

47:                                               ; preds = %41, %36, %27
  %48 = phi i1 [ false, %36 ], [ false, %27 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 4
  %56 = call i32 @compute_crc32(i32* %51, i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 2
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %57, i64 %63
  store i32 %56, i32* %64, align 4
  %65 = load %struct.connection*, %struct.connection** %4, align 8
  %66 = getelementptr inbounds %struct.connection, %struct.connection* %65, i32 0, i32 0
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @write_out(i32* %66, i32* %67, i32 %70)
  %72 = load %struct.connection*, %struct.connection** %4, align 8
  %73 = call %struct.TYPE_2__* @RPCS_FUNC(%struct.connection* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %74, align 8
  %76 = load %struct.connection*, %struct.connection** %4, align 8
  %77 = call i32 %75(%struct.connection* %76)
  %78 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @server_check_ready(%struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @compute_crc32(i32*, i32) #1

declare dso_local i32 @write_out(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @RPCS_FUNC(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
