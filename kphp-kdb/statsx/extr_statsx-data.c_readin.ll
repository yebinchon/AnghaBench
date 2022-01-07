; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_readin.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_readin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rptr = common dso_local global i32 0, align 4
@rBuff = common dso_local global i32 0, align 4
@rBuff_len = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Buffer size %d seems to be too small. Skipping read.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readin(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @rptr, align 4
  %7 = load i32, i32* @rBuff, align 4
  %8 = sub nsw i32 %6, %7
  %9 = load i32, i32* @rBuff_len, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %9, %10
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32, i32* @verbosity, align 4
  %15 = icmp sge i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* @rBuff_len, align 4
  %19 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %13
  store i32 0, i32* %3, align 4
  br label %30

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @rptr, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @memcpy(i8* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @rptr, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* @rptr, align 4
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %21, %20
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
