; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/prom/extr_console_32.c_prom_nbputchar.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/prom/extr_console_32.c_prom_nbputchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 (i8)* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 (i32, i8*, i32)* }

@prom_lock = common dso_local global i32 0, align 4
@prom_vers = common dso_local global i32 0, align 4
@romvec = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @prom_nbputchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prom_nbputchar(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @prom_lock, i64 %5)
  %7 = load i32, i32* @prom_vers, align 4
  switch i32 %7, label %33 [
    i32 130, label %8
    i32 129, label %18
    i32 128, label %18
  ]

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @romvec, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load i32 (i8)*, i32 (i8)** %10, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = load i8, i8* %12, align 1
  %14 = call i32 %11(i8 signext %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store i32 1, i32* %4, align 4
  br label %17

17:                                               ; preds = %16, %8
  br label %34

18:                                               ; preds = %1, %1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @romvec, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @romvec, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 %22(i32 %27, i8* %28, i32 1)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %18
  br label %34

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %33, %32, %17
  %35 = call i32 (...) @restore_current()
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* @prom_lock, i64 %36)
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @restore_current(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
