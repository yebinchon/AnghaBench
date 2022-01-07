; ModuleID = '/home/carl/AnghaBench/linux/arch/microblaze/kernel/cpu/extr_pvr.c_get_pvr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/microblaze/kernel/cpu/extr_pvr.c_get_pvr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr_s = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_pvr(%struct.pvr_s* %0) #0 {
  %2 = alloca %struct.pvr_s*, align 8
  store %struct.pvr_s* %0, %struct.pvr_s** %2, align 8
  %3 = load %struct.pvr_s*, %struct.pvr_s** %2, align 8
  %4 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @get_single_pvr(i32 0, i32 %7)
  %9 = load %struct.pvr_s*, %struct.pvr_s** %2, align 8
  %10 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @get_single_pvr(i32 1, i32 %13)
  %15 = load %struct.pvr_s*, %struct.pvr_s** %2, align 8
  %16 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_single_pvr(i32 2, i32 %19)
  %21 = load %struct.pvr_s*, %struct.pvr_s** %2, align 8
  %22 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @get_single_pvr(i32 3, i32 %25)
  %27 = load %struct.pvr_s*, %struct.pvr_s** %2, align 8
  %28 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @get_single_pvr(i32 4, i32 %31)
  %33 = load %struct.pvr_s*, %struct.pvr_s** %2, align 8
  %34 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @get_single_pvr(i32 5, i32 %37)
  %39 = load %struct.pvr_s*, %struct.pvr_s** %2, align 8
  %40 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 6
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @get_single_pvr(i32 6, i32 %43)
  %45 = load %struct.pvr_s*, %struct.pvr_s** %2, align 8
  %46 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 7
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @get_single_pvr(i32 7, i32 %49)
  %51 = load %struct.pvr_s*, %struct.pvr_s** %2, align 8
  %52 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @get_single_pvr(i32 8, i32 %55)
  %57 = load %struct.pvr_s*, %struct.pvr_s** %2, align 8
  %58 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 9
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @get_single_pvr(i32 9, i32 %61)
  %63 = load %struct.pvr_s*, %struct.pvr_s** %2, align 8
  %64 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 10
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @get_single_pvr(i32 10, i32 %67)
  %69 = load %struct.pvr_s*, %struct.pvr_s** %2, align 8
  %70 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 11
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @get_single_pvr(i32 11, i32 %73)
  ret void
}

declare dso_local i32 @get_single_pvr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
