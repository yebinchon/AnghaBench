; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_con_log.c_CON_LogWrite.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_con_log.c_CON_LogWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@consoleLog = common dso_local global i8* null, align 8
@readPos = common dso_local global i64 0, align 8
@MAX_LOG = common dso_local global i64 0, align 8
@writePos = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CON_LogWrite(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %36, %1
  %10 = call i32 (...) @CON_LogFree()
  %11 = load i32, i32* %4, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = call i32 (...) @CON_LogSize()
  %15 = icmp sgt i32 %14, 0
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %41

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i8*, i8** @consoleLog, align 8
  %21 = load i64, i64* @readPos, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 10
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = call i32 (...) @CON_LogSize()
  %28 = icmp sgt i32 %27, 1
  br label %29

29:                                               ; preds = %26, %19
  %30 = phi i1 [ false, %19 ], [ %28, %26 ]
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = load i64, i64* @readPos, align 8
  %33 = add i64 %32, 1
  %34 = load i64, i64* @MAX_LOG, align 8
  %35 = urem i64 %33, %34
  store i64 %35, i64* @readPos, align 8
  br label %19

36:                                               ; preds = %29
  %37 = load i64, i64* @readPos, align 8
  %38 = add i64 %37, 1
  %39 = load i64, i64* @MAX_LOG, align 8
  %40 = urem i64 %38, %39
  store i64 %40, i64* @readPos, align 8
  br label %9

41:                                               ; preds = %16
  %42 = call i32 (...) @CON_LogFree()
  %43 = load i32, i32* %4, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %87

46:                                               ; preds = %41
  %47 = load i32, i32* @writePos, align 4
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* @MAX_LOG, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load i64, i64* @MAX_LOG, align 8
  %55 = load i32, i32* @writePos, align 4
  %56 = zext i32 %55 to i64
  %57 = sub i64 %54, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = sub i32 %59, %60
  store i32 %61, i32* %6, align 4
  br label %64

62:                                               ; preds = %46
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %53
  %65 = load i8*, i8** @consoleLog, align 8
  %66 = load i32, i32* @writePos, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8*, i8** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @Com_Memcpy(i8* %68, i8* %69, i32 %70)
  %72 = load i8*, i8** @consoleLog, align 8
  %73 = load i8*, i8** %3, align 8
  %74 = load i32, i32* %5, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @Com_Memcpy(i8* %72, i8* %76, i32 %77)
  %79 = load i32, i32* @writePos, align 4
  %80 = load i32, i32* %4, align 4
  %81 = add i32 %79, %80
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* @MAX_LOG, align 8
  %84 = urem i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* @writePos, align 4
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %64, %45
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CON_LogFree(...) #1

declare dso_local i32 @CON_LogSize(...) #1

declare dso_local i32 @Com_Memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
