; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_rpc-proxy-merge-hints.c_rpc_proxy_hints_on_send.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_rpc-proxy-merge-hints.c_rpc_proxy_hints_on_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather = type { %struct.hints_extra* }
%struct.hints_extra = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"tl_fetch_unread () = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_proxy_hints_on_send(%struct.gather* %0, i32 %1) #0 {
  %3 = alloca %struct.gather*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hints_extra*, align 8
  store %struct.gather* %0, %struct.gather** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gather*, %struct.gather** %3, align 8
  %7 = getelementptr inbounds %struct.gather, %struct.gather* %6, i32 0, i32 0
  %8 = load %struct.hints_extra*, %struct.hints_extra** %7, align 8
  store %struct.hints_extra* %8, %struct.hints_extra** %5, align 8
  %9 = load %struct.hints_extra*, %struct.hints_extra** %5, align 8
  %10 = getelementptr inbounds %struct.hints_extra, %struct.hints_extra* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @tl_store_int(i32 %11)
  %13 = load %struct.hints_extra*, %struct.hints_extra** %5, align 8
  %14 = getelementptr inbounds %struct.hints_extra, %struct.hints_extra* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @tl_store_int(i32 %15)
  %17 = load %struct.hints_extra*, %struct.hints_extra** %5, align 8
  %18 = getelementptr inbounds %struct.hints_extra, %struct.hints_extra* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @tl_store_int(i32 %19)
  %21 = load %struct.hints_extra*, %struct.hints_extra** %5, align 8
  %22 = getelementptr inbounds %struct.hints_extra, %struct.hints_extra* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @tl_store_int(i32 %23)
  %25 = call i32 (...) @tl_fetch_unread()
  %26 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 (...) @tl_fetch_unread()
  %28 = call i32 @tl_copy_through(i32 %27, i32 0)
  ret i32 0
}

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @tl_fetch_unread(...) #1

declare dso_local i32 @tl_copy_through(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
