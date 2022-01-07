; ModuleID = '/home/carl/AnghaBench/hashcat/deps/zlib/examples/extr_zpipe.c_zerr.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/zlib/examples/extr_zpipe.c_zerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"zpipe: \00", align 1
@stderr = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"error reading stdin\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"error writing stdout\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"invalid compression level\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"invalid or incomplete deflate data\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"zlib version mismatch!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zerr(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @stderr, align 4
  %4 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %33 [
    i32 131, label %6
    i32 129, label %21
    i32 132, label %24
    i32 130, label %27
    i32 128, label %30
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @stdin, align 4
  %8 = call i32 @ferror(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %10, %6
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 @ferror(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %13
  br label %33

21:                                               ; preds = %1
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  br label %33

24:                                               ; preds = %1
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  br label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %28)
  br label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %1, %27, %24, %21, %20
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @ferror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
