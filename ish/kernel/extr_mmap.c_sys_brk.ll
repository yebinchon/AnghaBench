; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_mmap.c_sys_brk.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_mmap.c_sys_brk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.mm* }
%struct.mm = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"brk(0x%x)\00", align 1
@current = common dso_local global %struct.TYPE_5__* null, align 8
@_EINVAL = common dso_local global i64 0, align 8
@P_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sys_brk(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @STRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.mm*, %struct.mm** %10, align 8
  store %struct.mm* %11, %struct.mm** %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.mm*, %struct.mm** %4, align 8
  %17 = getelementptr inbounds %struct.mm, %struct.mm* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i64, i64* @_EINVAL, align 8
  store i64 %21, i64* %2, align 8
  br label %86

22:                                               ; preds = %14, %1
  %23 = load %struct.mm*, %struct.mm** %4, align 8
  %24 = getelementptr inbounds %struct.mm, %struct.mm* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @write_wrlock(i32* %25)
  %27 = load %struct.mm*, %struct.mm** %4, align 8
  %28 = getelementptr inbounds %struct.mm, %struct.mm* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load %struct.mm*, %struct.mm** %4, align 8
  %34 = getelementptr inbounds %struct.mm, %struct.mm* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @write_wrunlock(i32* %35)
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* %2, align 8
  br label %86

38:                                               ; preds = %22
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load %struct.mm*, %struct.mm** %4, align 8
  %44 = getelementptr inbounds %struct.mm, %struct.mm* %43, i32 0, i32 2
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @PAGE_ROUND_UP(i64 %45)
  %47 = load i64, i64* %3, align 8
  %48 = call i64 @PAGE_ROUND_UP(i64 %47)
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @PAGE_ROUND_UP(i64 %49)
  %51 = sub nsw i64 %48, %50
  %52 = load i32, i32* @P_WRITE, align 4
  %53 = call i32 @pt_map_nothing(%struct.TYPE_4__* %44, i64 %46, i64 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %42
  %57 = load %struct.mm*, %struct.mm** %4, align 8
  %58 = getelementptr inbounds %struct.mm, %struct.mm* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i32 @write_wrunlock(i32* %59)
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %2, align 8
  br label %86

63:                                               ; preds = %42
  br label %77

64:                                               ; preds = %38
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load %struct.mm*, %struct.mm** %4, align 8
  %70 = getelementptr inbounds %struct.mm, %struct.mm* %69, i32 0, i32 2
  %71 = load i64, i64* %3, align 8
  %72 = call i32 @PAGE(i64 %71)
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @PAGE(i64 %73)
  %75 = call i32 @pt_unmap_always(%struct.TYPE_4__* %70, i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %68, %64
  br label %77

77:                                               ; preds = %76, %63
  %78 = load i64, i64* %3, align 8
  %79 = load %struct.mm*, %struct.mm** %4, align 8
  %80 = getelementptr inbounds %struct.mm, %struct.mm* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.mm*, %struct.mm** %4, align 8
  %82 = getelementptr inbounds %struct.mm, %struct.mm* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = call i32 @write_wrunlock(i32* %83)
  %85 = load i64, i64* %3, align 8
  store i64 %85, i64* %2, align 8
  br label %86

86:                                               ; preds = %77, %56, %32, %20
  %87 = load i64, i64* %2, align 8
  ret i64 %87
}

declare dso_local i32 @STRACE(i8*, i64) #1

declare dso_local i32 @write_wrlock(i32*) #1

declare dso_local i32 @write_wrunlock(i32*) #1

declare dso_local i32 @pt_map_nothing(%struct.TYPE_4__*, i64, i64, i32) #1

declare dso_local i64 @PAGE_ROUND_UP(i64) #1

declare dso_local i32 @pt_unmap_always(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @PAGE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
