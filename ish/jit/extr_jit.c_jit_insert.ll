; ModuleID = '/home/carl/AnghaBench/ish/jit/extr_jit.c_jit_insert.c'
source_filename = "/home/carl/AnghaBench/ish/jit/extr_jit.c_jit_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit = type { i32, i32, i32, i32*, i32 }
%struct.jit_block = type { i64, i64, i32*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jit*, %struct.jit_block*)* @jit_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jit_insert(%struct.jit* %0, %struct.jit_block* %1) #0 {
  %3 = alloca %struct.jit*, align 8
  %4 = alloca %struct.jit_block*, align 8
  store %struct.jit* %0, %struct.jit** %3, align 8
  store %struct.jit_block* %1, %struct.jit_block** %4, align 8
  %5 = load %struct.jit_block*, %struct.jit_block** %4, align 8
  %6 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.jit*, %struct.jit** %3, align 8
  %9 = getelementptr inbounds %struct.jit, %struct.jit* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %7
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 8
  %14 = load %struct.jit*, %struct.jit** %3, align 8
  %15 = getelementptr inbounds %struct.jit, %struct.jit* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.jit*, %struct.jit** %3, align 8
  %19 = getelementptr inbounds %struct.jit, %struct.jit* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.jit*, %struct.jit** %3, align 8
  %22 = getelementptr inbounds %struct.jit, %struct.jit* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 2
  %25 = icmp sge i32 %20, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.jit*, %struct.jit** %3, align 8
  %28 = load %struct.jit*, %struct.jit** %3, align 8
  %29 = getelementptr inbounds %struct.jit, %struct.jit* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 2
  %32 = call i32 @jit_resize_hash(%struct.jit* %27, i32 %31)
  br label %33

33:                                               ; preds = %26, %2
  %34 = load %struct.jit*, %struct.jit** %3, align 8
  %35 = getelementptr inbounds %struct.jit, %struct.jit* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.jit_block*, %struct.jit_block** %4, align 8
  %38 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.jit*, %struct.jit** %3, align 8
  %41 = getelementptr inbounds %struct.jit, %struct.jit* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = urem i64 %39, %43
  %45 = getelementptr inbounds i32, i32* %36, i64 %44
  %46 = load %struct.jit_block*, %struct.jit_block** %4, align 8
  %47 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %46, i32 0, i32 3
  %48 = call i32 @list_init_add(i32* %45, i32* %47)
  %49 = load %struct.jit*, %struct.jit** %3, align 8
  %50 = getelementptr inbounds %struct.jit, %struct.jit* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.jit_block*, %struct.jit_block** %4, align 8
  %53 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @PAGE(i64 %54)
  %56 = call i32* @mem_pt(i32 %51, i64 %55)
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %33
  br label %92

59:                                               ; preds = %33
  %60 = load %struct.jit*, %struct.jit** %3, align 8
  %61 = load %struct.jit_block*, %struct.jit_block** %4, align 8
  %62 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @PAGE(i64 %63)
  %65 = call i32* @blocks_list(%struct.jit* %60, i64 %64, i32 0)
  %66 = load %struct.jit_block*, %struct.jit_block** %4, align 8
  %67 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = call i32 @list_init_add(i32* %65, i32* %69)
  %71 = load %struct.jit_block*, %struct.jit_block** %4, align 8
  %72 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @PAGE(i64 %73)
  %75 = load %struct.jit_block*, %struct.jit_block** %4, align 8
  %76 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @PAGE(i64 %77)
  %79 = icmp ne i64 %74, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %59
  %81 = load %struct.jit*, %struct.jit** %3, align 8
  %82 = load %struct.jit_block*, %struct.jit_block** %4, align 8
  %83 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @PAGE(i64 %84)
  %86 = call i32* @blocks_list(%struct.jit* %81, i64 %85, i32 1)
  %87 = load %struct.jit_block*, %struct.jit_block** %4, align 8
  %88 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = call i32 @list_init_add(i32* %86, i32* %90)
  br label %92

92:                                               ; preds = %58, %80, %59
  ret void
}

declare dso_local i32 @jit_resize_hash(%struct.jit*, i32) #1

declare dso_local i32 @list_init_add(i32*, i32*) #1

declare dso_local i32* @mem_pt(i32, i64) #1

declare dso_local i64 @PAGE(i64) #1

declare dso_local i32* @blocks_list(%struct.jit*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
