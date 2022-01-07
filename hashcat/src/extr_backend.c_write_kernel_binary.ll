; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_write_kernel_binary.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_write_kernel_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @write_kernel_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_kernel_binary(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %4
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @hc_fopen(i32* %10, i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @strerror(i32 %20)
  %22 = call i32 @event_log_error(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32 %21)
  store i32 0, i32* %5, align 4
  br label %40

23:                                               ; preds = %13
  %24 = call i32 @hc_lockfile(i32* %10)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = call i32 @hc_fclose(i32* %10)
  %28 = load i32*, i32** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @strerror(i32 %30)
  %32 = call i32 @event_log_error(i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32 %31)
  store i32 0, i32* %5, align 4
  br label %40

33:                                               ; preds = %23
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @hc_fwrite(i8* %34, i32 1, i64 %35, i32* %10)
  %37 = call i32 @hc_fflush(i32* %10)
  %38 = call i32 @hc_fclose(i32* %10)
  br label %39

39:                                               ; preds = %33, %4
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %26, %17
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @hc_fopen(i32*, i8*, i8*) #1

declare dso_local i32 @event_log_error(i32*, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @hc_lockfile(i32*) #1

declare dso_local i32 @hc_fclose(i32*) #1

declare dso_local i32 @hc_fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @hc_fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
