; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-rpc.c_rpc_out_cstring.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-rpc.c_rpc_out_cstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"rpc_out_cstring (len: %lld)\0A\00", align 1
@packet_ptr = common dso_local global i32* null, align 8
@packet_buffer = common dso_local global i64 0, align 8
@PACKET_BUFFER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_out_cstring(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %6)
  %8 = load i64, i64* %4, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = icmp slt i64 %11, 16777216
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i1 [ false, %2 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32*, i32** @packet_ptr, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = getelementptr inbounds i8, i8* %20, i64 8
  %22 = load i64, i64* @packet_buffer, align 8
  %23 = load i64, i64* @PACKET_BUFFER_SIZE, align 8
  %24 = add nsw i64 %22, %23
  %25 = inttoptr i64 %24 to i8*
  %26 = icmp ult i8* %21, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32*, i32** @packet_ptr, align 8
  %30 = bitcast i32* %29 to i8*
  store i8* %30, i8** %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp slt i64 %31, 254
  br i1 %32, label %33, label %38

33:                                               ; preds = %13
  %34 = load i64, i64* %4, align 8
  %35 = trunc i64 %34 to i8
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  store i8 %35, i8* %36, align 1
  br label %46

38:                                               ; preds = %13
  %39 = load i64, i64* %4, align 8
  %40 = shl i64 %39, 8
  %41 = add nsw i64 %40, 254
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** @packet_ptr, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %38, %33
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @memcpy(i8* %47, i8* %48, i64 %49)
  %51 = load i64, i64* %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 %51
  store i8* %53, i8** %5, align 8
  br label %54

54:                                               ; preds = %59, %46
  %55 = load i8*, i8** %5, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = and i64 %56, 3
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %5, align 8
  store i8 0, i8* %60, align 1
  br label %54

62:                                               ; preds = %54
  %63 = load i8*, i8** %5, align 8
  %64 = bitcast i8* %63 to i32*
  store i32* %64, i32** @packet_ptr, align 8
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
