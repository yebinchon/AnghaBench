; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_signal.c_ia64_do_signal.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_signal.c_ia64_do_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigscratch = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.ksignal = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINTR = common dso_local global i8* null, align 8
@SA_RESTART = common dso_local global i32 0, align 4
@__NR_restart_syscall = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_do_signal(%struct.sigscratch* %0, i64 %1) #0 {
  %3 = alloca %struct.sigscratch*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ksignal, align 8
  store %struct.sigscratch* %0, %struct.sigscratch** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %10 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %2, %63
  %14 = call i32 @get_signal(%struct.ksignal* %7)
  %15 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %16 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %20, %13
  %22 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %7, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %64

26:                                               ; preds = %21
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @unlikely(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = load i64, i64* %6, align 8
  switch i64 %31, label %57 [
    i64 128, label %32
    i64 131, label %32
    i64 129, label %38
    i64 130, label %53
  ]

32:                                               ; preds = %30, %30
  %33 = load i8*, i8** @EINTR, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %36 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  br label %57

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %7, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SA_RESTART, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i8*, i8** @EINTR, align 8
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %50 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  br label %57

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %30, %52
  %54 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %55 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %54, i32 0, i32 0
  %56 = call i32 @ia64_decrement_ip(%struct.TYPE_6__* %55)
  store i64 0, i64* %5, align 8
  br label %57

57:                                               ; preds = %53, %30, %46, %32
  br label %58

58:                                               ; preds = %57, %26
  %59 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %60 = call i64 @handle_signal(%struct.ksignal* %7, %struct.sigscratch* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %94

63:                                               ; preds = %58
  br label %13

64:                                               ; preds = %25
  %65 = load i64, i64* %5, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %64
  %68 = load i64, i64* %6, align 8
  %69 = icmp eq i64 %68, 131
  br i1 %69, label %79, label %70

70:                                               ; preds = %67
  %71 = load i64, i64* %6, align 8
  %72 = icmp eq i64 %71, 129
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %6, align 8
  %75 = icmp eq i64 %74, 130
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %6, align 8
  %78 = icmp eq i64 %77, 128
  br i1 %78, label %79, label %91

79:                                               ; preds = %76, %73, %70, %67
  %80 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %81 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %80, i32 0, i32 0
  %82 = call i32 @ia64_decrement_ip(%struct.TYPE_6__* %81)
  %83 = load i64, i64* %6, align 8
  %84 = icmp eq i64 %83, 128
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load i32, i32* @__NR_restart_syscall, align 4
  %87 = load %struct.sigscratch*, %struct.sigscratch** %3, align 8
  %88 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 8
  br label %90

90:                                               ; preds = %85, %79
  br label %91

91:                                               ; preds = %90, %76
  br label %92

92:                                               ; preds = %91, %64
  %93 = call i32 (...) @restore_saved_sigmask()
  br label %94

94:                                               ; preds = %92, %62
  ret void
}

declare dso_local i32 @get_signal(%struct.ksignal*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @ia64_decrement_ip(%struct.TYPE_6__*) #1

declare dso_local i64 @handle_signal(%struct.ksignal*, %struct.sigscratch*) #1

declare dso_local i32 @restore_saved_sigmask(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
