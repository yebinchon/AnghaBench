; ModuleID = '/home/carl/AnghaBench/git/extr_credential-cache--daemon.c_serve_cache_loop.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential-cache--daemon.c_serve_cache_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"poll failed\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"accept failed\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dup failed\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @serve_cache_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serve_cache_loop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pollfd, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %10 = call i32 (...) @check_expirations()
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @POLLIN, align 4
  %18 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 1000, %19
  %21 = call i64 @poll(%struct.pollfd* %4, i32 1, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EINTR, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @die_errno(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23
  store i32 1, i32* %2, align 4
  br label %65

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @POLLIN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @accept(i32 %37, i32* null, i32* null)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @warning_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %65

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dup(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = call i32 @warning_errno(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @close(i32 %50)
  store i32 1, i32* %2, align 4
  br label %65

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = call i32* @xfdopen(i32 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %54, i32** %8, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32* @xfdopen(i32 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %56, i32** %9, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @serve_one_client(i32* %57, i32* %58)
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @fclose(i32* %60)
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @fclose(i32* %62)
  br label %64

64:                                               ; preds = %52, %30
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %48, %41, %29, %13
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @check_expirations(...) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @die_errno(i8*) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @warning_errno(i8*) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32* @xfdopen(i32, i8*) #1

declare dso_local i32 @serve_one_client(i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
