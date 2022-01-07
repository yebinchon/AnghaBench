; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_send_forwardGetListing.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_send_forwardGetListing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RPC_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"_rpc_forwardGetListing:\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"WIRApplicationIdentifierKey\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_send_forwardGetListing(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @RPC_ERROR, align 4
  store i32 %17, i32* %4, align 4
  br label %32

18:                                               ; preds = %13
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @rpc_new_args(i8* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @plist_new_string(i8* %22)
  %24 = call i32 @plist_dict_set_item(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @rpc_send_msg(i32 %25, i8* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @plist_free(i32 %29)
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %18, %16
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @rpc_new_args(i8*) #1

declare dso_local i32 @plist_dict_set_item(i32, i8*, i32) #1

declare dso_local i32 @plist_new_string(i8*) #1

declare dso_local i32 @rpc_send_msg(i32, i8*, i32) #1

declare dso_local i32 @plist_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
