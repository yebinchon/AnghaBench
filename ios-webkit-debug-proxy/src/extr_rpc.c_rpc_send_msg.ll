; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_send_msg.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32)* }

@RPC_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"__selector\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"__argument\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_send_msg(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @RPC_ERROR, align 4
  store i32 %16, i32* %4, align 4
  br label %36

17:                                               ; preds = %12
  %18 = call i32 (...) @plist_new_dict()
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @plist_new_string(i8* %20)
  %22 = call i32 @plist_dict_set_item(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @plist_copy(i32 %24)
  %26 = call i32 @plist_dict_set_item(i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %28, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 %29(%struct.TYPE_4__* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @plist_free(i32 %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %17, %15
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @plist_new_dict(...) #1

declare dso_local i32 @plist_dict_set_item(i32, i8*, i32) #1

declare dso_local i32 @plist_new_string(i8*) #1

declare dso_local i32 @plist_copy(i32) #1

declare dso_local i32 @plist_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
