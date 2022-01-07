; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_mca_drv.c_recover_from_platform_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_mca_drv.c_recover_from_platform_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.ia64_sal_os_state = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_6__*, %struct.ia64_sal_os_state*)* @recover_from_platform_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recover_from_platform_error(i32* %0, i32* %1, %struct.TYPE_6__* %2, %struct.ia64_sal_os_state* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.ia64_sal_os_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store %struct.ia64_sal_os_state* %3, %struct.ia64_sal_os_state** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @peidx_psp(i32* %11)
  %13 = inttoptr i64 %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %39 [
    i32 1, label %32
    i32 3, label %32
    i32 9, label %32
    i32 0, label %38
    i32 2, label %38
    i32 4, label %38
    i32 5, label %38
    i32 6, label %38
    i32 7, label %38
    i32 8, label %38
    i32 10, label %38
    i32 11, label %38
    i32 12, label %38
  ]

32:                                               ; preds = %28, %28, %28
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = load %struct.ia64_sal_os_state*, %struct.ia64_sal_os_state** %8, align 8
  %37 = call i32 @recover_from_read_error(i32* %33, i32* %34, %struct.TYPE_6__* %35, %struct.ia64_sal_os_state* %36)
  store i32 %37, i32* %9, align 4
  br label %40

38:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  br label %39

39:                                               ; preds = %28, %38
  br label %40

40:                                               ; preds = %39, %32
  br label %58

41:                                               ; preds = %23, %18, %4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = load %struct.ia64_sal_os_state*, %struct.ia64_sal_os_state** %8, align 8
  %56 = call i32 @recover_from_read_error(i32* %52, i32* %53, %struct.TYPE_6__* %54, %struct.ia64_sal_os_state* %55)
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %51, %46, %41
  br label %58

58:                                               ; preds = %57, %40
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i64 @peidx_psp(i32*) #1

declare dso_local i32 @recover_from_read_error(i32*, i32*, %struct.TYPE_6__*, %struct.ia64_sal_os_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
