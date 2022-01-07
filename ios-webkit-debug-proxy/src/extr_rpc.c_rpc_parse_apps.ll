; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_parse_apps.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_parse_apps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@RPC_ERROR = common dso_local global i32 0, align 4
@PLIST_DICT = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_parse_apps(i32* %0, %struct.TYPE_5__*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__***, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__*** %1, %struct.TYPE_5__**** %5, align 8
  %14 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %5, align 8
  %15 = icmp ne %struct.TYPE_5__*** %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @RPC_ERROR, align 4
  store i32 %17, i32* %3, align 4
  br label %95

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %5, align 8
  store %struct.TYPE_5__** null, %struct.TYPE_5__*** %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @plist_get_node_type(i32* %20)
  %22 = load i64, i64* @PLIST_DICT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @RPC_ERROR, align 4
  store i32 %25, i32* %3, align 4
  br label %95

26:                                               ; preds = %18
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @plist_dict_get_size(i32* %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, 1
  %31 = call i64 @calloc(i64 %30, i32 8)
  %32 = inttoptr i64 %31 to %struct.TYPE_5__**
  store %struct.TYPE_5__** %32, %struct.TYPE_5__*** %7, align 8
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %34 = icmp ne %struct.TYPE_5__** %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @RPC_ERROR, align 4
  store i32 %36, i32* %3, align 4
  br label %95

37:                                               ; preds = %26
  store i8* null, i8** %8, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @plist_dict_new_iter(i32* %38, i8** %8)
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %43

43:                                               ; preds = %79, %37
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %47, %43
  %51 = phi i1 [ false, %43 ], [ %49, %47 ]
  br i1 %51, label %52, label %82

52:                                               ; preds = %50
  store i8* null, i8** %11, align 8
  store i32* null, i32** %12, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @plist_dict_next_item(i32* %53, i8* %54, i8** %11, i32** %12)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %13, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @rpc_parse_app(i32* %59, %struct.TYPE_5__** %13)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strcmp(i8* %63, i32 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %62, %58, %52
  %71 = phi i1 [ false, %58 ], [ false, %52 ], [ %69, %62 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %9, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %74 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %74, i64 %75
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %76, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @free(i8* %77)
  br label %79

79:                                               ; preds = %70
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %10, align 8
  br label %43

82:                                               ; preds = %50
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %89 = call i32 @rpc_free_apps(%struct.TYPE_5__** %88)
  %90 = load i32, i32* @RPC_ERROR, align 4
  store i32 %90, i32* %3, align 4
  br label %95

91:                                               ; preds = %82
  %92 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %93 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %5, align 8
  store %struct.TYPE_5__** %92, %struct.TYPE_5__*** %93, align 8
  %94 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %87, %35, %24, %16
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @plist_get_node_type(i32*) #1

declare dso_local i64 @plist_dict_get_size(i32*) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @plist_dict_new_iter(i32*, i8**) #1

declare dso_local i32 @plist_dict_next_item(i32*, i8*, i8**, i32**) #1

declare dso_local i32 @rpc_parse_app(i32*, %struct.TYPE_5__**) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @rpc_free_apps(%struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
