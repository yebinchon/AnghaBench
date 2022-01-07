; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-common.c_rpc_create_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-common.c_rpc_create_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_2__ = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"creating query... len = %d, op = %x\0A\00", align 1
@MAX_PACKET_LEN = common dso_local global i32 0, align 4
@cr_ok = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"not_created: connection_failedn\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_create_query(i8* %0, i32 %1, %struct.connection* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.connection*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.connection* %2, %struct.connection** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @verbosity, align 4
  %12 = icmp sge i32 %11, 4
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i32, i32* @stderr, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @MAX_PACKET_LEN, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = icmp sge i32 %23, 16
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.connection*, %struct.connection** %8, align 8
  %30 = icmp ne %struct.connection* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.connection*, %struct.connection** %8, align 8
  %33 = call i64 @server_check_ready(%struct.connection* %32)
  %34 = load i64, i64* @cr_ok, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %31, %25
  %37 = load i32, i32* @verbosity, align 4
  %38 = icmp sge i32 %37, 4
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %36
  store i32 -1, i32* %5, align 4
  br label %59

43:                                               ; preds = %31
  %44 = load i8*, i8** %6, align 8
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.connection*, %struct.connection** %8, align 8
  %50 = call %struct.TYPE_2__* @RPCS_DATA(%struct.connection* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %43, %42
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @server_check_ready(%struct.connection*) #1

declare dso_local %struct.TYPE_2__* @RPCS_DATA(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
