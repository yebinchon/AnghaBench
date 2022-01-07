; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_con_log.c_CON_LogRead.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_con_log.c_CON_LogRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@readPos = common dso_local global i32 0, align 4
@MAX_LOG = common dso_local global i32 0, align 4
@consoleLog = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CON_LogRead(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @CON_LogSize()
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (...) @CON_LogSize()
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, i32* @readPos, align 4
  %14 = load i32, i32* %4, align 4
  %15 = add i32 %13, %14
  %16 = load i32, i32* @MAX_LOG, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load i32, i32* @MAX_LOG, align 4
  %20 = load i32, i32* @readPos, align 4
  %21 = sub i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sub i32 %22, %23
  store i32 %24, i32* %6, align 4
  br label %27

25:                                               ; preds = %12
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %25, %18
  %28 = load i8*, i8** %3, align 8
  %29 = load i64, i64* @consoleLog, align 8
  %30 = load i32, i32* @readPos, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @Com_Memcpy(i8* %28, i64 %32, i32 %33)
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i64, i64* @consoleLog, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @Com_Memcpy(i8* %38, i64 %39, i32 %40)
  %42 = load i32, i32* @readPos, align 4
  %43 = load i32, i32* %4, align 4
  %44 = add i32 %42, %43
  %45 = load i32, i32* @MAX_LOG, align 4
  %46 = urem i32 %44, %45
  store i32 %46, i32* @readPos, align 4
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @CON_LogSize(...) #1

declare dso_local i32 @Com_Memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
