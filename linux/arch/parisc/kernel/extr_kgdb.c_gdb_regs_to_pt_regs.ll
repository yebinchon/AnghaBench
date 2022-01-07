; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_kgdb.c_gdb_regs_to_pt_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_kgdb.c_gdb_regs_to_pt_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.parisc_gdb_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdb_regs_to_pt_regs(i64* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.parisc_gdb_regs*, align 8
  store i64* %0, i64** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = bitcast i64* %6 to %struct.parisc_gdb_regs*
  store %struct.parisc_gdb_regs* %7, %struct.parisc_gdb_regs** %5, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i32 0, i32 10
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %12 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %11, i32 0, i32 19
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @memcpy(i32 %10, i32 %13, i32 4)
  %15 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %19 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %18, i32 0, i32 18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @memcpy(i32 %17, i32 %20, i32 4)
  %22 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %23 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %22, i32 0, i32 17
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 8
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %30 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %29, i32 0, i32 16
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 8
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %31, i32* %35, align 4
  %36 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %37 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %36, i32 0, i32 15
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 8
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %38, i32* %42, align 4
  %43 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %44 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %43, i32 0, i32 14
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %47 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %46, i32 0, i32 8
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  store i32 %45, i32* %49, align 4
  %50 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %51 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %50, i32 0, i32 13
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %54 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %53, i32 0, i32 8
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  store i32 %52, i32* %56, align 4
  %57 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %58 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %57, i32 0, i32 12
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %61 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %60, i32 0, i32 8
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  store i32 %59, i32* %63, align 4
  %64 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %65 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %64, i32 0, i32 11
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %68 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %67, i32 0, i32 8
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 6
  store i32 %66, i32* %70, align 4
  %71 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %72 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %71, i32 0, i32 10
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %75 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %74, i32 0, i32 8
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 7
  store i32 %73, i32* %77, align 4
  %78 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %79 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %82 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  %83 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %84 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %87 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %89 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %92 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  %93 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %94 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %97 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %99 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %102 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %104 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %107 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %109 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %112 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 %110, i32* %114, align 4
  %115 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %116 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %119 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %117, i32* %121, align 4
  %122 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %123 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %126 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 %124, i32* %128, align 4
  %129 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %130 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %133 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  store i32 %131, i32* %135, align 4
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
