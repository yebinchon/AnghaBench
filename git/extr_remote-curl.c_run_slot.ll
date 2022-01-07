; ModuleID = '/home/carl/AnghaBench/git/extr_remote-curl.c_run_slot.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-curl.c_run_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i64 }
%struct.active_request_slot = type { i32 }
%struct.slot_results = type { i32, i32 }

@HTTP_OK = common dso_local global i32 0, align 4
@HTTP_REAUTH = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"HTTP %ld\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"curl %d\00", align 1
@curl_errorstr = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"RPC failed; %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.active_request_slot*, %struct.slot_results*)* @run_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_slot(%struct.active_request_slot* %0, %struct.slot_results* %1) #0 {
  %3 = alloca %struct.active_request_slot*, align 8
  %4 = alloca %struct.slot_results*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.slot_results, align 4
  %7 = alloca %struct.strbuf, align 8
  store %struct.active_request_slot* %0, %struct.active_request_slot** %3, align 8
  store %struct.slot_results* %1, %struct.slot_results** %4, align 8
  %8 = load %struct.slot_results*, %struct.slot_results** %4, align 8
  %9 = icmp ne %struct.slot_results* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.slot_results* %6, %struct.slot_results** %4, align 8
  br label %11

11:                                               ; preds = %10, %2
  %12 = load %struct.active_request_slot*, %struct.active_request_slot** %3, align 8
  %13 = load %struct.slot_results*, %struct.slot_results** %4, align 8
  %14 = call i32 @run_one_slot(%struct.active_request_slot* %12, %struct.slot_results* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @HTTP_OK, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %70

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @HTTP_REAUTH, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %70

22:                                               ; preds = %18
  %23 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %24 = load %struct.slot_results*, %struct.slot_results** %4, align 8
  %25 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.slot_results*, %struct.slot_results** %4, align 8
  %30 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 200
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.slot_results*, %struct.slot_results** %4, align 8
  %35 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %28, %22
  %39 = load %struct.slot_results*, %struct.slot_results** %4, align 8
  %40 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CURLE_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @strbuf_addch(%struct.strbuf* %7, i8 signext 32)
  br label %50

50:                                               ; preds = %48, %44
  %51 = load %struct.slot_results*, %struct.slot_results** %4, align 8
  %52 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i64*, i64** @curl_errorstr, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = call i32 @strbuf_addch(%struct.strbuf* %7, i8 signext 32)
  %61 = load i64*, i64** @curl_errorstr, align 8
  %62 = call i32 @strbuf_addstr(%struct.strbuf* %7, i64* %61)
  br label %63

63:                                               ; preds = %59, %50
  br label %64

64:                                               ; preds = %63, %38
  %65 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @error(i32 %65, i32 %67)
  %69 = call i32 @strbuf_release(%struct.strbuf* %7)
  br label %70

70:                                               ; preds = %64, %18, %11
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @run_one_slot(%struct.active_request_slot*, %struct.slot_results*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i64*) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
