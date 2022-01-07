; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_prof.c_bbentry.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_prof.c_bbentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@bbentry.prologue = internal global %struct.TYPE_9__* null, align 8
@STATIC = common dso_local global i32 0, align 4
@voidptype = common dso_local global i32 0, align 4
@GLOBAL = common dso_local global i32 0, align 4
@afunc = common dso_local global %struct.TYPE_9__* null, align 8
@EXTERN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"_prologue\00", align 1
@inttype = common dso_local global i32 0, align 4
@voidtype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__*)* @bbentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbentry(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %5 = load i32, i32* @STATIC, align 4
  %6 = load i32, i32* @voidptype, align 4
  %7 = call i32 @array(i32 %6, i32 4, i32 0)
  %8 = load i32, i32* @GLOBAL, align 4
  %9 = call %struct.TYPE_9__* @genident(i32 %5, i32 %7, i32 %8)
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** @afunc, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bbentry.prologue, align 8
  %11 = icmp eq %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* @EXTERN, align 4
  %14 = load i32, i32* @inttype, align 4
  %15 = load i32, i32* @voidptype, align 4
  %16 = call i32 @ftype(i32 %14, i32 %15)
  %17 = call %struct.TYPE_9__* @mksymbol(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** @bbentry.prologue, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bbentry.prologue, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bbentry.prologue, align 8
  %22 = load i32, i32* @voidtype, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @afunc, align 8
  %24 = call i32 @idtree(%struct.TYPE_9__* %23)
  %25 = call i32 @pointer(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = call i32 @idtree(%struct.TYPE_9__* %26)
  %28 = call i32 @pointer(i32 %27)
  %29 = call i32 @vcall(%struct.TYPE_9__* %21, i32 %22, i32 %25, i32 %28, i32* null)
  %30 = call i32 @walk(i32 %29, i32 0, i32 0)
  ret void
}

declare dso_local %struct.TYPE_9__* @genident(i32, i32, i32) #1

declare dso_local i32 @array(i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @mksymbol(i32, i8*, i32) #1

declare dso_local i32 @ftype(i32, i32) #1

declare dso_local i32 @walk(i32, i32, i32) #1

declare dso_local i32 @vcall(%struct.TYPE_9__*, i32, i32, i32, i32*) #1

declare dso_local i32 @pointer(i32) #1

declare dso_local i32 @idtree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
