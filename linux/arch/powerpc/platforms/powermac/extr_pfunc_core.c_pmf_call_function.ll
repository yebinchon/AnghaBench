; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_call_function.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_call_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.pmf_args = type { i32 }
%struct.pmf_function = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmf_call_function(%struct.device_node* %0, i8* %1, %struct.pmf_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pmf_args*, align 8
  %8 = alloca %struct.pmf_function*, align 8
  %9 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.pmf_args* %2, %struct.pmf_args** %7, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.pmf_function* @pmf_find_function(%struct.device_node* %10, i8* %11)
  store %struct.pmf_function* %12, %struct.pmf_function** %8, align 8
  %13 = load %struct.pmf_function*, %struct.pmf_function** %8, align 8
  %14 = icmp eq %struct.pmf_function* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %25

18:                                               ; preds = %3
  %19 = load %struct.pmf_function*, %struct.pmf_function** %8, align 8
  %20 = load %struct.pmf_args*, %struct.pmf_args** %7, align 8
  %21 = call i32 @pmf_call_one(%struct.pmf_function* %19, %struct.pmf_args* %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.pmf_function*, %struct.pmf_function** %8, align 8
  %23 = call i32 @pmf_put_function(%struct.pmf_function* %22)
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local %struct.pmf_function* @pmf_find_function(%struct.device_node*, i8*) #1

declare dso_local i32 @pmf_call_one(%struct.pmf_function*, %struct.pmf_args*) #1

declare dso_local i32 @pmf_put_function(%struct.pmf_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
