; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_release_http_pack_request.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_release_http_pack_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_pack_request = type { %struct.http_pack_request*, i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_http_pack_request(%struct.http_pack_request* %0) #0 {
  %2 = alloca %struct.http_pack_request*, align 8
  store %struct.http_pack_request* %0, %struct.http_pack_request** %2, align 8
  %3 = load %struct.http_pack_request*, %struct.http_pack_request** %2, align 8
  %4 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.http_pack_request*, %struct.http_pack_request** %2, align 8
  %9 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @fclose(i32* %10)
  %12 = load %struct.http_pack_request*, %struct.http_pack_request** %2, align 8
  %13 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %12, i32 0, i32 3
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.http_pack_request*, %struct.http_pack_request** %2, align 8
  %16 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.http_pack_request*, %struct.http_pack_request** %2, align 8
  %18 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %17, i32 0, i32 1
  %19 = call i32 @strbuf_release(i32* %18)
  %20 = load %struct.http_pack_request*, %struct.http_pack_request** %2, align 8
  %21 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %20, i32 0, i32 0
  %22 = load %struct.http_pack_request*, %struct.http_pack_request** %21, align 8
  %23 = call i32 @free(%struct.http_pack_request* %22)
  %24 = load %struct.http_pack_request*, %struct.http_pack_request** %2, align 8
  %25 = call i32 @free(%struct.http_pack_request* %24)
  ret void
}

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @strbuf_release(i32*) #1

declare dso_local i32 @free(%struct.http_pack_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
