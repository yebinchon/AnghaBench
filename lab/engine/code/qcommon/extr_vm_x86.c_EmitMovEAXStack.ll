; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_x86.c_EmitMovEAXStack.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_x86.c_EmitMovEAXStack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@jlabel = common dso_local global i32 0, align 4
@LastCommand = common dso_local global i64 0, align 8
@LAST_COMMAND_MOV_STACK_EAX = common dso_local global i64 0, align 8
@compiledOfs = common dso_local global i32 0, align 4
@instruction = common dso_local global i32 0, align 4
@pop1 = common dso_local global i64 0, align 8
@OP_CONST = common dso_local global i64 0, align 8
@buf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"B8\00", align 1
@lastConst = common dso_local global i32 0, align 4
@OP_DIVI = common dso_local global i64 0, align 8
@OP_DIVU = common dso_local global i64 0, align 8
@OP_MULI = common dso_local global i64 0, align 8
@OP_MULU = common dso_local global i64 0, align 8
@OP_STORE4 = common dso_local global i64 0, align 8
@OP_STORE2 = common dso_local global i64 0, align 8
@OP_STORE1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"8B 04 9F\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"25\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @EmitMovEAXStack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EmitMovEAXStack(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @jlabel, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %106, label %7

7:                                                ; preds = %2
  %8 = load i64, i64* @LastCommand, align 8
  %9 = load i64, i64* @LAST_COMMAND_MOV_STACK_EAX, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load i32, i32* @compiledOfs, align 4
  %13 = sub nsw i32 %12, 3
  store i32 %13, i32* @compiledOfs, align 4
  %14 = load i32, i32* @compiledOfs, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @instruction, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32 %14, i32* %21, align 4
  br label %105

22:                                               ; preds = %7
  %23 = load i64, i64* @pop1, align 8
  %24 = load i64, i64* @OP_CONST, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %73

26:                                               ; preds = %22
  %27 = load i32*, i32** @buf, align 8
  %28 = load i32, i32* @compiledOfs, align 4
  %29 = sub nsw i32 %28, 7
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 199
  br i1 %33, label %34, label %73

34:                                               ; preds = %26
  %35 = load i32*, i32** @buf, align 8
  %36 = load i32, i32* @compiledOfs, align 4
  %37 = sub nsw i32 %36, 6
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %73

42:                                               ; preds = %34
  %43 = load i32*, i32** @buf, align 8
  %44 = load i32, i32* @compiledOfs, align 4
  %45 = sub nsw i32 %44, 5
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 159
  br i1 %49, label %50, label %73

50:                                               ; preds = %42
  %51 = load i32, i32* @compiledOfs, align 4
  %52 = sub nsw i32 %51, 7
  store i32 %52, i32* @compiledOfs, align 4
  %53 = load i32, i32* @compiledOfs, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @instruction, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 %53, i32* %60, align 4
  %61 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %50
  %65 = load i32, i32* @lastConst, align 4
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %65, %66
  %68 = call i32 @Emit4(i32 %67)
  br label %72

69:                                               ; preds = %50
  %70 = load i32, i32* @lastConst, align 4
  %71 = call i32 @Emit4(i32 %70)
  br label %72

72:                                               ; preds = %69, %64
  br label %115

73:                                               ; preds = %42, %34, %26, %22
  %74 = load i64, i64* @pop1, align 8
  %75 = load i64, i64* @OP_DIVI, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %103

77:                                               ; preds = %73
  %78 = load i64, i64* @pop1, align 8
  %79 = load i64, i64* @OP_DIVU, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %77
  %82 = load i64, i64* @pop1, align 8
  %83 = load i64, i64* @OP_MULI, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %81
  %86 = load i64, i64* @pop1, align 8
  %87 = load i64, i64* @OP_MULU, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = load i64, i64* @pop1, align 8
  %91 = load i64, i64* @OP_STORE4, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load i64, i64* @pop1, align 8
  %95 = load i64, i64* @OP_STORE2, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load i64, i64* @pop1, align 8
  %99 = load i64, i64* @OP_STORE1, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i32 @EmitString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %97, %93, %89, %85, %81, %77, %73
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104, %11
  br label %108

106:                                              ; preds = %2
  %107 = call i32 @EmitString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %105
  %109 = load i32, i32* %4, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @Emit4(i32 %113)
  br label %115

115:                                              ; preds = %72, %111, %108
  ret void
}

declare dso_local i32 @EmitString(i8*) #1

declare dso_local i32 @Emit4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
