; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_dump_one_spr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_dump_one_spr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"SPR 0x%03x (%4d) Faulted during read\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"SPR 0x%03x (%4d) Unimplemented\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"SPR 0x%03x (%4d) = 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dump_one_spr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_one_spr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i64 3735928559, i64* %5, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @read_spr(i32 %6, i64* %5)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  br label %41

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 3735928559
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  store i64 195939070, i64* %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @read_spr(i32 %17, i64* %5)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  br label %41

24:                                               ; preds = %16
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %25, 195939070
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %27
  br label %41

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %13
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %38, i64 %39)
  br label %41

41:                                               ; preds = %36, %34, %20, %9
  ret void
}

declare dso_local i32 @read_spr(i32, i64*) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
