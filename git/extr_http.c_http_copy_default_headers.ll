; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_http_copy_default_headers.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_http_copy_default_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i32, %struct.curl_slist* }

@extra_http_headers = common dso_local global %struct.curl_slist* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.curl_slist* @http_copy_default_headers() #0 {
  %1 = alloca %struct.curl_slist*, align 8
  %2 = alloca %struct.curl_slist*, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %1, align 8
  %3 = load %struct.curl_slist*, %struct.curl_slist** @extra_http_headers, align 8
  store %struct.curl_slist* %3, %struct.curl_slist** %2, align 8
  br label %4

4:                                                ; preds = %13, %0
  %5 = load %struct.curl_slist*, %struct.curl_slist** %2, align 8
  %6 = icmp ne %struct.curl_slist* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load %struct.curl_slist*, %struct.curl_slist** %1, align 8
  %9 = load %struct.curl_slist*, %struct.curl_slist** %2, align 8
  %10 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %8, i32 %11)
  store %struct.curl_slist* %12, %struct.curl_slist** %1, align 8
  br label %13

13:                                               ; preds = %7
  %14 = load %struct.curl_slist*, %struct.curl_slist** %2, align 8
  %15 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %14, i32 0, i32 1
  %16 = load %struct.curl_slist*, %struct.curl_slist** %15, align 8
  store %struct.curl_slist* %16, %struct.curl_slist** %2, align 8
  br label %4

17:                                               ; preds = %4
  %18 = load %struct.curl_slist*, %struct.curl_slist** %1, align 8
  ret %struct.curl_slist* %18
}

declare dso_local %struct.curl_slist* @curl_slist_append(%struct.curl_slist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
