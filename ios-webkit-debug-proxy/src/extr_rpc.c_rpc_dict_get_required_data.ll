; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_dict_get_required_data.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_dict_get_required_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RPC_ERROR = common dso_local global i32 0, align 4
@PLIST_DATA = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_dict_get_required_data(i32 %0, i8* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i8**, i8*** %8, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64*, i64** %9, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %18, %15, %4
  %25 = load i32, i32* @RPC_ERROR, align 4
  store i32 %25, i32* %5, align 4
  br label %54

26:                                               ; preds = %21
  %27 = load i8**, i8*** %8, align 8
  store i8* null, i8** %27, align 8
  %28 = load i64*, i64** %9, align 8
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @plist_dict_get_item(i32 %29, i8* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @plist_get_node_type(i32 %32)
  %34 = load i64, i64* @PLIST_DATA, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @RPC_ERROR, align 4
  store i32 %37, i32* %5, align 4
  br label %54

38:                                               ; preds = %26
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @plist_get_data_val(i32 %39, i8** %11, i64* %12)
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @UINT32_MAX, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32, i32* @RPC_ERROR, align 4
  store i32 %47, i32* %5, align 4
  br label %54

48:                                               ; preds = %38
  %49 = load i8*, i8** %11, align 8
  %50 = load i8**, i8*** %8, align 8
  store i8* %49, i8** %50, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i64*, i64** %9, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %48, %44, %36, %24
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @plist_dict_get_item(i32, i8*) #1

declare dso_local i64 @plist_get_node_type(i32) #1

declare dso_local i32 @plist_get_data_val(i32, i8**, i64*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
