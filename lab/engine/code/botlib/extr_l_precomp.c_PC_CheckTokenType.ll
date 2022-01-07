; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_l_precomp.c_PC_CheckTokenType.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_l_precomp.c_PC_CheckTokenType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PC_CheckTokenType(i32* %0, i32 %1, i32 %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @PC_ReadToken(i32* %11, %struct.TYPE_7__* %10)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @qfalse, align 4
  store i32 %15, i32* %5, align 4
  br label %36

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = call i32 @Com_Memcpy(%struct.TYPE_7__* %29, %struct.TYPE_7__* %10, i32 8)
  %31 = load i32, i32* @qtrue, align 4
  store i32 %31, i32* %5, align 4
  br label %36

32:                                               ; preds = %21, %16
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @PC_UnreadSourceToken(i32* %33, %struct.TYPE_7__* %10)
  %35 = load i32, i32* @qfalse, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %28, %14
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @PC_ReadToken(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @Com_Memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @PC_UnreadSourceToken(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
