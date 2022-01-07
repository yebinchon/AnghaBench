; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_websocket.c_ws_compute_answer.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_websocket.c_ws_compute_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ws_compute_answer.MAGIC = internal global i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [37 x i8] c"258EAFA5-E914-47DA-95CA-C5AB0DC85B11\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @ws_compute_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ws_compute_answer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [20 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %59

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = load i8*, i8** @ws_compute_answer.MAGIC, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %15, %17
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = mul i64 %21, 1
  %23 = call i64 @malloc(i64 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %13
  store i8* null, i8** %2, align 8
  br label %59

28:                                               ; preds = %13
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = load i8*, i8** @ws_compute_answer.MAGIC, align 8
  %32 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %31)
  %33 = call i32 @sha1_starts(i32* %7)
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %4, align 8
  %36 = sub i64 %35, 1
  %37 = call i32 @sha1_update(i32* %7, i8* %34, i64 %36)
  %38 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %39 = call i32 @sha1_finish(i32* %7, i8* %38)
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @free(i8* %40)
  store i8* null, i8** %5, align 8
  store i64 0, i64* %8, align 8
  %42 = call i64 @base64_encode(i8* null, i64* %8, i8* null, i32 20)
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @malloc(i64 %43)
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %28
  store i8* null, i8** %2, align 8
  br label %59

49:                                               ; preds = %28
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %52 = call i64 @base64_encode(i8* %50, i64* %8, i8* %51, i32 20)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @free(i8* %55)
  store i8* null, i8** %2, align 8
  br label %59

57:                                               ; preds = %49
  %58 = load i8*, i8** %9, align 8
  store i8* %58, i8** %2, align 8
  br label %59

59:                                               ; preds = %57, %54, %48, %27, %12
  %60 = load i8*, i8** %2, align 8
  ret i8* %60
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @sha1_starts(i32*) #1

declare dso_local i32 @sha1_update(i32*, i8*, i64) #1

declare dso_local i32 @sha1_finish(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @base64_encode(i8*, i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
