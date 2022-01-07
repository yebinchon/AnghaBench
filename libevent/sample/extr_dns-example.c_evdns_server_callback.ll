; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_dns-example.c_evdns_server_callback.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_dns-example.c_evdns_server_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_server_request = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i64, i8* }

@EVDNS_TYPE_A = common dso_local global i64 0, align 8
@EVDNS_CLASS_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c" -- replying for %s (A)\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"eeep, didn't work.\0A\00", align 1
@EVDNS_TYPE_PTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c" -- replying for %s (PTR)\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"foo.bar.example.com\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"ugh, no luck\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c" -- skipping %s [%d %d]\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"eeek, couldn't send reply.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdns_server_request*, i8*)* @evdns_server_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evdns_server_callback(%struct.evdns_server_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evdns_server_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.evdns_server_request* %0, %struct.evdns_server_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %149, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %12 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %152

15:                                               ; preds = %9
  %16 = call i32 @htonl(i32 -1062728949)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %18 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EVDNS_TYPE_A, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %15
  %29 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %30 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %31, i64 %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EVDNS_CLASS_INET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %28
  %41 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %42 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 %45
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %52 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %53 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @evdns_server_request_add_a_reply(%struct.evdns_server_request* %51, i8* %60, i32 1, i32* %7, i32 10)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %40
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %40
  br label %148

67:                                               ; preds = %28, %15
  %68 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %69 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %70, i64 %72
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @EVDNS_TYPE_PTR, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %118

79:                                               ; preds = %67
  %80 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %81 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %82, i64 %84
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @EVDNS_CLASS_INET, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %118

91:                                               ; preds = %79
  %92 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %93 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %94, i64 %96
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %100)
  %102 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %103 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %104 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %105, i64 %107
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @evdns_server_request_add_ptr_reply(%struct.evdns_server_request* %102, i32* null, i8* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 10)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %91
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %91
  br label %147

118:                                              ; preds = %79, %67
  %119 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %120 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %121, i64 %123
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %129 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %130, i64 %132
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %138 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %139, i64 %141
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %127, i64 %136, i64 %145)
  br label %147

147:                                              ; preds = %118, %117
  br label %148

148:                                              ; preds = %147, %66
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %9

152:                                              ; preds = %9
  %153 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %154 = call i32 @evdns_server_request_respond(%struct.evdns_server_request* %153, i32 0)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %152
  ret void
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @evdns_server_request_add_a_reply(%struct.evdns_server_request*, i8*, i32, i32*, i32) #1

declare dso_local i32 @evdns_server_request_add_ptr_reply(%struct.evdns_server_request*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @evdns_server_request_respond(%struct.evdns_server_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
