; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_uname.c_sysinfo_specific.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_uname.c_sysinfo_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sys_info*)* @sysinfo_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysinfo_specific(%struct.sys_info* %0) #0 {
  %2 = alloca %struct.sys_info*, align 8
  %3 = alloca %struct.sysinfo, align 4
  store %struct.sys_info* %0, %struct.sys_info** %2, align 8
  %4 = call i32 @sysinfo(%struct.sysinfo* %3)
  %5 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %3, i32 0, i32 8
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.sys_info*, %struct.sys_info** %2, align 8
  %8 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %7, i32 0, i32 8
  store i32 %6, i32* %8, align 4
  %9 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %3, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sys_info*, %struct.sys_info** %2, align 8
  %12 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %11, i32 0, i32 7
  store i32 %10, i32* %12, align 4
  %13 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %3, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sys_info*, %struct.sys_info** %2, align 8
  %16 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %3, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sys_info*, %struct.sys_info** %2, align 8
  %20 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %3, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sys_info*, %struct.sys_info** %2, align 8
  %24 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %3, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sys_info*, %struct.sys_info** %2, align 8
  %28 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %3, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sys_info*, %struct.sys_info** %2, align 8
  %32 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %3, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sys_info*, %struct.sys_info** %2, align 8
  %36 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %3, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sys_info*, %struct.sys_info** %2, align 8
  %40 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  ret void
}

declare dso_local i32 @sysinfo(%struct.sysinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
