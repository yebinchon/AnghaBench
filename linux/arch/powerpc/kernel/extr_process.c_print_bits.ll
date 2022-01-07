; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_print_bits.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_print_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regbit = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.regbit*, i8*)* @print_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_bits(i64 %0, %struct.regbit* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.regbit*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.regbit* %1, %struct.regbit** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %8

8:                                                ; preds = %29, %3
  %9 = load %struct.regbit*, %struct.regbit** %5, align 8
  %10 = getelementptr inbounds %struct.regbit, %struct.regbit* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.regbit*, %struct.regbit** %5, align 8
  %16 = getelementptr inbounds %struct.regbit, %struct.regbit* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = and i64 %14, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.regbit*, %struct.regbit** %5, align 8
  %24 = getelementptr inbounds %struct.regbit, %struct.regbit* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 %25)
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %7, align 8
  br label %28

28:                                               ; preds = %21, %13
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.regbit*, %struct.regbit** %5, align 8
  %31 = getelementptr inbounds %struct.regbit, %struct.regbit* %30, i32 1
  store %struct.regbit* %31, %struct.regbit** %5, align 8
  br label %8

32:                                               ; preds = %8
  ret void
}

declare dso_local i32 @pr_cont(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
