; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_recv_msg.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i8*, i8*, i8*)* }

@RPC_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"_rpc_reportSetup:\00", align 1
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"_rpc_reportConnectedApplicationList:\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"_rpc_applicationConnected:\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"_rpc_applicationDisconnected:\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"_rpc_applicationSentListing:\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"_rpc_applicationSentData:\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"_rpc_applicationUpdated:\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"_rpc_reportConnectedDriverList:\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Invalid message %s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_recv_msg(%struct.TYPE_12__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @RPC_ERROR, align 4
  store i32 %13, i32* %4, align 4
  br label %125

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @rpc_recv_reportSetup(%struct.TYPE_12__* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %24, i32* %4, align 4
  br label %125

25:                                               ; preds = %18
  br label %111

26:                                               ; preds = %14
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @rpc_recv_reportConnectedApplicationList(%struct.TYPE_12__* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %36, i32* %4, align 4
  br label %125

37:                                               ; preds = %30
  br label %110

38:                                               ; preds = %26
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @rpc_recv_applicationConnected(%struct.TYPE_12__* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %48, i32* %4, align 4
  br label %125

49:                                               ; preds = %42
  br label %109

50:                                               ; preds = %38
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @rpc_recv_applicationDisconnected(%struct.TYPE_12__* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %60, i32* %4, align 4
  br label %125

61:                                               ; preds = %54
  br label %108

62:                                               ; preds = %50
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @rpc_recv_applicationSentListing(%struct.TYPE_12__* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %72, i32* %4, align 4
  br label %125

73:                                               ; preds = %66
  br label %107

74:                                               ; preds = %62
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @rpc_recv_applicationSentData(%struct.TYPE_12__* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %84, i32* %4, align 4
  br label %125

85:                                               ; preds = %78
  br label %106

86:                                               ; preds = %74
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %86
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @rpc_recv_applicationUpdated(%struct.TYPE_12__* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %96, i32* %4, align 4
  br label %125

97:                                               ; preds = %90
  br label %105

98:                                               ; preds = %86
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %103, i32* %4, align 4
  br label %125

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104, %97
  br label %106

106:                                              ; preds = %105, %85
  br label %107

107:                                              ; preds = %106, %73
  br label %108

108:                                              ; preds = %107, %61
  br label %109

109:                                              ; preds = %108, %49
  br label %110

110:                                              ; preds = %109, %37
  br label %111

111:                                              ; preds = %110, %25
  store i8* null, i8** %8, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @rpc_args_to_xml(%struct.TYPE_12__* %112, i32 %113, i8** %8, i32 1)
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32 (%struct.TYPE_12__*, i8*, i8*, i8*)*, i32 (%struct.TYPE_12__*, i8*, i8*, i8*)** %116, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 %117(%struct.TYPE_12__* %118, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %119, i8* %120)
  store i32 %121, i32* %9, align 4
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %111, %102, %95, %83, %71, %59, %47, %35, %23, %12
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @rpc_recv_reportSetup(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @rpc_recv_reportConnectedApplicationList(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @rpc_recv_applicationConnected(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @rpc_recv_applicationDisconnected(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @rpc_recv_applicationSentListing(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @rpc_recv_applicationSentData(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @rpc_recv_applicationUpdated(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @rpc_args_to_xml(%struct.TYPE_12__*, i32, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
