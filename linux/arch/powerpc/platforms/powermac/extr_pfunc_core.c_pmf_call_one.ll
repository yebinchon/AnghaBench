; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_call_one.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_call_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmf_function = type { i32, %struct.pmf_device* }
%struct.pmf_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.pmf_function*, i8*)*, i8* (%struct.pmf_function*, %struct.pmf_args*)* }
%struct.pmf_args = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c" ** pmf_call_one(%pOF/%s) **\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmf_call_one(%struct.pmf_function* %0, %struct.pmf_args* %1) #0 {
  %3 = alloca %struct.pmf_function*, align 8
  %4 = alloca %struct.pmf_args*, align 8
  %5 = alloca %struct.pmf_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.pmf_function* %0, %struct.pmf_function** %3, align 8
  store %struct.pmf_args* %1, %struct.pmf_args** %4, align 8
  %8 = load %struct.pmf_function*, %struct.pmf_function** %3, align 8
  %9 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %8, i32 0, i32 1
  %10 = load %struct.pmf_device*, %struct.pmf_device** %9, align 8
  store %struct.pmf_device* %10, %struct.pmf_device** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.pmf_device*, %struct.pmf_device** %5, align 8
  %12 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.pmf_function*, %struct.pmf_function** %3, align 8
  %15 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.pmf_device*, %struct.pmf_device** %5, align 8
  %19 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i8* (%struct.pmf_function*, %struct.pmf_args*)*, i8* (%struct.pmf_function*, %struct.pmf_args*)** %21, align 8
  %23 = icmp ne i8* (%struct.pmf_function*, %struct.pmf_args*)* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.pmf_device*, %struct.pmf_device** %5, align 8
  %26 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i8* (%struct.pmf_function*, %struct.pmf_args*)*, i8* (%struct.pmf_function*, %struct.pmf_args*)** %28, align 8
  %30 = load %struct.pmf_function*, %struct.pmf_function** %3, align 8
  %31 = load %struct.pmf_args*, %struct.pmf_args** %4, align 8
  %32 = call i8* %29(%struct.pmf_function* %30, %struct.pmf_args* %31)
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %24, %2
  %34 = load %struct.pmf_function*, %struct.pmf_function** %3, align 8
  %35 = load %struct.pmf_device*, %struct.pmf_device** %5, align 8
  %36 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.pmf_args*, %struct.pmf_args** %4, align 8
  %40 = call i32 @pmf_parse_one(%struct.pmf_function* %34, %struct.TYPE_2__* %37, i8* %38, %struct.pmf_args* %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.pmf_device*, %struct.pmf_device** %5, align 8
  %42 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.pmf_function*, i8*)*, i32 (%struct.pmf_function*, i8*)** %44, align 8
  %46 = icmp ne i32 (%struct.pmf_function*, i8*)* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %33
  %48 = load %struct.pmf_device*, %struct.pmf_device** %5, align 8
  %49 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.pmf_function*, i8*)*, i32 (%struct.pmf_function*, i8*)** %51, align 8
  %53 = load %struct.pmf_function*, %struct.pmf_function** %3, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 %52(%struct.pmf_function* %53, i8* %54)
  br label %56

56:                                               ; preds = %47, %33
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @pmf_parse_one(%struct.pmf_function*, %struct.TYPE_2__*, i8*, %struct.pmf_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
