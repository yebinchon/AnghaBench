; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_default_string_forward_ext.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_default_string_forward_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cluster_bucket = type { i32 }

@MAX_KEY_LEN = common dso_local global i32 0, align 4
@TL_ERROR_PROXY_NO_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Can not find target for key %.*s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @default_string_forward_ext() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_cluster_bucket*, align 8
  %7 = call i32 (...) @tl_fetch_int()
  %8 = load i32, i32* @MAX_KEY_LEN, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* @MAX_KEY_LEN, align 4
  %14 = call i32 @tl_fetch_string0(i8* %12, i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 (...) @tl_fetch_mark_delete()
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %44

19:                                               ; preds = %0
  %20 = call i32 (...) @tl_fetch_mark_restore()
  %21 = load i32, i32* %2, align 4
  %22 = call %struct.rpc_cluster_bucket* @calculate_key_target(i8* %12, i32 %21)
  store %struct.rpc_cluster_bucket* %22, %struct.rpc_cluster_bucket** %6, align 8
  %23 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %6, align 8
  %24 = icmp ne %struct.rpc_cluster_bucket* %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @TL_ERROR_PROXY_NO_TARGET, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp sle i32 %27, 30
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %2, align 4
  br label %32

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 27, %31 ]
  %34 = load i32, i32* %2, align 4
  %35 = icmp sle i32 %34, 30
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %38 = call i32 @tl_fetch_set_error_format(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33, i8* %12, i8* %37)
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %44

39:                                               ; preds = %19
  %40 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %6, align 8
  %41 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @query_forward(i32 %42)
  store i32 %43, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %32, %17
  %45 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32 @tl_fetch_int(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @tl_fetch_string0(i8*, i32) #1

declare dso_local i32 @tl_fetch_mark_delete(...) #1

declare dso_local i32 @tl_fetch_mark_restore(...) #1

declare dso_local %struct.rpc_cluster_bucket* @calculate_key_target(i8*, i32) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @query_forward(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
