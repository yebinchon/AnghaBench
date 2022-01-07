; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_bats.c_bat_show_603.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_bats.c_bat_show_603.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%d: \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"        -\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"0x%08x-0x%08x \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"0x%08x \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"User \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Kernel \00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Kernel/User \00", align 1
@BPP_RX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"RO \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"EXEC \00", align 1
@BPP_RW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"RW \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"NA \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"NX   \00", align 1
@_PAGE_WRITETHRU = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"write through \00", align 1
@_PAGE_NO_CACHE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"no cache \00", align 1
@_PAGE_COHERENT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"coherent \00", align 1
@_PAGE_GUARDED = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"guarded \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, i32, i32, i32)* @bat_show_603 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bat_show_603(%struct.seq_file* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, -131072
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = ashr i32 %18, 2
  %20 = and i32 %19, 2047
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 3
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @PHYS_BAT_ADDR(i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %12, align 4
  %26 = add nsw i32 %25, 1
  %27 = shl i32 %26, 17
  store i32 %27, i32* %15, align 4
  %28 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %13, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %35 = call i32 @seq_puts(%struct.seq_file* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %129

36:                                               ; preds = %5
  %37 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %39, %40
  %42 = sub nsw i32 %41, 1
  %43 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %42)
  %44 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %13, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %51 = call i32 @seq_puts(%struct.seq_file* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %62

52:                                               ; preds = %36
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %57 = call i32 @seq_puts(%struct.seq_file* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %61

58:                                               ; preds = %52
  %59 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %60 = call i32 @seq_puts(%struct.seq_file* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @BPP_RX, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)
  %73 = call i32 @seq_puts(%struct.seq_file* %68, i8* %72)
  br label %94

74:                                               ; preds = %62
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @BPP_RW, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)
  %85 = call i32 @seq_puts(%struct.seq_file* %80, i8* %84)
  br label %93

86:                                               ; preds = %74
  %87 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)
  %92 = call i32 @seq_puts(%struct.seq_file* %87, i8* %91)
  br label %93

93:                                               ; preds = %86, %79
  br label %94

94:                                               ; preds = %93, %67
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @_PAGE_WRITETHRU, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %101 = call i32 @seq_puts(%struct.seq_file* %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %94
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @_PAGE_NO_CACHE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %109 = call i32 @seq_puts(%struct.seq_file* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @_PAGE_COHERENT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %117 = call i32 @seq_puts(%struct.seq_file* %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @_PAGE_GUARDED, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %125 = call i32 @seq_puts(%struct.seq_file* %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %118
  %127 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %128 = call i32 @seq_puts(%struct.seq_file* %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %33
  ret void
}

declare dso_local i32 @PHYS_BAT_ADDR(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
