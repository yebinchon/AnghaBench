; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_parse_app.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_parse_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"WIRApplicationIdentifierKey\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"WIRApplicationNameKey\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"WIRIsApplicationProxyKey\00", align 1
@RPC_ERROR = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_parse_app(i32 %0, %struct.TYPE_5__** %1) #0 {
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
  %10 = call %struct.TYPE_5__* (...) @rpc_new_app()
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi %struct.TYPE_5__* [ %10, %9 ], [ null, %11 ]
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = call i64 @rpc_dict_get_required_string(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = call i64 @rpc_dict_get_optional_string(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i64 @rpc_dict_get_optional_bool(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28, %22, %16, %12
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = call i32 @rpc_free_app(%struct.TYPE_5__* %35)
  %37 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %38 = icmp ne %struct.TYPE_5__** %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %40, align 8
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i32, i32* @RPC_ERROR, align 4
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %28
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %45, align 8
  %46 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %41
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_5__* @rpc_new_app(...) #1

declare dso_local i64 @rpc_dict_get_required_string(i32, i8*, i32*) #1

declare dso_local i64 @rpc_dict_get_optional_string(i32, i8*, i32*) #1

declare dso_local i64 @rpc_dict_get_optional_bool(i32, i8*, i32*) #1

declare dso_local i32 @rpc_free_app(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
