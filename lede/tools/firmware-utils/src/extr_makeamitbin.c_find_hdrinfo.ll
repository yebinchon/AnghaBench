; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_makeamitbin.c_find_hdrinfo.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_makeamitbin.c_find_hdrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdrinfo = type { i32* }

@hdrinfo = common dso_local global %struct.hdrinfo* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hdrinfo* @find_hdrinfo(i8* %0) #0 {
  %2 = alloca %struct.hdrinfo*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load %struct.hdrinfo*, %struct.hdrinfo** @hdrinfo, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %6, i64 %8
  %10 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %5
  %14 = load i8*, i8** %3, align 8
  %15 = load %struct.hdrinfo*, %struct.hdrinfo** @hdrinfo, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %15, i64 %17
  %19 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @strcmp(i8* %14, i32* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load %struct.hdrinfo*, %struct.hdrinfo** @hdrinfo, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %24, i64 %26
  store %struct.hdrinfo* %27, %struct.hdrinfo** %2, align 8
  br label %33

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %5

32:                                               ; preds = %5
  store %struct.hdrinfo* null, %struct.hdrinfo** %2, align 8
  br label %33

33:                                               ; preds = %32, %23
  %34 = load %struct.hdrinfo*, %struct.hdrinfo** %2, align 8
  ret %struct.hdrinfo* %34
}

declare dso_local i64 @strcmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
