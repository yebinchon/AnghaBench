; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_x86.c_EmitMovEDXStack.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_x86.c_EmitMovEDXStack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@jlabel = common dso_local global i32 0, align 4
@LastCommand = common dso_local global i64 0, align 8
@LAST_COMMAND_MOV_STACK_EAX = common dso_local global i64 0, align 8
@compiledOfs = common dso_local global i32 0, align 4
@instruction = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"8B D0\00", align 1
@pop1 = common dso_local global i64 0, align 8
@OP_DIVI = common dso_local global i64 0, align 8
@OP_DIVU = common dso_local global i64 0, align 8
@OP_MULI = common dso_local global i64 0, align 8
@OP_MULU = common dso_local global i64 0, align 8
@OP_STORE4 = common dso_local global i64 0, align 8
@OP_STORE2 = common dso_local global i64 0, align 8
@OP_STORE1 = common dso_local global i64 0, align 8
@OP_CONST = common dso_local global i64 0, align 8
@buf = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"BA\00", align 1
@lastConst = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"8B 14 9F\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"E2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmitMovEDXStack(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @jlabel, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %109, label %7

7:                                                ; preds = %2
  %8 = load i64, i64* @LastCommand, align 8
  %9 = load i64, i64* @LAST_COMMAND_MOV_STACK_EAX, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %23

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
  %22 = call i32 @EmitString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %108

23:                                               ; preds = %7
  %24 = load i64, i64* @pop1, align 8
  %25 = load i64, i64* @OP_DIVI, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %51, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* @pop1, align 8
  %29 = load i64, i64* @OP_DIVU, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %51, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* @pop1, align 8
  %33 = load i64, i64* @OP_MULI, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* @pop1, align 8
  %37 = load i64, i64* @OP_MULU, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* @pop1, align 8
  %41 = load i64, i64* @OP_STORE4, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* @pop1, align 8
  %45 = load i64, i64* @OP_STORE2, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* @pop1, align 8
  %49 = load i64, i64* @OP_STORE1, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %43, %39, %35, %31, %27, %23
  %52 = call i32 @EmitString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %107

53:                                               ; preds = %47
  %54 = load i64, i64* @pop1, align 8
  %55 = load i64, i64* @OP_CONST, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %104

57:                                               ; preds = %53
  %58 = load i32*, i32** @buf, align 8
  %59 = load i32, i32* @compiledOfs, align 4
  %60 = sub nsw i32 %59, 7
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 199
  br i1 %64, label %65, label %104

65:                                               ; preds = %57
  %66 = load i32*, i32** @buf, align 8
  %67 = load i32, i32* @compiledOfs, align 4
  %68 = sub nsw i32 %67, 6
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 7
  br i1 %72, label %73, label %104

73:                                               ; preds = %65
  %74 = load i32*, i32** @buf, align 8
  %75 = load i32, i32* @compiledOfs, align 4
  %76 = sub nsw i32 %75, 5
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 159
  br i1 %80, label %81, label %104

81:                                               ; preds = %73
  %82 = load i32, i32* @compiledOfs, align 4
  %83 = sub nsw i32 %82, 7
  store i32 %83, i32* @compiledOfs, align 4
  %84 = load i32, i32* @compiledOfs, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @instruction, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %84, i32* %91, align 4
  %92 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %81
  %96 = load i32, i32* @lastConst, align 4
  %97 = load i32, i32* %4, align 4
  %98 = and i32 %96, %97
  %99 = call i32 @Emit4(i32 %98)
  br label %103

100:                                              ; preds = %81
  %101 = load i32, i32* @lastConst, align 4
  %102 = call i32 @Emit4(i32 %101)
  br label %103

103:                                              ; preds = %100, %95
  br label %117

104:                                              ; preds = %73, %65, %57, %53
  %105 = call i32 @EmitString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %106, %51
  br label %108

108:                                              ; preds = %107, %11
  br label %111

109:                                              ; preds = %2
  %110 = call i32 @EmitString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %108
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @MASK_REG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %103, %114, %111
  ret void
}

declare dso_local i32 @EmitString(i8*) #1

declare dso_local i32 @Emit4(i32) #1

declare dso_local i32 @MASK_REG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
