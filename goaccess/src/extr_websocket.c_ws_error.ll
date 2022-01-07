; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_error.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@WS_OPCODE_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i16, i8*)* @ws_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws_error(i32* %0, i16 zeroext %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca [128 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = bitcast [128 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 128, i1 false)
  store i32 2, i32* %7, align 4
  %11 = load i16, i16* %5, align 2
  %12 = call zeroext i16 @htobe16(i16 zeroext %11)
  store i16 %12, i16* %8, align 2
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %14 = call i32 @memcpy(i8* %13, i16* %8, i32 2)
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @snprintf(i8* %19, i32 124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %17, %3
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @WS_OPCODE_CLOSE, align 4
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @ws_send_frame(i32* %27, i32 %28, i8* %29, i32 %30)
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local zeroext i16 @htobe16(i16 zeroext) #2

declare dso_local i32 @memcpy(i8*, i16*, i32) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @ws_send_frame(i32*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
