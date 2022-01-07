; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_set_rbow.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_set_rbow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_openssl*)* @set_rbow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rbow(%struct.bufferevent_openssl* %0) #0 {
  %2 = alloca %struct.bufferevent_openssl*, align 8
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %2, align 8
  %3 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %4 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %9 = call i32 @stop_reading(%struct.bufferevent_openssl* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %12 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %14 = call i32 @start_writing(%struct.bufferevent_openssl* %13)
  ret i32 %14
}

declare dso_local i32 @stop_reading(%struct.bufferevent_openssl*) #1

declare dso_local i32 @start_writing(%struct.bufferevent_openssl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
