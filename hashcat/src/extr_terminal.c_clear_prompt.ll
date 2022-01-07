; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_terminal.c_clear_prompt.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_terminal.c_clear_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@STATUS_PAUSED = common dso_local global i64 0, align 8
@PROMPT_PAUSED = common dso_local global i32 0, align 4
@PROMPT_ACTIVE = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_prompt(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  store i64 0, i64* %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @STATUS_PAUSED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @PROMPT_PAUSED, align 4
  %16 = call i64 @strlen(i32 %15)
  store i64 %16, i64* %4, align 8
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @PROMPT_ACTIVE, align 4
  %19 = call i64 @strlen(i32 %18)
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* @stdout, align 4
  %22 = call i32 @fputc(i8 signext 13, i32 %21)
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %30, %20
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @stdout, align 4
  %29 = call i32 @fputc(i8 signext 32, i32 %28)
  br label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %5, align 8
  br label %23

33:                                               ; preds = %23
  %34 = load i32, i32* @stdout, align 4
  %35 = call i32 @fputc(i8 signext 13, i32 %34)
  %36 = load i32, i32* @stdout, align 4
  %37 = call i32 @fflush(i32 %36)
  ret void
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
