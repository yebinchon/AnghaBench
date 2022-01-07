; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_parse_pages.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_parse_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@PLIST_DICT = common dso_local global i64 0, align 8
@RPC_ERROR = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_parse_pages(i32* %0, %struct.TYPE_5__*** %1) #0 {
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
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %5, align 8
  %18 = icmp ne %struct.TYPE_5__*** %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @plist_get_node_type(i32* %20)
  %22 = load i64, i64* @PLIST_DICT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %16, %2
  %25 = load i32, i32* @RPC_ERROR, align 4
  store i32 %25, i32* %3, align 4
  br label %95

26:                                               ; preds = %19
  %27 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %5, align 8
  store %struct.TYPE_5__** null, %struct.TYPE_5__*** %27, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @plist_dict_get_size(i32* %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 1
  %32 = call i64 @calloc(i64 %31, i32 8)
  %33 = inttoptr i64 %32 to %struct.TYPE_5__**
  store %struct.TYPE_5__** %33, %struct.TYPE_5__*** %7, align 8
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %35 = icmp ne %struct.TYPE_5__** %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @RPC_ERROR, align 4
  store i32 %37, i32* %3, align 4
  br label %95

38:                                               ; preds = %26
  store i8* null, i8** %8, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @plist_dict_new_iter(i32* %39, i8** %8)
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %79, %38
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi i1 [ false, %44 ], [ %50, %48 ]
  br i1 %52, label %53, label %82

53:                                               ; preds = %51
  store i8* null, i8** %11, align 8
  store i32* null, i32** %12, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @plist_dict_next_item(i32* %54, i8* %55, i8** %11, i32** %12)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %13, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @rpc_parse_page(i32* %60, %struct.TYPE_5__** %13)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call i64 @strtol(i8* %67, i32* null, i32 0)
  %69 = icmp eq i64 %66, %68
  br label %70

70:                                               ; preds = %63, %59, %53
  %71 = phi i1 [ false, %59 ], [ false, %53 ], [ %69, %63 ]
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
  br label %44

82:                                               ; preds = %51
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %89 = call i32 @rpc_free_pages(%struct.TYPE_5__** %88)
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

95:                                               ; preds = %91, %87, %36, %24
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @plist_get_node_type(i32*) #1

declare dso_local i64 @plist_dict_get_size(i32*) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @plist_dict_new_iter(i32*, i8**) #1

declare dso_local i32 @plist_dict_next_item(i32*, i8*, i8**, i32**) #1

declare dso_local i32 @rpc_parse_page(i32*, %struct.TYPE_5__**) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @rpc_free_pages(%struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
