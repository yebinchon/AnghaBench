; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-delta.c_add_spanhash.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-delta.c_add_spanhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spanhash_top = type { i32, i64, %struct.spanhash* }
%struct.spanhash = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.spanhash_top* (%struct.spanhash_top*, i32, i32)* @add_spanhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.spanhash_top* @add_spanhash(%struct.spanhash_top* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.spanhash_top*, align 8
  %5 = alloca %struct.spanhash_top*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spanhash*, align 8
  store %struct.spanhash_top* %0, %struct.spanhash_top** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.spanhash_top*, %struct.spanhash_top** %5, align 8
  %12 = getelementptr inbounds %struct.spanhash_top, %struct.spanhash_top* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 1, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %9, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %15, %17
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %3, %69
  %20 = load %struct.spanhash_top*, %struct.spanhash_top** %5, align 8
  %21 = getelementptr inbounds %struct.spanhash_top, %struct.spanhash_top* %20, i32 0, i32 2
  %22 = load %struct.spanhash*, %struct.spanhash** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %22, i64 %25
  store %struct.spanhash* %26, %struct.spanhash** %10, align 8
  %27 = load %struct.spanhash*, %struct.spanhash** %10, align 8
  %28 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.spanhash*, %struct.spanhash** %10, align 8
  %34 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.spanhash*, %struct.spanhash** %10, align 8
  %37 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.spanhash_top*, %struct.spanhash_top** %5, align 8
  %39 = getelementptr inbounds %struct.spanhash_top, %struct.spanhash_top* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.spanhash_top*, %struct.spanhash_top** %5, align 8
  %43 = getelementptr inbounds %struct.spanhash_top, %struct.spanhash_top* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %31
  %47 = load %struct.spanhash_top*, %struct.spanhash_top** %5, align 8
  %48 = call %struct.spanhash_top* @spanhash_rehash(%struct.spanhash_top* %47)
  store %struct.spanhash_top* %48, %struct.spanhash_top** %4, align 8
  br label %70

49:                                               ; preds = %31
  %50 = load %struct.spanhash_top*, %struct.spanhash_top** %5, align 8
  store %struct.spanhash_top* %50, %struct.spanhash_top** %4, align 8
  br label %70

51:                                               ; preds = %19
  %52 = load %struct.spanhash*, %struct.spanhash** %10, align 8
  %53 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.spanhash*, %struct.spanhash** %10, align 8
  %60 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.spanhash_top*, %struct.spanhash_top** %5, align 8
  store %struct.spanhash_top* %63, %struct.spanhash_top** %4, align 8
  br label %70

64:                                               ; preds = %51
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %68, %64
  br label %19

70:                                               ; preds = %57, %49, %46
  %71 = load %struct.spanhash_top*, %struct.spanhash_top** %4, align 8
  ret %struct.spanhash_top* %71
}

declare dso_local %struct.spanhash_top* @spanhash_rehash(%struct.spanhash_top*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
