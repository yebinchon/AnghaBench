; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_init.c_create_piped_stdio.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_init.c_create_piped_stdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8** }

@STDIN_FILENO = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_piped_stdio() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @STDIN_FILENO, align 4
  %3 = call i8* @open_fd_from_actual_fd(i32 %2)
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i8**, i8*** %7, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  store i8* %3, i8** %9, align 8
  %10 = icmp ne i8* %3, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %35

12:                                               ; preds = %0
  %13 = load i32, i32* @STDOUT_FILENO, align 4
  %14 = call i8* @open_fd_from_actual_fd(i32 %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  store i8* %14, i8** %20, align 8
  %21 = icmp ne i8* %14, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  store i32 -1, i32* %1, align 4
  br label %35

23:                                               ; preds = %12
  %24 = load i32, i32* @STDERR_FILENO, align 4
  %25 = call i8* @open_fd_from_actual_fd(i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  store i8* %25, i8** %31, align 8
  %32 = icmp ne i8* %25, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  store i32 -1, i32* %1, align 4
  br label %35

34:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %34, %33, %22, %11
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i8* @open_fd_from_actual_fd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
