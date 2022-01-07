; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_send_http.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_send_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i8*, i32)*, i32 (%struct.TYPE_5__*, i8*)* }

@.str = private unnamed_addr constant [62 x i8] c"HTTP/1.1 %s\0D\0AContent-length: %zd\0D\0AConnection: close%s%s\0D\0A\0D\0A%s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\0D\0AContent-Type: \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"asprintf failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwdp_send_http(%struct.TYPE_5__* %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = call i32 @iwdp_get_content_type(i8* %15, i32 0, i8** %12)
  %17 = load i8*, i8** %9, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @strlen(i8* %21)
  br label %24

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32 [ %22, %20 ], [ 0, %23 ]
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ne i8* %26, null
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i8*, i8** %12, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i8*, i8** %12, align 8
  br label %35

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i8* [ %33, %32 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %34 ]
  %37 = load i8*, i8** %11, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %11, align 8
  br label %45

44:                                               ; preds = %39, %35
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i8* [ %43, %42 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %44 ]
  %47 = call i64 @asprintf(i8** %13, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %25, i8* %29, i8* %36, i8* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = call i32 %52(%struct.TYPE_5__* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 %54, i32* %6, align 4
  br label %69

55:                                               ; preds = %45
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_5__*, i8*, i32)*, i32 (%struct.TYPE_5__*, i8*, i32)** %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = call i32 %60(%struct.TYPE_5__* %61, i8* %62, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %55, %49
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @iwdp_get_content_type(i8*, i32, i8**) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
