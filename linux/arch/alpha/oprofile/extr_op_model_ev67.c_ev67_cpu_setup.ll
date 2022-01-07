; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/oprofile/extr_op_model_ev67.c_ev67_cpu_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/oprofile/extr_op_model_ev67.c_ev67_cpu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_register_config = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ev67_cpu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev67_cpu_setup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.op_register_config*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.op_register_config*
  store %struct.op_register_config* %5, %struct.op_register_config** %3, align 8
  %6 = load %struct.op_register_config*, %struct.op_register_config** %3, align 8
  %7 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @wrperfmon(i32 2, i32 %8)
  %10 = load %struct.op_register_config*, %struct.op_register_config** %3, align 8
  %11 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @wrperfmon(i32 3, i32 %12)
  %14 = load %struct.op_register_config*, %struct.op_register_config** %3, align 8
  %15 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, 3
  %18 = call i32 @wrperfmon(i32 6, i32 %17)
  ret void
}

declare dso_local i32 @wrperfmon(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
