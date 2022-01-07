; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_check_valid_dma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_check_valid_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfc_dma_command = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"queueing DMA %x %llx %x %x %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid DMA opcode %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"invalid DMA alignment, ea %llx lsa %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"invalid DMA alignment %x for size %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"invalid DMA size %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"invalid DMA tag\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid DMA class\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mfc_dma_command*)* @spufs_check_valid_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_check_valid_dma(%struct.mfc_dma_command* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mfc_dma_command*, align 8
  store %struct.mfc_dma_command* %0, %struct.mfc_dma_command** %3, align 8
  %4 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %5 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %8 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %11 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %14 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %17 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9, i32 %12, i32 %15, i32 %18)
  %20 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %21 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %24 [
    i32 128, label %23
    i32 129, label %23
    i32 130, label %23
    i32 131, label %23
    i32 132, label %23
    i32 133, label %23
  ]

23:                                               ; preds = %1, %1, %1, %1, %1, %1
  br label %31

24:                                               ; preds = %1
  %25 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %26 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %133

31:                                               ; preds = %23
  %32 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %33 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 15
  %36 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %37 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 15
  %40 = icmp ne i32 %35, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %31
  %42 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %43 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %46 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %133

51:                                               ; preds = %31
  %52 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %53 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 15
  switch i32 %55, label %90 [
    i32 1, label %56
    i32 2, label %57
    i32 4, label %65
    i32 8, label %73
    i32 0, label %81
  ]

56:                                               ; preds = %51
  br label %101

57:                                               ; preds = %51
  %58 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %59 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %89

64:                                               ; preds = %57
  br label %101

65:                                               ; preds = %51
  %66 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %67 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, 3
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %89

72:                                               ; preds = %65
  br label %101

73:                                               ; preds = %51
  %74 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %75 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 7
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %89

80:                                               ; preds = %73
  br label %101

81:                                               ; preds = %51
  %82 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %83 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, 15
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %89

88:                                               ; preds = %81
  br label %101

89:                                               ; preds = %87, %79, %71, %63
  br label %90

90:                                               ; preds = %51, %89
  %91 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %92 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, 15
  %95 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %96 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %94, i32 %97)
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %133

101:                                              ; preds = %88, %80, %72, %64, %56
  %102 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %103 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp sgt i32 %104, 16384
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %108 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %133

113:                                              ; preds = %101
  %114 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %115 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 65520
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %133

123:                                              ; preds = %113
  %124 = load %struct.mfc_dma_command*, %struct.mfc_dma_command** %3, align 8
  %125 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %133

132:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %128, %119, %106, %90, %41, %24
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
