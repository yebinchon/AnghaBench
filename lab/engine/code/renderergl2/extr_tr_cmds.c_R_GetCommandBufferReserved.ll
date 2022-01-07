; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_cmds.c_R_GetCommandBufferReserved.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_cmds.c_R_GetCommandBufferReserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32 (i32, i8*, i32)* }

@backEndData = common dso_local global %struct.TYPE_6__* null, align 8
@MAX_RENDER_COMMANDS = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"R_GetCommandBuffer: bad size %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @R_GetCommandBufferReserved(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @backEndData, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @PAD(i32 %9, i32 8)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, 4
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = load i32, i32* @MAX_RENDER_COMMANDS, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 %20, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = load i32, i32* @MAX_RENDER_COMMANDS, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 %28, 4
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 0), align 8
  %33 = load i32, i32* @ERR_FATAL, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 %32(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %31, %24
  store i8* null, i8** %3, align 8
  br label %55

37:                                               ; preds = %2
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, i8* %45, i64 %49
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 0, %52
  %54 = getelementptr i8, i8* %50, i64 %53
  store i8* %54, i8** %3, align 8
  br label %55

55:                                               ; preds = %37, %36
  %56 = load i8*, i8** %3, align 8
  ret i8* %56
}

declare dso_local i32 @PAD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
