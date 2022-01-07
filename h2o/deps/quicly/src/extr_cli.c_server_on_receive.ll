; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_server_on_receive.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_server_on_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"text/plain; charset=utf-8\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to parse HTTP request\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"/logo.jpg\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"assets/logo.jpg\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"image/jpeg\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"/main.jpg\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"assets/main.jpg\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64, i8*, i64)* @server_on_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_on_receive(%struct.TYPE_12__* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @quicly_streambuf_ingress_receive(%struct.TYPE_12__* %13, i64 %14, i8* %15, i64 %16)
  store i32 %17, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %103

21:                                               ; preds = %4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = call i32 @quicly_streambuf_ingress_get(%struct.TYPE_12__* %22)
  %24 = call i32 @parse_request(i32 %23, i8** %10, i32* %11)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = call i32 @quicly_recvstate_transfer_complete(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %103

32:                                               ; preds = %26
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = call i32 @send_header(%struct.TYPE_12__* %33, i32 1, i32 500, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = call i32 @send_str(%struct.TYPE_12__* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %97

37:                                               ; preds = %21
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = call i32 @quicly_recvstate_transfer_complete(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = call i32 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32 0)
  %45 = call i32 @quicly_request_stop(%struct.TYPE_12__* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i8*, i8** %10, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @send_file(%struct.TYPE_12__* %51, i32 %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %97

56:                                               ; preds = %50, %46
  %57 = load i8*, i8** %10, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @send_file(%struct.TYPE_12__* %61, i32 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %97

66:                                               ; preds = %60, %56
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i64 @send_sized_text(%struct.TYPE_12__* %67, i8* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %97

73:                                               ; preds = %66
  %74 = load i8*, i8** %10, align 8
  %75 = call i64 @validate_path(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = call i64 @send_file(%struct.TYPE_12__* %78, i32 %79, i8* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %97

85:                                               ; preds = %77, %73
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = call i32 @quicly_sendstate_is_open(i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %103

91:                                               ; preds = %85
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @send_header(%struct.TYPE_12__* %92, i32 %93, i32 404, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = call i32 @send_str(%struct.TYPE_12__* %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %97

97:                                               ; preds = %91, %84, %72, %65, %55, %32
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %99 = call i32 @quicly_streambuf_egress_shutdown(%struct.TYPE_12__* %98)
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @quicly_streambuf_ingress_shift(%struct.TYPE_12__* %100, i64 %101)
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %97, %90, %31, %19
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @quicly_streambuf_ingress_receive(%struct.TYPE_12__*, i64, i8*, i64) #1

declare dso_local i32 @parse_request(i32, i8**, i32*) #1

declare dso_local i32 @quicly_streambuf_ingress_get(%struct.TYPE_12__*) #1

declare dso_local i32 @quicly_recvstate_transfer_complete(i32*) #1

declare dso_local i32 @send_header(%struct.TYPE_12__*, i32, i32, i8*) #1

declare dso_local i32 @send_str(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @quicly_request_stop(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @send_file(%struct.TYPE_12__*, i32, i8*, i8*) #1

declare dso_local i64 @send_sized_text(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i64 @validate_path(i8*) #1

declare dso_local i32 @quicly_sendstate_is_open(i32*) #1

declare dso_local i32 @quicly_streambuf_egress_shutdown(%struct.TYPE_12__*) #1

declare dso_local i32 @quicly_streambuf_ingress_shift(%struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
