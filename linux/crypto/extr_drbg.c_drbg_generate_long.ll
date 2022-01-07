; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_generate_long.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_generate_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbg_state = type { i32 }
%struct.drbg_string = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbg_state*, i8*, i32, %struct.drbg_string*)* @drbg_generate_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbg_generate_long(%struct.drbg_state* %0, i8* %1, i32 %2, %struct.drbg_string* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drbg_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drbg_string*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drbg_state* %0, %struct.drbg_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.drbg_string* %3, %struct.drbg_string** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %61, %4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %10, align 4
  %17 = sub i32 %15, %16
  %18 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %19 = call i32 @drbg_max_request_bytes(%struct.drbg_state* %18)
  %20 = udiv i32 %17, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %25 = call i32 @drbg_max_request_bytes(%struct.drbg_state* %24)
  br label %30

26:                                               ; preds = %14
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sub i32 %27, %28
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i32 [ %25, %23 ], [ %29, %26 ]
  store i32 %31, i32* %13, align 4
  %32 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %33 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.drbg_string*, %struct.drbg_string** %9, align 8
  %42 = call i32 @drbg_generate(%struct.drbg_state* %35, i8* %39, i32 %40, %struct.drbg_string* %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %44 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %12, align 4
  %47 = icmp sgt i32 0, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %30
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %64

50:                                               ; preds = %30
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = icmp ugt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ult i32 %58, %59
  br label %61

61:                                               ; preds = %57, %54
  %62 = phi i1 [ false, %54 ], [ %60, %57 ]
  br i1 %62, label %14, label %63

63:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %48
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @drbg_max_request_bytes(%struct.drbg_state*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drbg_generate(%struct.drbg_state*, i8*, i32, %struct.drbg_string*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
