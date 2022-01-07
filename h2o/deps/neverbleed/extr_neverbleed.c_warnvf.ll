; ModuleID = '/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_warnvf.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_warnvf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"[openssl-privsep] \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @warnvf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warnvf(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @errno, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i64, i64* @errno, align 8
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %11 = call i32 @strerror_r(i64 %9, i8* %10, i32 256)
  br label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %13, align 16
  br label %14

14:                                               ; preds = %12, %8
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @vfprintf(i32 %17, i8* %18, i32 %19)
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %22 = load i8, i8* %21, align 16
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fputs(i8* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %14
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 @fputc(i8 signext 10, i32 %30)
  ret void
}

declare dso_local i32 @strerror_r(i64, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @vfprintf(i32, i8*, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
