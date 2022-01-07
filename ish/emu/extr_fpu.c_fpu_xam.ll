; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_fpu.c_fpu_xam.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_fpu.c_fpu_xam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_state = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpu_xam(%struct.cpu_state* %0) #0 {
  %2 = alloca %struct.cpu_state*, align 8
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca i32, align 4
  store %struct.cpu_state* %0, %struct.cpu_state** %2, align 8
  %5 = call i32 @ST(i32 0)
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  store i32 0, i32* %4, align 4
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @f80_is_supported(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %41

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @f80_isnan(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %40

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @f80_isinf(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 3, i32* %4, align 4
  br label %39

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @f80_iszero(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 4, i32* %4, align 4
  br label %38

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @f80_isdenormal(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 6, i32* %4, align 4
  br label %37

36:                                               ; preds = %30
  store i32 2, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %35
  br label %38

38:                                               ; preds = %37, %29
  br label %39

39:                                               ; preds = %38, %23
  br label %40

40:                                               ; preds = %39, %17
  br label %41

41:                                               ; preds = %40, %11
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cpu_state*, %struct.cpu_state** %2, align 8
  %45 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, 1
  %48 = load %struct.cpu_state*, %struct.cpu_state** %2, align 8
  %49 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %4, align 4
  %51 = ashr i32 %50, 1
  %52 = and i32 %51, 1
  %53 = load %struct.cpu_state*, %struct.cpu_state** %2, align 8
  %54 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %4, align 4
  %56 = ashr i32 %55, 2
  %57 = and i32 %56, 1
  %58 = load %struct.cpu_state*, %struct.cpu_state** %2, align 8
  %59 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  ret void
}

declare dso_local i32 @ST(i32) #1

declare dso_local i32 @f80_is_supported(i32) #1

declare dso_local i64 @f80_isnan(i32) #1

declare dso_local i64 @f80_isinf(i32) #1

declare dso_local i64 @f80_iszero(i32) #1

declare dso_local i64 @f80_isdenormal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
