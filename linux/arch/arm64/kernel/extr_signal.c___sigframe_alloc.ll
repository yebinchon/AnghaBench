; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_signal.c___sigframe_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_signal.c___sigframe_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_sigframe_user_layout = type { i64, i64, i64 }

@EXTRA_CONTEXT_SIZE = common dso_local global i64 0, align 8
@TERMINATOR_SIZE = common dso_local global i64 0, align 8
@SIGFRAME_MAXSZ = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt_sigframe_user_layout*, i64*, i64, i32)* @__sigframe_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sigframe_alloc(%struct.rt_sigframe_user_layout* %0, i64* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt_sigframe_user_layout*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.rt_sigframe_user_layout* %0, %struct.rt_sigframe_user_layout** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  %13 = call i64 @round_up(i64 %12, i32 16)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %6, align 8
  %16 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %6, align 8
  %19 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %17, %20
  %22 = icmp ugt i64 %14, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %4
  %24 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %6, align 8
  %25 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %61, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %28
  %32 = load i64, i64* @EXTRA_CONTEXT_SIZE, align 8
  %33 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %6, align 8
  %34 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %6, align 8
  %38 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %6, align 8
  %39 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %38, i32 0, i32 2
  %40 = call i32 @__sigframe_alloc(%struct.rt_sigframe_user_layout* %37, i64* %39, i64 4, i32 0)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %31
  %44 = load i64, i64* @EXTRA_CONTEXT_SIZE, align 8
  %45 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %6, align 8
  %46 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %84

50:                                               ; preds = %31
  %51 = load i64, i64* @TERMINATOR_SIZE, align 8
  %52 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %6, align 8
  %53 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load i64, i64* @SIGFRAME_MAXSZ, align 8
  %57 = load i64, i64* @TERMINATOR_SIZE, align 8
  %58 = sub i64 %56, %57
  %59 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %6, align 8
  %60 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %50, %28, %23, %4
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %6, align 8
  %64 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %6, align 8
  %67 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sub i64 %65, %68
  %70 = icmp ugt i64 %62, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %84

74:                                               ; preds = %61
  %75 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %6, align 8
  %76 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %7, align 8
  store i64 %77, i64* %78, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %6, align 8
  %81 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, %79
  store i64 %83, i64* %81, align 8
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %74, %71, %43
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i64 @round_up(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
