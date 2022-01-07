; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_signal.c_do_signal.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_signal.c_do_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.pt_regs* }
%struct.pt_regs = type { i64, i32, i32, i32, i32 }
%struct.ksignal = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@SA_RESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@__NR_restart_syscall = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @do_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_signal(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ksignal, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.pt_regs* %9, %struct.pt_regs** %12, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %1
  %18 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub i32 %21, 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %45 [
    i32 128, label %27
    i32 131, label %28
    i32 129, label %28
    i32 130, label %28
  ]

27:                                               ; preds = %17
  store i32 -2, i32* %7, align 4
  br label %28

28:                                               ; preds = %17, %17, %17, %27
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %17, %28
  br label %46

46:                                               ; preds = %45, %1
  %47 = call i64 @get_signal(%struct.ksignal* %8)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %94

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %54 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %55, %56
  br label %58

58:                                               ; preds = %52, %49
  %59 = phi i1 [ false, %49 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %91

63:                                               ; preds = %58
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 131
  br i1 %65, label %80, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 128
  br i1 %68, label %80, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 129
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %8, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SA_RESTART, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %72, %66, %63
  %81 = load i64, i64* @EINTR, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %84 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %86 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %85, i32 0, i32 3
  store i32 1, i32* %86, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %89 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %80, %72, %69
  br label %91

91:                                               ; preds = %90, %58
  %92 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %93 = call i32 @handle_signal(%struct.ksignal* %8, %struct.pt_regs* %92)
  store i32 0, i32* %2, align 4
  br label %115

94:                                               ; preds = %46
  %95 = load i32, i32* %7, align 4
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %94
  %99 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %100 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %107 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load i64, i64* @__NR_restart_syscall, align 8
  %109 = trunc i64 %108 to i32
  %110 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %111 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %104, %98, %94
  %113 = call i32 (...) @restore_saved_sigmask()
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %112, %91
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i64 @get_signal(%struct.ksignal*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @handle_signal(%struct.ksignal*, %struct.pt_regs*) #1

declare dso_local i32 @restore_saved_sigmask(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
