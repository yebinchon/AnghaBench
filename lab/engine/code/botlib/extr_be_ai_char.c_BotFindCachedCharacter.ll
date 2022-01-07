; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_char.c_BotFindCachedCharacter.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_char.c_BotFindCachedCharacter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@botcharacters = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotFindCachedCharacter(i8* %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store float %1, float* %5, align 4
  store i32 1, i32* %6, align 4
  br label %7

7:                                                ; preds = %50, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @MAX_CLIENTS, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %53

11:                                               ; preds = %7
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @botcharacters, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %50

19:                                               ; preds = %11
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @botcharacters, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @strcmp(i32 %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %19
  %31 = load float, float* %5, align 4
  %32 = fcmp olt float %31, 0.000000e+00
  br i1 %32, label %47, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @botcharacters, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %34, i64 %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sitofp i64 %40 to float
  %42 = load float, float* %5, align 4
  %43 = fsub float %41, %42
  %44 = fptosi float %43 to i64
  %45 = call double @fabs(i64 %44)
  %46 = fcmp olt double %45, 1.000000e-02
  br i1 %46, label %47, label %49

47:                                               ; preds = %33, %30
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %54

49:                                               ; preds = %33, %19
  br label %50

50:                                               ; preds = %49, %18
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %7

53:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local double @fabs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
