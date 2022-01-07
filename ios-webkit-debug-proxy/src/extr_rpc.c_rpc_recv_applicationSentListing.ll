; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_recv_applicationSentListing.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_recv_applicationSentListing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i8*, i32*)* }

@.str = private unnamed_addr constant [14 x i8] c"WIRListingKey\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"WIRApplicationIdentifierKey\00", align 1
@RPC_SUCCESS = common dso_local global i32 0, align 4
@RPC_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_recv_applicationSentListing(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  store i32* null, i32** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @plist_dict_get_item(i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @rpc_dict_get_required_string(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %5)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @rpc_parse_pages(i32 %15, i32** %6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_4__*, i8*, i32*)*, i32 (%struct.TYPE_4__*, i8*, i32*)** %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 %21(%struct.TYPE_4__* %22, i8* %23, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %28, i32* %8, align 4
  br label %31

29:                                               ; preds = %18, %14, %2
  %30 = load i32, i32* @RPC_ERROR, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @rpc_free_pages(i32* %34)
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local i32 @plist_dict_get_item(i32, i8*) #1

declare dso_local i32 @rpc_dict_get_required_string(i32, i8*, i8**) #1

declare dso_local i32 @rpc_parse_pages(i32, i32**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @rpc_free_pages(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
