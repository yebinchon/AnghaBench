; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_websocket.c_create_accept_key.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_websocket.c_create_accept_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WS_GUID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @create_accept_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_accept_key(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [20 x i32], align 16
  %6 = alloca [60 x i32], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = getelementptr inbounds [60 x i32], [60 x i32]* %6, i64 0, i64 0
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @memcpy(i32* %7, i8* %8, i32 24)
  %10 = getelementptr inbounds [60 x i32], [60 x i32]* %6, i64 0, i64 0
  %11 = getelementptr inbounds i32, i32* %10, i64 24
  %12 = load i8*, i8** @WS_GUID, align 8
  %13 = call i32 @memcpy(i32* %11, i8* %12, i32 36)
  %14 = getelementptr inbounds [60 x i32], [60 x i32]* %6, i64 0, i64 0
  %15 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %16 = call i32 @SHA1(i32* %14, i32 240, i32* %15)
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %19 = call i32 @h2o_base64_encode(i8* %17, i32* %18, i32 80, i32 0)
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 28
  store i8 0, i8* %21, align 1
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @SHA1(i32*, i32, i32*) #1

declare dso_local i32 @h2o_base64_encode(i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
