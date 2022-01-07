; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_module-plts.c_count_plts.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_module-plts.c_count_plts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@CONFIG_RANDOMIZE_BASE = common dso_local global i32 0, align 4
@CONFIG_ARM64_ERRATUM_843419 = common dso_local global i32 0, align 4
@ARM64_WORKAROUND_843419 = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32, %struct.TYPE_8__*)* @count_plts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_plts(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, %struct.TYPE_8__* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %102, %5
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %105

19:                                               ; preds = %15
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ELF64_R_TYPE(i32 %25)
  switch i32 %26, label %101 [
    i32 128, label %27
    i32 129, label %27
    i32 130, label %66
    i32 131, label %66
  ]

27:                                               ; preds = %19, %19
  %28 = load i32, i32* @CONFIG_RANDOMIZE_BASE, align 4
  %29 = call i64 @IS_ENABLED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %101

32:                                               ; preds = %27
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ELF64_R_SYM(i32 %39)
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %41
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %12, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %101

49:                                               ; preds = %32
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @duplicate_rel(%struct.TYPE_10__* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57, %49
  %63 = load i32, i32* %11, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %62, %57
  br label %101

66:                                               ; preds = %19, %19
  %67 = load i32, i32* @CONFIG_ARM64_ERRATUM_843419, align 4
  %68 = call i64 @IS_ENABLED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* @ARM64_WORKAROUND_843419, align 4
  %72 = call i64 @cpus_have_const_cap(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70, %66
  br label %101

75:                                               ; preds = %70
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, 7
  %83 = call i64 @ffz(i32 %82)
  %84 = shl i64 2, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @SZ_4K, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %75
  %90 = load i32, i32* %11, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %100

92:                                               ; preds = %75
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @max(i32 %95, i32 %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %92, %89
  br label %101

101:                                              ; preds = %19, %100, %74, %65, %48, %31
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %15

105:                                              ; preds = %15
  %106 = load i32, i32* @CONFIG_ARM64_ERRATUM_843419, align 4
  %107 = call i64 @IS_ENABLED(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %105
  %110 = load i32, i32* @ARM64_WORKAROUND_843419, align 4
  %111 = call i64 @cpus_have_const_cap(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @SZ_4K, align 4
  %116 = sext i32 %115 to i64
  %117 = udiv i64 %116, 4
  %118 = trunc i64 %117 to i32
  %119 = call i64 @DIV_ROUND_UP(i32 %114, i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = zext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %113, %109, %105
  %125 = load i32, i32* %11, align 4
  ret i32 %125
}

declare dso_local i32 @ELF64_R_TYPE(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @ELF64_R_SYM(i32) #1

declare dso_local i32 @duplicate_rel(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @cpus_have_const_cap(i32) #1

declare dso_local i64 @ffz(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
