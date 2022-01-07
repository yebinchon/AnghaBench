; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_parse_page.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_parse_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"WIRPageIdentifierKey\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"WIRConnectionIdentifierKey\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"WIRTitleKey\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"WIRURLKey\00", align 1
@RPC_ERROR = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_parse_page(i32 %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  %7 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %8 = icmp ne %struct.TYPE_5__** %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call %struct.TYPE_5__* (...) @rpc_new_page()
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi %struct.TYPE_5__* [ %10, %9 ], [ null, %11 ]
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = call i64 @rpc_dict_get_required_uint(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = call i64 @rpc_dict_get_optional_string(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = call i64 @rpc_dict_get_optional_string(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i64 @rpc_dict_get_optional_string(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34, %28, %22, %16, %12
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = call i32 @rpc_free_page(%struct.TYPE_5__* %41)
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %44 = icmp ne %struct.TYPE_5__** %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %46, align 8
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32, i32* @RPC_ERROR, align 4
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %34
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %51, align 8
  %52 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %47
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_5__* @rpc_new_page(...) #1

declare dso_local i64 @rpc_dict_get_required_uint(i32, i8*, i32*) #1

declare dso_local i64 @rpc_dict_get_optional_string(i32, i8*, i32*) #1

declare dso_local i32 @rpc_free_page(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
