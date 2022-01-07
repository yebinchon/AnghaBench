; ModuleID = '/home/carl/AnghaBench/git/extr_remote-curl.c_rpc_in.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-curl.c_rpc_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_in_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CURLINFO_RESPONSE_CODE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @rpc_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rpc_in(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rpc_in_data*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = mul i64 %13, %14
  store i64 %15, i64* %10, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.rpc_in_data*
  store %struct.rpc_in_data* %17, %struct.rpc_in_data** %11, align 8
  %18 = load %struct.rpc_in_data*, %struct.rpc_in_data** %11, align 8
  %19 = getelementptr inbounds %struct.rpc_in_data, %struct.rpc_in_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CURLINFO_RESPONSE_CODE, align 4
  %24 = call i64 @curl_easy_getinfo(i32 %22, i32 %23, i64* %12)
  %25 = load i64, i64* @CURLE_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i64, i64* %10, align 8
  store i64 %28, i64* %5, align 8
  br label %52

29:                                               ; preds = %4
  %30 = load i64, i64* %12, align 8
  %31 = icmp sge i64 %30, 300
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %5, align 8
  br label %52

34:                                               ; preds = %29
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.rpc_in_data*, %struct.rpc_in_data** %11, align 8
  %39 = getelementptr inbounds %struct.rpc_in_data, %struct.rpc_in_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load %struct.rpc_in_data*, %struct.rpc_in_data** %11, align 8
  %44 = getelementptr inbounds %struct.rpc_in_data, %struct.rpc_in_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @write_or_die(i32 %47, i8* %48, i64 %49)
  %51 = load i64, i64* %10, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %42, %32, %27
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

declare dso_local i64 @curl_easy_getinfo(i32, i32, i64*) #1

declare dso_local i32 @write_or_die(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
