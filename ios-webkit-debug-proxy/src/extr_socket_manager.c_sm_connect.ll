; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_socket_manager.c_sm_connect.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_socket_manager.c_sm_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"unix:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm_connect(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strncmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 5
  %15 = call i32 @sm_connect_unix(i8* %14)
  store i32 %15, i32* %2, align 4
  br label %44

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @strrchr(i8* %17, i8 signext 58)
  store i8* %18, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = call i32 @strtol(i8* %23, i32* null, i32 0)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %5, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -1, i32* %2, align 4
  br label %44

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  store i64 %34, i64* %6, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i8* @strndup(i8* %35, i64 %36)
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @sm_connect_tcp(i8* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %29, %28, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sm_connect_unix(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i32 @sm_connect_tcp(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
