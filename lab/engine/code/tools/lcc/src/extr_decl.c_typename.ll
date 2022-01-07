; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_decl.c_typename.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_decl.c_typename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@t = common dso_local global i8 0, align 1
@Aflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"missing prototype\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @typename() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @specifier(i32* null)
  store i32 %2, i32* %1, align 4
  %3 = load i8, i8* @t, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 42
  br i1 %5, label %14, label %6

6:                                                ; preds = %0
  %7 = load i8, i8* @t, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 40
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i8, i8* @t, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 91
  br i1 %13, label %14, label %26

14:                                               ; preds = %10, %6, %0
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @dclr(i32 %15, i32* null, i32* null, i32 1)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* @Aflag, align 4
  %18 = icmp sge i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @hasproto(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = call i32 @warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %19, %14
  br label %26

26:                                               ; preds = %25, %10
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @specifier(i32*) #1

declare dso_local i32 @dclr(i32, i32*, i32*, i32) #1

declare dso_local i32 @hasproto(i32) #1

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
