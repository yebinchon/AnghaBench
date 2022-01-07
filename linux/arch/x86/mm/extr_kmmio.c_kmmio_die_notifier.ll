; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_kmmio.c_kmmio_die_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_kmmio.c_kmmio_die_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.die_args = type { i32, i32 }

@DIE_DEBUG = common dso_local global i64 0, align 8
@DR_STEP = common dso_local global i64 0, align 8
@NOTIFY_STOP = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @kmmio_die_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmmio_die_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.die_args*, align 8
  %9 = alloca i64*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.die_args*
  store %struct.die_args* %11, %struct.die_args** %8, align 8
  %12 = load %struct.die_args*, %struct.die_args** %8, align 8
  %13 = getelementptr inbounds %struct.die_args, %struct.die_args* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ERR_PTR(i32 %14)
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %9, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @DIE_DEBUG, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %3
  %21 = load i64*, i64** %9, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DR_STEP, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load i64*, i64** %9, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.die_args*, %struct.die_args** %8, align 8
  %30 = getelementptr inbounds %struct.die_args, %struct.die_args* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @post_kmmio_handler(i64 %28, i32 %31)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load i64, i64* @DR_STEP, align 8
  %36 = xor i64 %35, -1
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %37, align 8
  %39 = and i64 %38, %36
  store i64 %39, i64* %37, align 8
  %40 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %40, i32* %4, align 4
  br label %44

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41, %20, %3
  %43 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %34
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @ERR_PTR(i32) #1

declare dso_local i32 @post_kmmio_handler(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
