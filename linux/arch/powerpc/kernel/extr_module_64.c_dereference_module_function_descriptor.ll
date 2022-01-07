; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_module_64.c_dereference_module_function_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_module_64.c_dereference_module_function_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dereference_module_function_descriptor(%struct.module* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca i8*, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load %struct.module*, %struct.module** %4, align 8
  %8 = getelementptr inbounds %struct.module, %struct.module* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = icmp ult i8* %6, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.module*, %struct.module** %4, align 8
  %16 = getelementptr inbounds %struct.module, %struct.module* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = icmp uge i8* %14, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %13, %2
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %3, align 8
  br label %26

23:                                               ; preds = %13
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @dereference_function_descriptor(i8* %24)
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %23, %21
  %27 = load i8*, i8** %3, align 8
  ret i8* %27
}

declare dso_local i8* @dereference_function_descriptor(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
