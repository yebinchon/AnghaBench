; ModuleID = '/home/carl/AnghaBench/ish/util/extr_timer.c_timer_thread.c'
source_filename = "/home/carl/AnghaBench/ish/util/extr_timer.c_timer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer = type { i32, i32, i64, %struct.timespec, i32, i32, i32, i32 (i32)* }
%struct.timespec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @timer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @timer_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.timer*, align 8
  %4 = alloca %struct.timespec, align 4
  %5 = alloca %struct.timespec, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.timer*
  store %struct.timer* %7, %struct.timer** %3, align 8
  %8 = load %struct.timer*, %struct.timer** %3, align 8
  %9 = getelementptr inbounds %struct.timer, %struct.timer* %8, i32 0, i32 1
  %10 = call i32 @lock(i32* %9)
  br label %11

11:                                               ; preds = %1, %83
  %12 = load %struct.timer*, %struct.timer** %3, align 8
  %13 = getelementptr inbounds %struct.timer, %struct.timer* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (...) @timespec_now()
  %16 = call i32 @timespec_subtract(i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %30, %11
  %19 = load %struct.timer*, %struct.timer** %3, align 8
  %20 = getelementptr inbounds %struct.timer, %struct.timer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @timespec_positive(i32 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ false, %18 ], [ %27, %23 ]
  br i1 %29, label %30, label %46

30:                                               ; preds = %28
  %31 = load %struct.timer*, %struct.timer** %3, align 8
  %32 = getelementptr inbounds %struct.timer, %struct.timer* %31, i32 0, i32 1
  %33 = call i32 @unlock(i32* %32)
  %34 = call i32 @nanosleep(%struct.timespec* %4, i32* null)
  %35 = load %struct.timer*, %struct.timer** %3, align 8
  %36 = getelementptr inbounds %struct.timer, %struct.timer* %35, i32 0, i32 1
  %37 = call i32 @lock(i32* %36)
  %38 = load %struct.timer*, %struct.timer** %3, align 8
  %39 = getelementptr inbounds %struct.timer, %struct.timer* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (...) @timespec_now()
  %42 = call i32 @timespec_subtract(i32 %40, i32 %41)
  %43 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = bitcast %struct.timespec* %4 to i8*
  %45 = bitcast %struct.timespec* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  br label %18

46:                                               ; preds = %28
  %47 = load %struct.timer*, %struct.timer** %3, align 8
  %48 = getelementptr inbounds %struct.timer, %struct.timer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.timer*, %struct.timer** %3, align 8
  %53 = getelementptr inbounds %struct.timer, %struct.timer* %52, i32 0, i32 7
  %54 = load i32 (i32)*, i32 (i32)** %53, align 8
  %55 = load %struct.timer*, %struct.timer** %3, align 8
  %56 = getelementptr inbounds %struct.timer, %struct.timer* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 %54(i32 %57)
  br label %59

59:                                               ; preds = %51, %46
  %60 = load %struct.timer*, %struct.timer** %3, align 8
  %61 = getelementptr inbounds %struct.timer, %struct.timer* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.timespec, %struct.timespec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @timespec_positive(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = load %struct.timer*, %struct.timer** %3, align 8
  %68 = getelementptr inbounds %struct.timer, %struct.timer* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.timer*, %struct.timer** %3, align 8
  %71 = getelementptr inbounds %struct.timer, %struct.timer* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load %struct.timer*, %struct.timer** %3, align 8
  %73 = getelementptr inbounds %struct.timer, %struct.timer* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.timer*, %struct.timer** %3, align 8
  %76 = getelementptr inbounds %struct.timer, %struct.timer* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.timespec, %struct.timespec* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @timespec_add(i32 %74, i32 %78)
  %80 = load %struct.timer*, %struct.timer** %3, align 8
  %81 = getelementptr inbounds %struct.timer, %struct.timer* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  br label %83

82:                                               ; preds = %59
  br label %84

83:                                               ; preds = %66
  br label %11

84:                                               ; preds = %82
  %85 = load %struct.timer*, %struct.timer** %3, align 8
  %86 = getelementptr inbounds %struct.timer, %struct.timer* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load %struct.timer*, %struct.timer** %3, align 8
  %88 = getelementptr inbounds %struct.timer, %struct.timer* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load %struct.timer*, %struct.timer** %3, align 8
  %93 = call i32 @free(%struct.timer* %92)
  br label %98

94:                                               ; preds = %84
  %95 = load %struct.timer*, %struct.timer** %3, align 8
  %96 = getelementptr inbounds %struct.timer, %struct.timer* %95, i32 0, i32 1
  %97 = call i32 @unlock(i32* %96)
  br label %98

98:                                               ; preds = %94, %91
  ret i8* null
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @timespec_subtract(i32, i32) #1

declare dso_local i32 @timespec_now(...) #1

declare dso_local i64 @timespec_positive(i32) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @nanosleep(%struct.timespec*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timespec_add(i32, i32) #1

declare dso_local i32 @free(%struct.timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
