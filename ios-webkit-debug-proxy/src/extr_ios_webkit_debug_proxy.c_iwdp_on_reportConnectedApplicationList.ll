; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_on_reportConnectedApplicationList.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_on_reportConnectedApplicationList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@RPC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwdp_on_reportConnectedApplicationList(%struct.TYPE_10__* %0, %struct.TYPE_11__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__**, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_11__**, align 8
  %11 = alloca %struct.TYPE_11__**, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %6, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @iwdp_log_connect(i32 %29)
  br label %31

31:                                               ; preds = %24, %2
  %32 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = icmp eq %struct.TYPE_11__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %36, i32* %3, align 4
  br label %104

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @ht_keys(i32 %38)
  %40 = inttoptr i64 %39 to i8**
  store i8** %40, i8*** %8, align 8
  %41 = load i8**, i8*** %8, align 8
  store i8** %41, i8*** %9, align 8
  br label %42

42:                                               ; preds = %77, %37
  %43 = load i8**, i8*** %9, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %80

46:                                               ; preds = %42
  %47 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__** %47, %struct.TYPE_11__*** %10, align 8
  br label %48

48:                                               ; preds = %64, %46
  %49 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = icmp ne %struct.TYPE_11__* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8**, i8*** %9, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @strcmp(i32 %56, i8* %58)
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %52, %48
  %62 = phi i1 [ false, %48 ], [ %60, %52 ]
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %65, i32 1
  store %struct.TYPE_11__** %66, %struct.TYPE_11__*** %10, align 8
  br label %48

67:                                               ; preds = %61
  %68 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = icmp ne %struct.TYPE_11__* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = load i8**, i8*** %9, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @iwdp_remove_app_id(%struct.TYPE_10__* %72, i8* %74)
  br label %76

76:                                               ; preds = %71, %67
  br label %77

77:                                               ; preds = %76
  %78 = load i8**, i8*** %9, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i32 1
  store i8** %79, i8*** %9, align 8
  br label %42

80:                                               ; preds = %42
  %81 = load i8**, i8*** %8, align 8
  %82 = call i32 @free(i8** %81)
  %83 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__** %83, %struct.TYPE_11__*** %11, align 8
  br label %84

84:                                               ; preds = %99, %80
  %85 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = icmp ne %struct.TYPE_11__* %86, null
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = call i32 @rpc_set_app(%struct.TYPE_10__* %89, %struct.TYPE_11__* %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @iwdp_add_app_id(%struct.TYPE_10__* %93, i32 %97)
  br label %99

99:                                               ; preds = %88
  %100 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %100, i32 1
  store %struct.TYPE_11__** %101, %struct.TYPE_11__*** %11, align 8
  br label %84

102:                                              ; preds = %84
  %103 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %35
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @iwdp_log_connect(i32) #1

declare dso_local i64 @ht_keys(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @iwdp_remove_app_id(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @rpc_set_app(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @iwdp_add_app_id(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
