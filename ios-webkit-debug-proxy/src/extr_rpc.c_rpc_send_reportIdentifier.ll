; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_send_reportIdentifier.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_send_reportIdentifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RPC_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"_rpc_reportIdentifier:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_send_reportIdentifier(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @RPC_ERROR, align 4
  store i32 %12, i32* %3, align 4
  br label %23

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @rpc_new_args(i8* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @rpc_send_msg(i32 %16, i8* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @plist_free(i32 %20)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %13, %11
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @rpc_new_args(i8*) #1

declare dso_local i32 @rpc_send_msg(i32, i8*, i32) #1

declare dso_local i32 @plist_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
