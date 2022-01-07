; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_kgdb.c_pt_regs_to_gdb_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_kgdb.c_pt_regs_to_gdb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.parisc_gdb_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pt_regs_to_gdb_regs(i64* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.parisc_gdb_regs*, align 8
  store i64* %0, i64** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = bitcast i64* %6 to %struct.parisc_gdb_regs*
  store %struct.parisc_gdb_regs* %7, %struct.parisc_gdb_regs** %5, align 8
  %8 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %9 = call i32 @memset(%struct.parisc_gdb_regs* %8, i32 0, i32 80)
  %10 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %11 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %10, i32 0, i32 19
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @memcpy(i32 %12, i32 %15, i32 4)
  %17 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %18 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %17, i32 0, i32 18
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @memcpy(i32 %19, i32 %22, i32 4)
  %24 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 8
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %30 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %29, i32 0, i32 17
  store i32 %28, i32* %30, align 4
  %31 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %31, i32 0, i32 8
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %37 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %36, i32 0, i32 16
  store i32 %35, i32* %37, align 4
  %38 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %39 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %38, i32 0, i32 8
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %44 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %43, i32 0, i32 15
  store i32 %42, i32* %44, align 4
  %45 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 8
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %51 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %50, i32 0, i32 14
  store i32 %49, i32* %51, align 4
  %52 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %53 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %52, i32 0, i32 8
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %58 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %57, i32 0, i32 13
  store i32 %56, i32* %58, align 4
  %59 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %60 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %59, i32 0, i32 8
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %65 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %64, i32 0, i32 12
  store i32 %63, i32* %65, align 4
  %66 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %67 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %66, i32 0, i32 8
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 6
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %72 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %71, i32 0, i32 11
  store i32 %70, i32* %72, align 4
  %73 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 8
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 7
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %79 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %78, i32 0, i32 10
  store i32 %77, i32* %79, align 4
  %80 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %81 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %84 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %83, i32 0, i32 9
  store i32 %82, i32* %84, align 4
  %85 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %86 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %89 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 4
  %90 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %91 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %94 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  %95 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %96 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %99 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  %100 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %101 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %104 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %106 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %109 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %111 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %116 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %118 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %123 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %125 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %130 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %132 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.parisc_gdb_regs*, %struct.parisc_gdb_regs** %5, align 8
  %137 = getelementptr inbounds %struct.parisc_gdb_regs, %struct.parisc_gdb_regs* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  ret void
}

declare dso_local i32 @memset(%struct.parisc_gdb_regs*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
