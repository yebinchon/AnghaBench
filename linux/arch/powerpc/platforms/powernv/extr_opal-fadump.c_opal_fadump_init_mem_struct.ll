; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-fadump.c_opal_fadump_init_mem_struct.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-fadump.c_opal_fadump_init_mem_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.fw_dump = type { i32, i64, i64*, i32*, i32, i64 }

@opal_fdm = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fw_dump*)* @opal_fadump_init_mem_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @opal_fadump_init_mem_struct(%struct.fw_dump* %0) #0 {
  %2 = alloca %struct.fw_dump*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.fw_dump* %0, %struct.fw_dump** %2, align 8
  %5 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %6 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %9 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_7__* @__va(i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** @opal_fdm, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @opal_fdm, align 8
  %13 = call i32 @opal_fadump_init_metadata(%struct.TYPE_7__* %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %70, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %17 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %14
  %21 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %22 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @opal_fdm, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i32 %27, i32* %34, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @opal_fdm, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i64 %35, i64* %42, align 8
  %43 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %44 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @opal_fdm, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i64 %49, i64* %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @opal_fdm, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %62 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %3, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %3, align 8
  br label %70

70:                                               ; preds = %20
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %14

73:                                               ; preds = %14
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @opal_fdm, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %81 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @opal_fdm, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @opal_fdm, align 8
  %88 = call i32 @opal_fadump_update_config(%struct.fw_dump* %86, %struct.TYPE_7__* %87)
  %89 = load i64, i64* %3, align 8
  ret i64 %89
}

declare dso_local %struct.TYPE_7__* @__va(i32) #1

declare dso_local i32 @opal_fadump_init_metadata(%struct.TYPE_7__*) #1

declare dso_local i32 @opal_fadump_update_config(%struct.fw_dump*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
