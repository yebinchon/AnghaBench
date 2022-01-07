; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_kgdb.c_dbg_set_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_kgdb.c_dbg_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.pt_regs = type { i32 }

@DBG_MAX_REG_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dbg_reg_def = common dso_local global %struct.TYPE_9__* null, align 8
@current = common dso_local global %struct.TYPE_8__* null, align 8
@ST0_CU1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbg_set_reg(i32 %0, i8* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DBG_MAX_REG_NUM, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %121

18:                                               ; preds = %11
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dbg_reg_def, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %48

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 38
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %31 = bitcast %struct.pt_regs* %30 to i8*
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dbg_reg_def, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr i8, i8* %31, i64 %38
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dbg_reg_def, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(i8* %39, i8* %40, i32 %46)
  br label %120

48:                                               ; preds = %26, %18
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %50 = icmp ne %struct.TYPE_8__* %49, null
  br i1 %50, label %51, label %119

51:                                               ; preds = %48
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dbg_reg_def, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %119

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 72
  br i1 %61, label %62, label %119

62:                                               ; preds = %59
  %63 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ST0_CU1, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %121

70:                                               ; preds = %62
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 70
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = bitcast i32* %77 to i8*
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dbg_reg_def, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @memcpy(i8* %78, i8* %79, i32 %85)
  br label %116

87:                                               ; preds = %70
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %88, 71
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %116

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dbg_reg_def, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %8, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = bitcast i32* %106 to i8*
  %108 = load i8*, i8** %6, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dbg_reg_def, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @memcpy(i8* %107, i8* %108, i32 %114)
  br label %116

116:                                              ; preds = %92, %90, %73
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %118 = call i32 @restore_fp(%struct.TYPE_8__* %117)
  br label %119

119:                                              ; preds = %116, %59, %51, %48
  br label %120

120:                                              ; preds = %119, %29
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %69, %15
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @restore_fp(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
