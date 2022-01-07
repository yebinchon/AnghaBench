; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_signal.c_sys_sigaltstack.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_signal.c_sys_sigaltstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.sighand* }
%struct.TYPE_3__ = type { i32 }
%struct.sighand = type { i64, i32, i32 }
%struct.stack_t_ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"sigaltstack(0x%x, 0x%x)\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@_EFAULT = common dso_local global i32 0, align 4
@_EPERM = common dso_local global i32 0, align 4
@SS_DISABLE_ = common dso_local global i32 0, align 4
@MINSIGSTKSZ_ = common dso_local global i64 0, align 8
@_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_sigaltstack(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sighand*, align 8
  %7 = alloca %struct.stack_t_, align 8
  %8 = alloca %struct.stack_t_, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @STRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %9, i64 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.sighand*, %struct.sighand** %13, align 8
  store %struct.sighand* %14, %struct.sighand** %6, align 8
  %15 = load %struct.sighand*, %struct.sighand** %6, align 8
  %16 = getelementptr inbounds %struct.sighand, %struct.sighand* %15, i32 0, i32 1
  %17 = call i32 @lock(i32* %16)
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.sighand*, %struct.sighand** %6, align 8
  %22 = call i32 @altstack_to_user(%struct.sighand* %21, %struct.stack_t_* %7)
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @user_put(i64 %23, %struct.stack_t_* byval(%struct.stack_t_) align 8 %7)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.sighand*, %struct.sighand** %6, align 8
  %28 = getelementptr inbounds %struct.sighand, %struct.sighand* %27, i32 0, i32 1
  %29 = call i32 @unlock(i32* %28)
  %30 = load i32, i32* @_EFAULT, align 4
  store i32 %30, i32* %3, align 4
  br label %87

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %83

35:                                               ; preds = %32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sighand*, %struct.sighand** %6, align 8
  %41 = call i64 @is_on_altstack(i32 %39, %struct.sighand* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.sighand*, %struct.sighand** %6, align 8
  %45 = getelementptr inbounds %struct.sighand, %struct.sighand* %44, i32 0, i32 1
  %46 = call i32 @unlock(i32* %45)
  %47 = load i32, i32* @_EPERM, align 4
  store i32 %47, i32* %3, align 4
  br label %87

48:                                               ; preds = %35
  %49 = load i64, i64* %4, align 8
  %50 = call i64 @user_get(i64 %49, %struct.stack_t_* byval(%struct.stack_t_) align 8 %8)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.sighand*, %struct.sighand** %6, align 8
  %54 = getelementptr inbounds %struct.sighand, %struct.sighand* %53, i32 0, i32 1
  %55 = call i32 @unlock(i32* %54)
  %56 = load i32, i32* @_EFAULT, align 4
  store i32 %56, i32* %3, align 4
  br label %87

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.stack_t_, %struct.stack_t_* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SS_DISABLE_, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.sighand*, %struct.sighand** %6, align 8
  %65 = getelementptr inbounds %struct.sighand, %struct.sighand* %64, i32 0, i32 2
  store i32 0, i32* %65, align 4
  br label %82

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.stack_t_, %struct.stack_t_* %8, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MINSIGSTKSZ_, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @_ENOMEM, align 4
  store i32 %72, i32* %3, align 4
  br label %87

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.stack_t_, %struct.stack_t_* %8, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sighand*, %struct.sighand** %6, align 8
  %77 = getelementptr inbounds %struct.sighand, %struct.sighand* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.stack_t_, %struct.stack_t_* %8, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.sighand*, %struct.sighand** %6, align 8
  %81 = getelementptr inbounds %struct.sighand, %struct.sighand* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %73, %63
  br label %83

83:                                               ; preds = %82, %32
  %84 = load %struct.sighand*, %struct.sighand** %6, align 8
  %85 = getelementptr inbounds %struct.sighand, %struct.sighand* %84, i32 0, i32 1
  %86 = call i32 @unlock(i32* %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %71, %52, %43, %26
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @STRACE(i8*, i64, i64) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @altstack_to_user(%struct.sighand*, %struct.stack_t_*) #1

declare dso_local i64 @user_put(i64, %struct.stack_t_* byval(%struct.stack_t_) align 8) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i64 @is_on_altstack(i32, %struct.sighand*) #1

declare dso_local i64 @user_get(i64, %struct.stack_t_* byval(%struct.stack_t_) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
