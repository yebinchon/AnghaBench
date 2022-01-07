; ModuleID = '/home/carl/AnghaBench/git/extr_progress.c_set_progress_signal.c'
source_filename = "/home/carl/AnghaBench/git/extr_progress.c_set_progress_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }
%struct.itimerval = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@progress_testing = common dso_local global i64 0, align 8
@progress_update = common dso_local global i64 0, align 8
@progress_interval = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@ITIMER_REAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_progress_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_progress_signal() #0 {
  %1 = alloca %struct.sigaction, align 4
  %2 = alloca %struct.itimerval, align 8
  %3 = load i64, i64* @progress_testing, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %26

6:                                                ; preds = %0
  store i64 0, i64* @progress_update, align 8
  %7 = call i32 @memset(%struct.sigaction* %1, i32 0, i32 12)
  %8 = load i32, i32* @progress_interval, align 4
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  %11 = call i32 @sigemptyset(i32* %10)
  %12 = load i32, i32* @SA_RESTART, align 4
  %13 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @SIGALRM, align 4
  %15 = call i32 @sigaction(i32 %14, %struct.sigaction* %1, i32* null)
  %16 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i32 0, i32 1
  %21 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i32 0, i32 0
  %22 = bitcast %struct.TYPE_2__* %20 to i8*
  %23 = bitcast %struct.TYPE_2__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  %24 = load i32, i32* @ITIMER_REAL, align 4
  %25 = call i32 @setitimer(i32 %24, %struct.itimerval* %2, i32* null)
  br label %26

26:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @setitimer(i32, %struct.itimerval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
