; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_add_cas_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_add_cas_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.push_cas = type { i32 }
%struct.push_cas_option = type { i64, %struct.push_cas*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.push_cas* (%struct.push_cas_option*, i8*, i64)* @add_cas_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.push_cas* @add_cas_entry(%struct.push_cas_option* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.push_cas_option*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.push_cas*, align 8
  store %struct.push_cas_option* %0, %struct.push_cas_option** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.push_cas_option*, %struct.push_cas_option** %4, align 8
  %9 = getelementptr inbounds %struct.push_cas_option, %struct.push_cas_option* %8, i32 0, i32 1
  %10 = load %struct.push_cas*, %struct.push_cas** %9, align 8
  %11 = load %struct.push_cas_option*, %struct.push_cas_option** %4, align 8
  %12 = getelementptr inbounds %struct.push_cas_option, %struct.push_cas_option* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  %15 = load %struct.push_cas_option*, %struct.push_cas_option** %4, align 8
  %16 = getelementptr inbounds %struct.push_cas_option, %struct.push_cas_option* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ALLOC_GROW(%struct.push_cas* %10, i64 %14, i32 %17)
  %19 = load %struct.push_cas_option*, %struct.push_cas_option** %4, align 8
  %20 = getelementptr inbounds %struct.push_cas_option, %struct.push_cas_option* %19, i32 0, i32 1
  %21 = load %struct.push_cas*, %struct.push_cas** %20, align 8
  %22 = load %struct.push_cas_option*, %struct.push_cas_option** %4, align 8
  %23 = getelementptr inbounds %struct.push_cas_option, %struct.push_cas_option* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = getelementptr inbounds %struct.push_cas, %struct.push_cas* %21, i64 %24
  store %struct.push_cas* %26, %struct.push_cas** %7, align 8
  %27 = load %struct.push_cas*, %struct.push_cas** %7, align 8
  %28 = call i32 @memset(%struct.push_cas* %27, i32 0, i32 4)
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @xmemdupz(i8* %29, i64 %30)
  %32 = load %struct.push_cas*, %struct.push_cas** %7, align 8
  %33 = getelementptr inbounds %struct.push_cas, %struct.push_cas* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.push_cas*, %struct.push_cas** %7, align 8
  ret %struct.push_cas* %34
}

declare dso_local i32 @ALLOC_GROW(%struct.push_cas*, i64, i32) #1

declare dso_local i32 @memset(%struct.push_cas*, i32, i32) #1

declare dso_local i32 @xmemdupz(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
