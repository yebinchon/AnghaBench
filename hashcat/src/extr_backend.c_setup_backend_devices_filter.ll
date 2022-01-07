; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_setup_backend_devices_filter.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_setup_backend_devices_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid device_id %d specified.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64*)* @setup_backend_devices_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_backend_devices_filter(i32* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %52

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @hcstrdup(i8* %16)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %56

21:                                               ; preds = %15
  store i8* null, i8** %10, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i8* @strtok_r(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10)
  store i8* %23, i8** %11, align 8
  br label %24

24:                                               ; preds = %46, %21
  %25 = load i8*, i8** %11, align 8
  %26 = call i64 @strtol(i8* %25, i32* null, i32 10)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %12, align 4
  %32 = icmp sge i32 %31, 64
  br i1 %32, label %33, label %39

33:                                               ; preds = %30, %24
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @event_log_error(i32* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @hcfree(i8* %37)
  store i32 0, i32* %4, align 4
  br label %56

39:                                               ; preds = %30
  %40 = load i32, i32* %12, align 4
  %41 = sub nsw i32 %40, 1
  %42 = zext i32 %41 to i64
  %43 = shl i64 1, %42
  %44 = load i64, i64* %8, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %39
  %47 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10)
  store i8* %47, i8** %11, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %24, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @hcfree(i8* %50)
  br label %53

52:                                               ; preds = %3
  store i64 -1, i64* %8, align 8
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i64, i64* %8, align 8
  %55 = load i64*, i64** %7, align 8
  store i64 %54, i64* %55, align 8
  store i32 1, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %33, %20
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i8* @hcstrdup(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @event_log_error(i32*, i8*, i32) #1

declare dso_local i32 @hcfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
