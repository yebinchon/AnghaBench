; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_spinlock_test.c_multi_other.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_spinlock_test.c_multi_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spin_multi_per_thread = type { i32, %struct.spin_multi_state* }
%struct.spin_multi_state = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @multi_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multi_other(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.spin_multi_per_thread*, align 8
  %6 = alloca %struct.spin_multi_state*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.spin_multi_per_thread*
  store %struct.spin_multi_per_thread* %8, %struct.spin_multi_per_thread** %5, align 8
  %9 = load %struct.spin_multi_per_thread*, %struct.spin_multi_per_thread** %5, align 8
  %10 = getelementptr inbounds %struct.spin_multi_per_thread, %struct.spin_multi_per_thread* %9, i32 0, i32 1
  %11 = load %struct.spin_multi_state*, %struct.spin_multi_state** %10, align 8
  store %struct.spin_multi_state* %11, %struct.spin_multi_state** %6, align 8
  %12 = load %struct.spin_multi_state*, %struct.spin_multi_state** %6, align 8
  %13 = getelementptr inbounds %struct.spin_multi_state, %struct.spin_multi_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %15 = load %struct.spin_multi_state*, %struct.spin_multi_state** %6, align 8
  %16 = getelementptr inbounds %struct.spin_multi_state, %struct.spin_multi_state* %15, i32 0, i32 4
  %17 = call i32 @atomic_dec(i32* %16)
  br label %18

18:                                               ; preds = %23, %1
  %19 = load %struct.spin_multi_state*, %struct.spin_multi_state** %6, align 8
  %20 = getelementptr inbounds %struct.spin_multi_state, %struct.spin_multi_state* %19, i32 0, i32 4
  %21 = call i64 @atomic_read(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %18

24:                                               ; preds = %18
  %25 = call i32 (...) @ktime_get()
  %26 = load %struct.spin_multi_per_thread*, %struct.spin_multi_per_thread** %5, align 8
  %27 = getelementptr inbounds %struct.spin_multi_per_thread, %struct.spin_multi_per_thread* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.spin_multi_state*, %struct.spin_multi_state** %6, align 8
  %29 = getelementptr inbounds %struct.spin_multi_state, %struct.spin_multi_state* %28, i32 0, i32 3
  %30 = call i32 @atomic_dec(i32* %29)
  br label %31

31:                                               ; preds = %36, %24
  %32 = load %struct.spin_multi_state*, %struct.spin_multi_state** %6, align 8
  %33 = getelementptr inbounds %struct.spin_multi_state, %struct.spin_multi_state* %32, i32 0, i32 3
  %34 = call i64 @atomic_read(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %31

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %50, %37
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.spin_multi_state*, %struct.spin_multi_state** %6, align 8
  %43 = getelementptr inbounds %struct.spin_multi_state, %struct.spin_multi_state* %42, i32 0, i32 2
  %44 = call i32 @raw_spin_lock(i32* %43)
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %41
  %51 = load %struct.spin_multi_state*, %struct.spin_multi_state** %6, align 8
  %52 = getelementptr inbounds %struct.spin_multi_state, %struct.spin_multi_state* %51, i32 0, i32 2
  %53 = call i32 @raw_spin_unlock(i32* %52)
  br label %38

54:                                               ; preds = %38
  %55 = load %struct.spin_multi_state*, %struct.spin_multi_state** %6, align 8
  %56 = getelementptr inbounds %struct.spin_multi_state, %struct.spin_multi_state* %55, i32 0, i32 1
  %57 = call i32 @atomic_dec(i32* %56)
  br label %58

58:                                               ; preds = %63, %54
  %59 = load %struct.spin_multi_state*, %struct.spin_multi_state** %6, align 8
  %60 = getelementptr inbounds %struct.spin_multi_state, %struct.spin_multi_state* %59, i32 0, i32 1
  %61 = call i64 @atomic_read(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %58

64:                                               ; preds = %58
  ret i32 0
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
