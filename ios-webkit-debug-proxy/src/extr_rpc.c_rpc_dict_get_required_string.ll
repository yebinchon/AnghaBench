; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_dict_get_required_string.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_dict_get_required_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RPC_ERROR = common dso_local global i32 0, align 4
@PLIST_STRING = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_dict_get_required_string(i32 %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i8**, i8*** %7, align 8
  %16 = icmp ne i8** %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %11, %3
  %18 = load i32, i32* @RPC_ERROR, align 4
  store i32 %18, i32* %4, align 4
  br label %34

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @plist_dict_get_item(i32 %20, i8* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @plist_get_node_type(i32 %23)
  %25 = load i64, i64* @PLIST_STRING, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @RPC_ERROR, align 4
  store i32 %28, i32* %4, align 4
  br label %34

29:                                               ; preds = %19
  %30 = load i32, i32* %8, align 4
  %31 = load i8**, i8*** %7, align 8
  %32 = call i32 @plist_get_string_val(i32 %30, i8** %31)
  %33 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %27, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @plist_dict_get_item(i32, i8*) #1

declare dso_local i64 @plist_get_node_type(i32) #1

declare dso_local i32 @plist_get_string_val(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
