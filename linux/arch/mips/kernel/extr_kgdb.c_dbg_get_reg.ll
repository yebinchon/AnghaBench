; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_kgdb.c_dbg_get_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_kgdb.c_dbg_get_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.pt_regs = type { i32 }

@DBG_MAX_REG_NUM = common dso_local global i32 0, align 4
@dbg_reg_def = common dso_local global %struct.TYPE_9__* null, align 8
@current = common dso_local global %struct.TYPE_8__* null, align 8
@ST0_CU1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dbg_get_reg(i32 %0, i8* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @DBG_MAX_REG_NUM, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  store i8* null, i8** %4, align 8
  br label %133

16:                                               ; preds = %12
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dbg_reg_def, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %46

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 38
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %30 = bitcast %struct.pt_regs* %29 to i8*
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dbg_reg_def, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %30, i64 %37
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dbg_reg_def, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @memcpy(i8* %28, i8* %38, i32 %44)
  br label %125

46:                                               ; preds = %24, %16
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  br i1 %48, label %49, label %124

49:                                               ; preds = %46
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dbg_reg_def, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %124

57:                                               ; preds = %49
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 72
  br i1 %59, label %60, label %124

60:                                               ; preds = %57
  %61 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ST0_CU1, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %126

68:                                               ; preds = %60
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %70 = call i32 @save_fp(%struct.TYPE_8__* %69)
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 70
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = bitcast i32* %78 to i8*
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dbg_reg_def, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @memcpy(i8* %74, i8* %79, i32 %85)
  br label %126

87:                                               ; preds = %68
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %88, 71
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load i8*, i8** %6, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dbg_reg_def, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @memset(i8* %91, i32 0, i32 %97)
  br label %126

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dbg_reg_def, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %8, align 4
  %107 = load i8*, i8** %6, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = bitcast i32* %115 to i8*
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dbg_reg_def, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @memcpy(i8* %107, i8* %116, i32 %122)
  br label %124

124:                                              ; preds = %100, %57, %49, %46
  br label %125

125:                                              ; preds = %124, %27
  br label %126

126:                                              ; preds = %125, %90, %73, %67
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dbg_reg_def, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %4, align 8
  br label %133

133:                                              ; preds = %126, %15
  %134 = load i8*, i8** %4, align 8
  ret i8* %134
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @save_fp(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
