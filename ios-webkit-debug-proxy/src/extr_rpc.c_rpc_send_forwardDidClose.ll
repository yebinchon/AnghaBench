; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_send_forwardDidClose.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_send_forwardDidClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RPC_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"_rpc_forwardDidClose:\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"WIRApplicationIdentifierKey\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"WIRPageIdentifierKey\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"WIRSenderKey\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_send_forwardDidClose(i32 %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20, %17, %5
  %24 = load i32, i32* @RPC_ERROR, align 4
  store i32 %24, i32* %6, align 4
  br label %47

25:                                               ; preds = %20
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @rpc_new_args(i8* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @plist_new_string(i8* %29)
  %31 = call i32 @plist_dict_set_item(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @plist_new_uint(i32 %33)
  %35 = call i32 @plist_dict_set_item(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %13, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @plist_new_string(i8* %37)
  %39 = call i32 @plist_dict_set_item(i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @rpc_send_msg(i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @plist_free(i32 %44)
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %25, %23
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @rpc_new_args(i8*) #1

declare dso_local i32 @plist_dict_set_item(i32, i8*, i32) #1

declare dso_local i32 @plist_new_string(i8*) #1

declare dso_local i32 @plist_new_uint(i32) #1

declare dso_local i32 @rpc_send_msg(i32, i8*, i32) #1

declare dso_local i32 @plist_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
