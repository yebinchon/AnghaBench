; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_ftruncate64.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_ftruncate64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.fd*, i32)* }

@_EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_ftruncate64(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fd*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = shl i32 %10, 32
  %12 = load i32, i32* %6, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.fd* @f_get(i32 %14)
  store %struct.fd* %15, %struct.fd** %9, align 8
  %16 = load %struct.fd*, %struct.fd** %9, align 8
  %17 = icmp eq %struct.fd* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @_EBADF, align 4
  store i32 %19, i32* %4, align 4
  br label %33

20:                                               ; preds = %3
  %21 = load %struct.fd*, %struct.fd** %9, align 8
  %22 = getelementptr inbounds %struct.fd, %struct.fd* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.fd*, i32)*, i32 (%struct.fd*, i32)** %26, align 8
  %28 = load %struct.fd*, %struct.fd** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @make_attr(i32 %29, i32 %30)
  %32 = call i32 %27(%struct.fd* %28, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %20, %18
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.fd* @f_get(i32) #1

declare dso_local i32 @make_attr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
