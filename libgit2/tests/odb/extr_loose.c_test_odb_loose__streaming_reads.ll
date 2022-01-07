; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_loose.c_test_odb_loose__streaming_reads.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_loose.c_test_odb_loose__streaming_reads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_odb_loose__streaming_reads.blocksizes = private unnamed_addr constant [7 x i64] [i64 1, i64 2, i64 4, i64 16, i64 99, i64 1024, i64 123456789], align 16
@commit = common dso_local global i32 0, align 4
@tree = common dso_local global i32 0, align 4
@tag = common dso_local global i32 0, align 4
@zero = common dso_local global i32 0, align 4
@one = common dso_local global i32 0, align 4
@two = common dso_local global i32 0, align 4
@some = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_loose__streaming_reads() #0 {
  %1 = alloca [7 x i64], align 16
  %2 = alloca i64, align 8
  %3 = bitcast [7 x i64]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([7 x i64]* @__const.test_odb_loose__streaming_reads.blocksizes to i8*), i64 56, i1 false)
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %38, %0
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds [7 x i64], [7 x i64]* %1, i64 0, i64 0
  %7 = call i64 @ARRAY_SIZE(i64* %6)
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %41

9:                                                ; preds = %4
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds [7 x i64], [7 x i64]* %1, i64 0, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @test_readstream_object(i32* @commit, i64 %12)
  %14 = load i64, i64* %2, align 8
  %15 = getelementptr inbounds [7 x i64], [7 x i64]* %1, i64 0, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @test_readstream_object(i32* @tree, i64 %16)
  %18 = load i64, i64* %2, align 8
  %19 = getelementptr inbounds [7 x i64], [7 x i64]* %1, i64 0, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @test_readstream_object(i32* @tag, i64 %20)
  %22 = load i64, i64* %2, align 8
  %23 = getelementptr inbounds [7 x i64], [7 x i64]* %1, i64 0, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @test_readstream_object(i32* @zero, i64 %24)
  %26 = load i64, i64* %2, align 8
  %27 = getelementptr inbounds [7 x i64], [7 x i64]* %1, i64 0, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @test_readstream_object(i32* @one, i64 %28)
  %30 = load i64, i64* %2, align 8
  %31 = getelementptr inbounds [7 x i64], [7 x i64]* %1, i64 0, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @test_readstream_object(i32* @two, i64 %32)
  %34 = load i64, i64* %2, align 8
  %35 = getelementptr inbounds [7 x i64], [7 x i64]* %1, i64 0, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @test_readstream_object(i32* @some, i64 %36)
  br label %38

38:                                               ; preds = %9
  %39 = load i64, i64* %2, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %2, align 8
  br label %4

41:                                               ; preds = %4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #2

declare dso_local i32 @test_readstream_object(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
