; ModuleID = '/home/carl/AnghaBench/ish/util/extr_timer.c_timer_set.c'
source_filename = "/home/carl/AnghaBench/ish/util/extr_timer.c_timer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer = type { i32, i32, i32, i32, %struct.timespec, i32 }
%struct.timespec = type { i32 }
%struct.timer_spec = type { i32, i32 }

@timer_thread = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timer_set(%struct.timer* %0, i64 %1, %struct.timer_spec* %2) #0 {
  %4 = alloca %struct.timer_spec, align 4
  %5 = alloca %struct.timer*, align 8
  %6 = alloca %struct.timer_spec*, align 8
  %7 = alloca %struct.timespec, align 4
  %8 = bitcast %struct.timer_spec* %4 to i64*
  store i64 %1, i64* %8, align 4
  store %struct.timer* %0, %struct.timer** %5, align 8
  store %struct.timer_spec* %2, %struct.timer_spec** %6, align 8
  %9 = load %struct.timer*, %struct.timer** %5, align 8
  %10 = getelementptr inbounds %struct.timer, %struct.timer* %9, i32 0, i32 1
  %11 = call i32 @lock(i32* %10)
  %12 = call i32 (...) @timespec_now()
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.timer_spec*, %struct.timer_spec** %6, align 8
  %15 = icmp ne %struct.timer_spec* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.timer*, %struct.timer** %5, align 8
  %18 = getelementptr inbounds %struct.timer, %struct.timer* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @timespec_subtract(i32 %19, i32 %21)
  %23 = load %struct.timer_spec*, %struct.timer_spec** %6, align 8
  %24 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.timer*, %struct.timer** %5, align 8
  %26 = getelementptr inbounds %struct.timer, %struct.timer* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.timer_spec*, %struct.timer_spec** %6, align 8
  %29 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %16, %3
  %31 = load %struct.timer*, %struct.timer** %5, align 8
  %32 = getelementptr inbounds %struct.timer, %struct.timer* %31, i32 0, i32 4
  %33 = bitcast %struct.timespec* %32 to i8*
  %34 = bitcast %struct.timespec* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load %struct.timer*, %struct.timer** %5, align 8
  %36 = getelementptr inbounds %struct.timer, %struct.timer* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.timespec, %struct.timespec* %36, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @timespec_add(i32 %40, i32 %38)
  %42 = load %struct.timer*, %struct.timer** %5, align 8
  %43 = getelementptr inbounds %struct.timer, %struct.timer* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %4, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.timer*, %struct.timer** %5, align 8
  %47 = getelementptr inbounds %struct.timer, %struct.timer* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @timespec_is_zero(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %30
  %53 = load %struct.timer*, %struct.timer** %5, align 8
  %54 = getelementptr inbounds %struct.timer, %struct.timer* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %52
  %58 = load %struct.timer*, %struct.timer** %5, align 8
  %59 = getelementptr inbounds %struct.timer, %struct.timer* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  %60 = load %struct.timer*, %struct.timer** %5, align 8
  %61 = getelementptr inbounds %struct.timer, %struct.timer* %60, i32 0, i32 2
  %62 = load i32, i32* @timer_thread, align 4
  %63 = load %struct.timer*, %struct.timer** %5, align 8
  %64 = call i32 @pthread_create(i32* %61, i32* null, i32 %62, %struct.timer* %63)
  %65 = load %struct.timer*, %struct.timer** %5, align 8
  %66 = getelementptr inbounds %struct.timer, %struct.timer* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pthread_detach(i32 %67)
  br label %69

69:                                               ; preds = %57, %52
  br label %84

70:                                               ; preds = %30
  %71 = load %struct.timer*, %struct.timer** %5, align 8
  %72 = getelementptr inbounds %struct.timer, %struct.timer* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.timer*, %struct.timer** %5, align 8
  %77 = getelementptr inbounds %struct.timer, %struct.timer* %76, i32 0, i32 0
  store i32 0, i32* %77, align 4
  %78 = load %struct.timer*, %struct.timer** %5, align 8
  %79 = getelementptr inbounds %struct.timer, %struct.timer* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SIGUSR1, align 4
  %82 = call i32 @pthread_kill(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %75, %70
  br label %84

84:                                               ; preds = %83, %69
  %85 = load %struct.timer*, %struct.timer** %5, align 8
  %86 = getelementptr inbounds %struct.timer, %struct.timer* %85, i32 0, i32 1
  %87 = call i32 @unlock(i32* %86)
  ret i32 0
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @timespec_now(...) #1

declare dso_local i32 @timespec_subtract(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timespec_add(i32, i32) #1

declare dso_local i32 @timespec_is_zero(i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.timer*) #1

declare dso_local i32 @pthread_detach(i32) #1

declare dso_local i32 @pthread_kill(i32, i32) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
