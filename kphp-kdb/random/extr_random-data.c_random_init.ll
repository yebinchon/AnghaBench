; ModuleID = '/home/carl/AnghaBench/kphp-kdb/random/extr_random-data.c_random_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/random/extr_random-data.c_random_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buffer = common dso_local global i32 0, align 4
@qsize = common dso_local global i32 0, align 4
@qleft = common dso_local global i64 0, align 8
@qright = common dso_local global i64 0, align 8
@qtotal = common dso_local global i64 0, align 8
@B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Random number generator initialization failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @random_init(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 268435456, i32* %6, align 4
  br label %13

13:                                               ; preds = %12, %4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @zmalloc(i32 %14)
  store i32 %15, i32* @buffer, align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* @qsize, align 4
  store i64 0, i64* @qleft, align 8
  store i64 0, i64* @qright, align 8
  store i64 0, i64* @qtotal, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @bbs_init(i32* @B, i32 %17, i8* %18, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = call i32 @kprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %13
  store i32 1, i32* %9, align 4
  br label %26

26:                                               ; preds = %31, %25
  %27 = load i32, i32* %9, align 4
  %28 = icmp sle i32 %27, 64
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = call i32 @bbs_next_random_byte(i32* @B)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %26

34:                                               ; preds = %26
  ret void
}

declare dso_local i32 @zmalloc(i32) #1

declare dso_local i64 @bbs_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @kprintf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @bbs_next_random_byte(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
