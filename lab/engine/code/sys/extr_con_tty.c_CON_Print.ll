; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_con_tty.c_CON_Print.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_con_tty.c_CON_Print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@com_ansiColor = common dso_local global %struct.TYPE_2__* null, align 8
@stderr = common dso_local global i32 0, align 4
@ttycon_on = common dso_local global i32 0, align 4
@ttycon_show_overdue = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CON_Print(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 0
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %51

8:                                                ; preds = %1
  %9 = call i32 (...) @CON_Hide()
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_ansiColor, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_ansiColor, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @Sys_AnsiColorPrint(i8* %18)
  br label %24

20:                                               ; preds = %12, %8
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @fputs(i8* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* @ttycon_on, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %51

28:                                               ; preds = %24
  %29 = load i8*, i8** %2, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %48

38:                                               ; preds = %28
  %39 = call i32 (...) @CON_Show()
  br label %40

40:                                               ; preds = %43, %38
  %41 = load i64, i64* @ttycon_show_overdue, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = call i32 (...) @CON_Show()
  %45 = load i64, i64* @ttycon_show_overdue, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* @ttycon_show_overdue, align 8
  br label %40

47:                                               ; preds = %40
  br label %51

48:                                               ; preds = %28
  %49 = load i64, i64* @ttycon_show_overdue, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* @ttycon_show_overdue, align 8
  br label %51

51:                                               ; preds = %7, %27, %48, %47
  ret void
}

declare dso_local i32 @CON_Hide(...) #1

declare dso_local i32 @Sys_AnsiColorPrint(i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CON_Show(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
