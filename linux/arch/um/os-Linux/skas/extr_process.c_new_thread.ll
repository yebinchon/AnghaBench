; ModuleID = '/home/carl/AnghaBench/linux/arch/um/os-Linux/skas/extr_process.c_new_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/os-Linux/skas/extr_process.c_new_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@UM_THREAD_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @new_thread(i8* %0, %struct.TYPE_3__** %1, void ()* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__**, align 8
  %6 = alloca void ()*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__** %1, %struct.TYPE_3__*** %5, align 8
  store void ()* %2, void ()** %6, align 8
  %7 = load void ()*, void ()** %6, align 8
  %8 = ptrtoint void ()* %7 to i64
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i64 %8, i64* %12, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = load i32, i32* @UM_THREAD_SIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %14, %16
  %18 = sub i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %19, i32* %23, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
