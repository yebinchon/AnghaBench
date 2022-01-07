; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_send_forwardSocketData.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_send_forwardSocketData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RPC_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"_rpc_forwardSocketData:\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"WIRApplicationIdentifierKey\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"WIRPageIdentifierKey\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"WIRSenderKey\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"WIRSocketDataKey\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_send_forwardSocketData(i32 %0, i8* %1, i8* %2, i32 %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %7
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i8*, i8** %13, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %14, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27, %24, %21, %7
  %31 = load i32, i32* @RPC_ERROR, align 4
  store i32 %31, i32* %8, align 4
  br label %59

32:                                               ; preds = %27
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @rpc_new_args(i8* %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @plist_new_string(i8* %36)
  %38 = call i32 @plist_dict_set_item(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @plist_new_uint(i32 %40)
  %42 = call i32 @plist_dict_set_item(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %17, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 @plist_new_string(i8* %44)
  %46 = call i32 @plist_dict_set_item(i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %17, align 4
  %48 = load i8*, i8** %14, align 8
  %49 = load i64, i64* %15, align 8
  %50 = call i32 @plist_new_data(i8* %48, i64 %49)
  %51 = call i32 @plist_dict_set_item(i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i8*, i8** %16, align 8
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @rpc_send_msg(i32 %52, i8* %53, i32 %54)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %17, align 4
  %57 = call i32 @plist_free(i32 %56)
  %58 = load i32, i32* %18, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %32, %30
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i32 @rpc_new_args(i8*) #1

declare dso_local i32 @plist_dict_set_item(i32, i8*, i32) #1

declare dso_local i32 @plist_new_string(i8*) #1

declare dso_local i32 @plist_new_uint(i32) #1

declare dso_local i32 @plist_new_data(i8*, i64) #1

declare dso_local i32 @rpc_send_msg(i32, i8*, i32) #1

declare dso_local i32 @plist_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
