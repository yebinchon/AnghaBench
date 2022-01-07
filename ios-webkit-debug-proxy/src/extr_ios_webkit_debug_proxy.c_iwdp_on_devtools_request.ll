; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_on_devtools_request.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_on_devtools_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, i8*, i8*)*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"/devtools/page/\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Internal error: %s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Unknown page id\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwdp_on_devtools_request(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strncmp(i8* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 15)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19, %2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_10__*, i8*, i8*)*, i32 (%struct.TYPE_10__*, i8*, i8*)** %25, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 %26(%struct.TYPE_10__* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  store i32 %29, i32* %3, align 4
  br label %83

30:                                               ; preds = %19
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 15
  store i8* %32, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @strtol(i8* %33, i8** %8, i32 0)
  store i32 %34, i32* %9, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %30
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %30
  store i32 -1, i32* %9, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %10, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = icmp ne %struct.TYPE_12__* %51, null
  br i1 %52, label %53, label %70

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @HT_KEY(i32 %66)
  %68 = call i64 @ht_get_value(i32 %65, i32 %67)
  %69 = inttoptr i64 %68 to i32*
  br label %71

70:                                               ; preds = %56, %53, %45
  br label %71

71:                                               ; preds = %70, %62
  %72 = phi i32* [ %69, %62 ], [ null, %70 ]
  store i32* %72, i32** %11, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @iwdp_on_not_found(%struct.TYPE_10__* %76, i32 0, i8* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %78, i32* %3, align 4
  br label %83

79:                                               ; preds = %71
  %80 = load i32*, i32** %11, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = call i32 @iwdp_start_devtools(i32* %80, %struct.TYPE_11__* %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %75, %23
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @ht_get_value(i32, i32) #1

declare dso_local i32 @HT_KEY(i32) #1

declare dso_local i32 @iwdp_on_not_found(%struct.TYPE_10__*, i32, i8*, i8*) #1

declare dso_local i32 @iwdp_start_devtools(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
