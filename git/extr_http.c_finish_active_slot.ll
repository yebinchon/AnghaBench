; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_finish_active_slot.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_finish_active_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.active_request_slot = type { i32*, i32, i32 (i32)*, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@CURLINFO_HTTP_CODE = common dso_local global i32 0, align 4
@CURLINFO_HTTP_CONNECTCODE = common dso_local global i32 0, align 4
@CURLINFO_HTTPAUTH_AVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.active_request_slot*)* @finish_active_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_active_slot(%struct.active_request_slot* %0) #0 {
  %2 = alloca %struct.active_request_slot*, align 8
  store %struct.active_request_slot* %0, %struct.active_request_slot** %2, align 8
  %3 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %4 = call i32 @closedown_active_slot(%struct.active_request_slot* %3)
  %5 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %6 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CURLINFO_HTTP_CODE, align 4
  %9 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %10 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %9, i32 0, i32 5
  %11 = call i32 @curl_easy_getinfo(i32 %7, i32 %8, i64* %10)
  %12 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %13 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %18 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32 1, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %22 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %53

25:                                               ; preds = %20
  %26 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %27 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %30 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  store i32 %28, i32* %32, align 8
  %33 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %34 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %37 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i64 %35, i64* %39, align 8
  %40 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %41 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %45 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CURLINFO_HTTP_CONNECTCODE, align 4
  %48 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %49 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @curl_easy_getinfo(i32 %46, i32 %47, i64* %51)
  br label %53

53:                                               ; preds = %25, %20
  %54 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %55 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %54, i32 0, i32 2
  %56 = load i32 (i32)*, i32 (i32)** %55, align 8
  %57 = icmp ne i32 (i32)* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %60 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %59, i32 0, i32 2
  %61 = load i32 (i32)*, i32 (i32)** %60, align 8
  %62 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %63 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %61(i32 %64)
  br label %66

66:                                               ; preds = %58, %53
  ret void
}

declare dso_local i32 @closedown_active_slot(%struct.active_request_slot*) #1

declare dso_local i32 @curl_easy_getinfo(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
