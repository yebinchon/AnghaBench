; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500mc.c_kvmppc_core_check_processor_compat.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500mc.c_kvmppc_core_check_processor_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@cur_cpu_spec = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"e500mc\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"e5500\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_core_check_processor_compat() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_cpu_spec, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @strcmp(i32 %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %19

8:                                                ; preds = %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_cpu_spec, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @strcmp(i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %18

15:                                               ; preds = %8
  %16 = load i32, i32* @ENOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %15, %14
  br label %19

19:                                               ; preds = %18, %7
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
