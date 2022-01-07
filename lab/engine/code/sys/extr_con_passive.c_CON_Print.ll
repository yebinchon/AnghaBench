; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_con_passive.c_CON_Print.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_con_passive.c_CON_Print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@com_logToStdErr = common dso_local global %struct.TYPE_3__* null, align 8
@com_ansiColor = common dso_local global %struct.TYPE_4__* null, align 8
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CON_Print(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @com_logToStdErr, align 8
  %4 = icmp ne %struct.TYPE_3__* %3, null
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @com_logToStdErr, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %5
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_ansiColor, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_ansiColor, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @Sys_AnsiColorPrint(i8* %19)
  br label %25

21:                                               ; preds = %13, %10
  %22 = load i8*, i8** %2, align 8
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fputs(i8* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %18
  br label %26

26:                                               ; preds = %25, %5, %1
  ret void
}

declare dso_local i32 @Sys_AnsiColorPrint(i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
