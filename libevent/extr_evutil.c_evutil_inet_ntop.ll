; ModuleID = '/home/carl/AnghaBench/libevent/extr_evutil.c_evutil_inet_ntop.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evutil.c_evutil_inet_ntop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @evutil_inet_ntop(i32 %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.in_addr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @AF_INET, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.in_addr*
  store %struct.in_addr* %18, %struct.in_addr** %10, align 8
  %19 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohl(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %11, align 4
  %27 = ashr i32 %26, 24
  %28 = and i32 %27, 255
  %29 = sext i32 %28 to i64
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* %11, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = sext i32 %33 to i64
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %11, align 4
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 255
  %39 = sext i32 %38 to i64
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, 255
  %43 = sext i32 %42 to i64
  %44 = trunc i64 %43 to i32
  %45 = call i32 (i8*, i32, i8*, i32, ...) @evutil_snprintf(i8* %23, i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %35, i32 %40, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %16
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %9, align 8
  %52 = icmp uge i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %16
  store i8* null, i8** %5, align 8
  br label %57

54:                                               ; preds = %48
  %55 = load i8*, i8** %8, align 8
  store i8* %55, i8** %5, align 8
  br label %57

56:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %57

57:                                               ; preds = %56, %54, %53
  %58 = load i8*, i8** %5, align 8
  ret i8* %58
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @evutil_snprintf(i8*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
