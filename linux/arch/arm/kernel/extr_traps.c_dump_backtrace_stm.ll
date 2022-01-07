; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_traps.c_dump_backtrace_stm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_traps.c_dump_backtrace_stm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c" r%d:%08x\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_backtrace_stm(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [80 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 10, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %9 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %38, %2
  %11 = load i32, i32* %8, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 -1
  store i32* %23, i32** %3, align 8
  %24 = load i32, i32* %22, align 4
  %25 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load i8*, i8** %6, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = icmp eq i32 %30, 6
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  %33 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  store i8* %33, i8** %6, align 8
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %35 = call i32 @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %32, %19
  br label %37

37:                                               ; preds = %36, %13
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %8, align 4
  br label %10

41:                                               ; preds = %10
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %44 = icmp ne i8* %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %47 = call i32 @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %41
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @printk(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
