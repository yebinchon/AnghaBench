; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_on_static_request.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_on_static_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, i32 (%struct.TYPE_13__*, i8*, i8*)* }
%struct.TYPE_14__ = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"/devtools/\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Internal error: %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Frontend is disabled.\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Invalid frontend URL?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwdp_on_static_request(%struct.TYPE_12__* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %10, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %11, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @strncmp(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27, %4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32 (%struct.TYPE_13__*, i8*, i8*)*, i32 (%struct.TYPE_13__*, i8*, i8*)** %33, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 %34(%struct.TYPE_13__* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  store i32 %37, i32* %5, align 4
  br label %93

38:                                               ; preds = %27
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %12, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %13, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %38
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @iwdp_on_not_found(%struct.TYPE_12__* %48, i32 %49, i8* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 %51, i32* %5, align 4
  br label %93

52:                                               ; preds = %38
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @strstr(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %52
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @strncasecmp(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %60, %52
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 0, i32 7
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %68, i64 %73
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @iwdp_on_static_request_for_file(%struct.TYPE_12__* %65, i32 %66, i8* %67, i8* %74, i32* %75)
  store i32 %76, i32* %5, align 4
  br label %93

77:                                               ; preds = %60
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @strncasecmp(i8* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 7)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i8*, i8** %8, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @iwdp_on_static_request_for_http(%struct.TYPE_12__* %82, i32 %83, i8* %84, i32* %85)
  store i32 %86, i32* %5, align 4
  br label %93

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @iwdp_on_not_found(%struct.TYPE_12__* %89, i32 %90, i8* %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %88, %81, %64, %47, %31
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @iwdp_on_not_found(%struct.TYPE_12__*, i32, i8*, i8*) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @iwdp_on_static_request_for_file(%struct.TYPE_12__*, i32, i8*, i8*, i32*) #1

declare dso_local i32 @iwdp_on_static_request_for_http(%struct.TYPE_12__*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
