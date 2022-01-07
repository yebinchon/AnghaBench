; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_memory.c_pt_map_nothing.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_memory.c_pt_map_nothing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@P_ANONYMOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_map_nothing(%struct.mem* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.mem* %0, %struct.mem** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %33

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load i32, i32* @PROT_READ, align 4
  %19 = load i32, i32* @PROT_WRITE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MAP_PRIVATE, align 4
  %22 = load i32, i32* @MAP_ANONYMOUS, align 4
  %23 = or i32 %21, %22
  %24 = call i8* @mmap(i32* null, i32 %17, i32 %20, i32 %23, i32 0, i32 0)
  store i8* %24, i8** %10, align 8
  %25 = load %struct.mem*, %struct.mem** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @P_ANONYMOUS, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @pt_map(%struct.mem* %25, i32 %26, i32 %27, i8* %28, i32 0, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %14, %13
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pt_map(%struct.mem*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
