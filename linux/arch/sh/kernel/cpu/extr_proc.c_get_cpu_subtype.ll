; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/extr_proc.c_get_cpu_subtype.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/extr_proc.c_get_cpu_subtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cpuinfo = type { i64 }

@cpu_name = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_cpu_subtype(%struct.sh_cpuinfo* %0) #0 {
  %2 = alloca %struct.sh_cpuinfo*, align 8
  store %struct.sh_cpuinfo* %0, %struct.sh_cpuinfo** %2, align 8
  %3 = load i8**, i8*** @cpu_name, align 8
  %4 = load %struct.sh_cpuinfo*, %struct.sh_cpuinfo** %2, align 8
  %5 = getelementptr inbounds %struct.sh_cpuinfo, %struct.sh_cpuinfo* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds i8*, i8** %3, i64 %6
  %8 = load i8*, i8** %7, align 8
  ret i8* %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
